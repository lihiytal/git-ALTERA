#include <FirebaseESP32.h>
#include <settings.h>
#include <Arduino.h>
#include <WiFi.h>
#include <ESPAsyncWebServer.h>
#include <AsyncWebSocket.h>
#include <SPIFFS.h>
#include <esp_task_wdt.h>
#include <map>
#include <string>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <FS.h>

// Firebase Variables
FirebaseData fbdoListener, fbdoAction;
FirebaseAuth auth;
FirebaseConfig config;
const int FIREBASE_SEND_INTERVAL = 500;
unsigned long lastFirebaseSend = 0;

//Initiate functions
void initiateFiles();
void streamCallback(StreamData data);
void wifiStatus(String ssid);
void firebaseCon();
void setScreenText(String text);
String getContentType(const String& filename);
void streamTimeoutCallback(bool timeout);
//Webserver and SSE initation
AsyncWebServer server(80);
AsyncEventSource rxEvent("/rx");
AsyncEventSource runtimeEvent("/runtime");

//WIFI CONNECTION
bool isConnected = false;

// screen settings
#define SCREEN_WIDTH 128 
#define SCREEN_HEIGHT 32 
#define OLED_RESET -1
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);


void setupAll()
{
  initiateFiles();
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C))
  {
    Serial.println("SSD1306 allocation failed");
  }
  if (useSetup)
  {
    WiFi.mode(WIFI_AP_STA);
    Serial.println("AP IP address: " + WiFi.softAPIP().toString());
    setScreenText("SSID: " + (String)apSSID + "\nPassword: " + (String)apPassword + "\nIP: " + WiFi.softAPIP().toString());
    WiFi.softAP(apSSID, apPassword);
    if (!SPIFFS.begin(true))
    {
      Serial.println("An Error has occurred while mounting SPIFFS");
      return;
    }
    server.on("/credentials", HTTP_POST, [](AsyncWebServerRequest *request)
              {
    if (request->hasParam("SSID", true)) {
      String ssid = request->getParam("SSID", true)->value();
      String password = request->getParam("PWD", true)->value();
      Serial.println("Received SSID: " + ssid);
      Serial.println("Received Password: " + password);
      // Connect to the specified Wi-Fi network
      WiFi.begin(ssid.c_str(), password.c_str());
      wifiStatus(ssid.c_str());
    } else {
      request->send(400, "text/plain", "Missing or incorrect parameters");
    } });
  }
  else
  {
    WiFi.mode(WIFI_STA);
    WiFi.begin(wifiSSID, wifiPassword);
    wifiStatus(wifiSSID);
    if (!SPIFFS.begin(true))
    {
      Serial.println("An Error has occurred while mounting SPIFFS");
      return;
    }
    //if(isConnected)//dont load the files if not connected to wifi 
  }  
  server.on("/networks.json", HTTP_GET, [](AsyncWebServerRequest *request)
            {
      request->send(SPIFFS, "/networks.json", "text/plain");
            });
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request)
            {
    if (isConnected) {
      request->send(SPIFFS, files[1], "text/html");
    } else {
      request->send(SPIFFS, files[0], "text/html");
    } });


}


String getContentType(const String& filename) {
    if (filename.endsWith(".html")) return "text/html";
    else if (filename.endsWith(".js")) return "application/javascript";
    else if (filename.endsWith(".css")) return "text/css";
    return "text/plain"; 
}

void initiateFiles()
{
  Serial.println("started file initalization");
    int numFiles = sizeof(files) / sizeof(files[0]);
    for(int i = 0; i < numFiles; i++) {
        String filePath = files[i];
        Serial.println("Initiated : " + filePath);
        server.on(filePath.c_str(), HTTP_GET, [filePath](AsyncWebServerRequest *request) {
            request->send(SPIFFS, filePath, getContentType(filePath));
        });
    }
}
void firebaseCon()
{
  Serial.println("started firebase auth");
  config.host = fb_url;
  config.api_key = fb_api;
  auth.user.email = fb_email;
  auth.user.password = fb_pass;
  Firebase.begin(&config, &auth);
  Firebase.reconnectWiFi(true);
  Firebase.setStreamCallback(fbdoListener, streamCallback, streamTimeoutCallback);
  if (!Firebase.beginStream(fbdoListener, "/"))
  {
    Serial.println(fbdoListener.errorReason());
  }
  Serial.println("finished firebase auth");
}


//Function for Firebase Listener Timeout
void streamTimeoutCallback(bool timeout)
{
  if (timeout)
  {
    Serial.println("Stream timeout, resume streaming...");
  }
}



//Await wifi connection and print it
void wifiStatus(String ssid)
{
  unsigned long startTime = millis();
  while (WiFi.status() != WL_CONNECTED && millis() - startTime < 20000) 
  { // 20 seconds timeout
        delay(1000);
        Serial.print(".");
  }
  if (WiFi.status() == WL_CONNECTED)
  {                     // if connected to wifi
    isConnected = true; 
    // set isconnected to true so it loads the main html instead
    Serial.println("Connected to Wi-Fi: " + ssid);
    Serial.println("IP address: " + WiFi.localIP().toString());
    Serial.println("set text");
    //setScreenText("Connected to Wi-Fi: " + ssid + "\nIP address:\n" + WiFi.localIP().toString());
    esp_task_wdt_init(8, true);
    Serial.println("started firebase con");
    firebaseCon();
  }
  else
  {
    Serial.println("Failed to connect to Wi-Fi.");
    isConnected = false;
  }
}

//set text on screen
void setScreenText(String text)
{
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(0,0);
  display.println(text);
  display.display();
}