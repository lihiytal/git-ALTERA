//Firebase Credentials
#define fb_url "https://digital-musical-instrument-default-rtdb.europe-west1.firebasedatabase.app"
#define fb_api "AIzaSyBpYMIgDKBwIztlXaGaGfWZr27gDHH00pQ"
#define fb_email "digmusical.iot@gmail.com"
#define fb_pass "musi1827"
//WiFi Credentials
#define wifiSSID "Kinneret College"
#define wifiPassword ""
//Access Point Credentials
#define apSSID  "ESP32 AP"
#define apPassword "password"
//////////////////////
bool useSetup = false;
    //True : Starts ESP in AP mode and allows for wifi credential input
    //False : Connects to the the coded wifi credentials
//////////////////////
//HTML Settings
String files[] = {"/setup.html", "/index.html", "/script.js", "/styles.css","/networks.json"};
    //Add to the array the paths for your files with the root being /data
    // examples : /index.html,/files/site2.html,/files/script2.js 

