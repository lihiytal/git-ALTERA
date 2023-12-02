const firebaseConfig = {
  apiKey: "AIzaSyBpYMIgDKBwIztlXaGaGfWZr27gDHH00pQ",
  authDomain: "digital-musical-instrument.firebaseapp.com",
  databaseURL: "https://digital-musical-instrument-default-rtdb.europe-west1.firebasedatabase.app",
  projectId: "digital-musical-instrument",
  storageBucket: "digital-musical-instrument.appspot.com",
  messagingSenderId: "647218548481",
  appId: "1:647218548481:web:938d3b5ef20808e7ca5500"
};

firebase.initializeApp(firebaseConfig);

const database = firebase.database();
const numberInput = document.getElementById("numberInput");
const sendButton = document.getElementById("sendButton");
const logDiv = document.getElementById("output");
const clear = document.getElementById("clear");
const sendToESPButton = document.getElementById("sendToESPButton");
const switchToggle = document.getElementById("switchtoggle");
let mode = "FB";
const ws = new WebSocket("ws://" + location.host + "/ws");
switchToggle.addEventListener("change", function () {
  if (this.checked) {
    mode = "Local";
  } else {
    mode = "FB";
  }
});

sendButton.addEventListener("click", () => {
  let number = numberInput.value.trim();
  if (number !== "") {
    if (mode == "FB") {
      sendDataToFB(number, "user/input");
      printToLog(number, "fb-out");
    } else {
      sendDataToESP(number);
      printToLog(number, "esp-direct-out");
    }
  }
});

clear.addEventListener("click", () => {
  logDiv.innerHTML = "";
});




//הפונקציה הזאת נקראת כשהיה עדכון בכתובת באאוטפוט במסד הנתונים
database.ref("output").on("value", (snapshot) => {
  const output = snapshot.val();
  printToLog(output, "fb-in");
});


//sendToESP הפונקציה הזאת שולחת את הערך הנקלט ישירות לבקר דרך הנתיב
// היא משתמשת בבקשת פוסט כדי לשלוח את הערך
function sendDataToESP(value) {
  fetch("/sendToESP", {
    method: "POST", // שיטת הבקשה
    body: new URLSearchParams({ value: value }), // הגוף של הבקשה
    headers: {
      "Content-Type": "application/x-www-form-urlencoded", // סוג התוכן של הבקשה
    },
  })
    .then((response) => response.text())
    .then((data) => {});
}

// הפונקציה הזאת שולחת את הערך הנקלט לכתובת הנקלטת במסד הנתונים
function sendDataToFB(value, path) {
  database.ref(path).set(parseInt(value)); // שמירת הערך בכתובת הנתונה
}

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

  // Remove excess lines from logDiv so only 5 remain
  while(logDiv.childElementCount > 8) {
      logDiv.removeChild(logDiv.firstChild);
  }
}

function getTime(text) {
  const now = new Date();
  const hours = now.getHours();
  const minutes = now.getMinutes();
  const seconds = now.getSeconds();
  return text + " at " + hours + ":" + minutes + ":" + seconds;
}
