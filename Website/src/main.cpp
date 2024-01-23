
#include <connection.h>
#define RXD2 16
#define TXD2 17
int espRX ;

void setup()
{
  Serial.begin(115200);
  Serial2.begin(9600,SERIAL_8N1,RXD2,TXD2);//Initiate serial connection RXTX with Altera
  setupAll();

  ////////////THIS FUNCTION RUNS WHEN THE ESP RECEIVES AN UPDATE AT /sendToESP from the HTML Page//////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  server.on("/sendToESP", HTTP_POST, [](AsyncWebServerRequest *request)
            {
      if(request->hasParam("value", true)){ //Check if the request had a value
          String value = request->getParam("value", true)->value(); // Output the value to a string variable
          Serial.println("Locally received: " + value);
          if(Serial2.availableForWrite()){
            Serial2.write(value.toInt());//Cast and send the Value to the Altera 
            Serial.println("Sent " + value + " to Altera");
          }
      }
    });
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////


  //Event initilization for the websockets
  server.addHandler(&rxEvent);
  server.addHandler(&runtimeEvent);
  server.begin();
}

int pseconds = 0;//Variable to store previous second
int pEspRX = 0;//Variable to store previous RX value
void loop()
{
  //We'll enter this if statement only if the ESP is connected to WIFI and a user is looking at the server
  if (isConnected)
  {
  ///THIS RUNS WHEN A NEW RX VALUE WAS RECEIVED////
  /////////////////////////////////////////////////
    if(Serial2.available() > 0){
      espRX=Serial2.read();
      if(pEspRX!=espRX){
        Serial.println("RX: "+(String)espRX);
        rxEvent.send(String(espRX).c_str());
        Firebase.setInt(fbdoAction,"/esp/rx",espRX);
        pEspRX = espRX;
      }
    }
  /////////////////////////////////////////////////


  //////////////////////THE CODE WITHIN THE IF STATEMENT RUNS EVERY SECOND//////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////
    int64_t time_since_boot = esp_timer_get_time(); //get the time since boot of the ESP
    int64_t seconds = time_since_boot / 1000000LL;  //convert it to seconds
    if ((int)seconds > pseconds)//if the current second is bigger than the last second
    {
      runtimeEvent.send(String(seconds).c_str());
      if (millis() - lastFirebaseSend > FIREBASE_SEND_INTERVAL)
      //predetermined delay for sending as a backup incase of errors
      {
        if (!Firebase.setInt(fbdoAction, "/esp/uptime", (int)seconds))
        //Sending the value to /esp/uptime in  firebase
        {
          Serial.print("Failed to set data. Reason: ");
          Serial.println(fbdoAction.errorReason());
        }
        else
        lastFirebaseSend = millis();//update the last time an update was sent was sent
      }
      pseconds = seconds;//previous second equals current second
    }
  }
  delay(10);
  /////////////////////////////////////////////////////////////////////////////////////////////
}




///////THIS RUNS WHEN THERE WAS AN UPDATE IN THE REALTIME DATABASE AT FIREBASE////////
int firebaseVal;
void streamCallback(StreamData data)
{
  if (data.to<int>() != firebaseVal && data.dataPath() == "/user/input" && data.dataTypeEnum() == fb_esp_rtdb_data_type_integer)
  {
    firebaseVal = data.to<int>();
    Serial.println("Data value: " + String(firebaseVal));
    if(Serial2.availableForWrite()){
      Serial2.write(firebaseVal);
      Serial.println("Sent " + String(firebaseVal) + " to Altera");
    }
  }
}
//////////////////////////////////////////////////////////////////////////////////////

