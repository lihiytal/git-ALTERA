
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
  console.log(app)
  function saveUserOnDB(){
    email = document.getElementById("email").value
    assword = document.getElementById("password").value

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
 
  }

  function login(){

    email = document.getElementById("em").value
        password = document.getElementById("pass").value

    //     console.log(email)
    //     console.log(password)
    //     if(password.length<6){
    //     return
    // }

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
