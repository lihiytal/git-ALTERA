const firebaseConfig = {
  
  apiKey: "AIzaSyBpYMIgDKBwIztlXaGaGfWZr27gDHH00pQ",
  authDomain: "digital-musical-instrument.firebaseapp.com",
  databaseURL: "https://digital-musical-instrument-default-rtdb.europe-west1.firebasedatabase.app",
  projectId: "digital-musical-instrument",
  storageBucket: "digital-musical-instrument.appspot.com",
  messagingSenderId: "647218548481",
  appId: "1:647218548481:web:938d3b5ef20808e7ca5500"

};

firebase.initializeApp(firebaseConfig);//Initate the connection to firebase using the config
////////////////////Assign all the HTML objects/////////////////////
////////////////////////////////////////////////////////////////////
const database = firebase.database();
const switchToggle = document.getElementById("switchtoggle");
///////////////////////////////////////////////////////////////////
let mode = "FB";
switchToggle.addEventListener("change", function () {
  if (this.checked) {
    mode = "Local";
  } else {
    mode = "FB";
  }
});


//THIS FUNCTION GETS VALUE AND PATH AND BASED ON THE MODE SENDS IT TO THE RIGHT PLACE//
//////////////////////////////////////////////////////////////////////////////////////
function sendValue(value,path = "")
{
  if (value !== "") {
    if (mode == "FB") {
      sendDataToFB(value, path);
      printToLog(value, "fb-out");
    } else {
      sendDataToESP(value);
      printToLog(value, "esp-direct-out");
    }
  }
}
//////////////////////////////////////////////////////////////////////////////////////






/////////THIS FUNCTION SENDS VALUES TO THE ESP THROUGH THE /sendToESP SOCKET/////////
////////////////////////////////////////////////////////////////////////////////////
function sendDataToESP(value) {
  fetch("/sendToESP", {
    method: "POST", 
    body: new URLSearchParams({ value: value }), 
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  })
}
////////////////////////////////////////////////////////////////////////////////////

//THIS FUNCTION SENDS VALUE TO PATH IN THE FIREBASE//
////////////////////////////////////////////////////
function sendDataToFB(value, path) {
  database.ref(path).set(parseInt(value));
}
////////////////////////////////////////////////////


//this is to print to the logdiv, purely for debugging purposes
//if you for whatever reason remove the logdiv delete this whole function
function printToLog(value, source, i = 0) {
  let element;
  switch (source) {
      case "esp-direct-in":
          element = document.createElement("p");
          element.textContent =
              "ESP(direct): " + value + getTime(" Received directly from ESP RX");
          logDiv.appendChild(element);
          break;
      case "esp-direct-out":
          element = document.createElement("p");
          element.textContent =
              "User (Value): " + value + getTime(" sent directly to ESP");
          logDiv.appendChild(element);
          break;
      case "fb-in":
          element = document.createElement("p");
          element.textContent =
              "ESP(Firebase):  " + value + getTime(" received from firebase");
          logDiv.appendChild(element);
          break;
        case "fb-RX":
            element = document.createElement("p");
            element.textContent =
                "ESP(Firebase):  " + value + getTime(" received from firebase RX");
            logDiv.appendChild(element);
            break;
      case "fb-out":
          element = document.createElement("p");
          element.textContent =
              "User (Value): " + value + getTime(" sent to firebase");
          logDiv.appendChild(element);
          break;
  }

  //Limit it to only 8 entries
  while(logDiv.childElementCount > 8) {
      logDiv.removeChild(logDiv.firstChild);
  }
}

//get current time
function getTime(text) {
  const now = new Date();
  const hours = now.getHours();
  const minutes = now.getMinutes();
  const seconds = now.getSeconds();
  return text + " at " + hours + ":" + minutes + ":" + seconds;
}
