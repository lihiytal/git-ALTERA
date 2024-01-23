document.getElementById("loginForm").addEventListener("submit", function(event) {
  // מנע את התנהגות ברירת המחדל של הטופס
  event.preventDefault();

  // העבר את המשתמש לעמוד הבא (שינה את ה-URL לפי הצורך)
  window.location.href = "play.html";
});
document.getElementById("signForm").addEventListener("submit", function(event) {
  // מנע את התנהגות ברירת המחדל של הטופס
  event.preventDefault();
  // העבר את המשתמש לעמוד הבא (שינה את ה-URL לפי הצורך)
  window.location.href = "play.html";
});

const firebaseConfig = {
    apiKey: "AIzaSyBpYMIgDKBwIztlXaGaGfWZr27gDHH00pQ",
    authDomain: "digital-musical-instrument.firebaseapp.com",
    databaseURL: "https://digital-musical-instrument-default-rtdb.europe-west1.firebasedatabase.app",
    projectId: "digital-musical-instrument",
    storageBucket: "digital-musical-instrument.appspot.com",
    messagingSenderId: "647218548481",
    appId: "1:647218548481:web:938d3b5ef20808e7ca5500"
  };

  const app = firebase.initializeApp(firebaseConfig);
  console.log(app);
  
  function saveData() {
    emailInput = document.getElementById("email").value;
    passInput = document.getElementById("pass").value;
    idInput = document.getElementById("id").value;
  
    data = {
      id: idInput,
      email: emailInput,
      pass: passInput // Fix the property name to "pass"
    };
  
    firebase.database().ref('users/' + data.id).set(data);
  }


  function saveUserOnDB(){
 
    email = document.getElementById("email").value
    password = document.getElementById("pass").value

    console.log(email)
    console.log(password)
    if(password.length<6){
        return
    }

    firebase.auth().createUserWithEmailAndPassword(email, password)
        .then((userCredential) => {
            // Signed in 
            var user = userCredential.user;
            console.log(user)
            // ...
        })
        .catch((error) => {
            var errorCode = error.code;
            var errorMessage = error.message;
            console.log(errorMessage)
            // ..
        });
        saveData()
}

function login(){

  email = document.getElementById("email").value;
  password = document.getElementById("pass").value;

  console.log(email)
  console.log(password)
  if(password.length<6){
      return
  }

firebase.auth().signInWithEmailAndPassword(email, password)

    .then((userCredential) => {
        // Signed in 
        var user = userCredential.user;
        
        console.log(user)
        // ...
    })
    .catch((error) => {
        var errorCode = error.code;
        var errorMessage = error.message;
        console.log(errorMessage)
        // ..
    });
  }










  
//   const app = firebase.initializeApp(firebaseConfig);
//   console.log(app)
//   userId = 100
//   function saveData(){
//     emailInput = document.getElementById("email").value
//     passInput = document.getElementById("pass").value
//     idInput = document.getElementById("id").value
 
//     data = {
//         id:idInput,
//         email:emailInput,
//         pase:paseInput
//     }
 
//   firebase.database().ref('users/'+data.id ).set(data);
 
// }