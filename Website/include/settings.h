//Firebase Credentials
#define fb_url "digital-musical-instrument-default-rtdb.europe-west1.firebasedatabase.app"
#define fb_api "AIzaSyBpYMIgDKBwIztlXaGaGfWZr27gDHH00pQ"
#define fb_email "digmusical.iot@gmail.com"
#define fb_pass "musi1827"
//WiFi Credentials
#define wifiSSID "AndroidAP"
#define wifiPassword "878500Snoop"
//Access Point Credentials
#define apSSID  "ESP32 AP1"
#define apPassword "password"
//////////////////////
bool useSetup = false;
    //True : Starts ESP in AP mode and allows for wifi credential input
    //False : Connects to the the coded wifi credentials
//////////////////////
//HTML Settings
String files[] = {"/setup.html","/home.html","/networks.json","components.html","ContactUs.html","index.html","login.css","login.html","play.html","play.js","script.js","scriptLog.js","Si.css","sign.html","stylenew.css","styles.css"};
    //Add to the array the paths for your files with the root being /data
    // examples : /index.html,/files/site2.html,/files/script2.js 

