// function User(a,b){
//     this.email =a
//     this.age = b
//     this.print = function(){
//         console.log("username = "+this.email+"\n"+"age = "+this.age)
//     }
// }
 
// // לשיפת הנתוך מהזקרון כמחרוזת והמרתו לרשימה של אובייקתים
// userList =JSON.parse(localStorage.getItem("userList"))
// console.log(userList)
 
 
// function saveUser(e){
//     e.preventDefault()
//    console.log("submit event")
//    nameInput  = document.getElementById("em").value
//    ageInput  = document.getElementById("pass").value
 
//    if(nameInput.length <3 ){
//     //show alert to user
//     return
//    }
 
//    userList.push(new User(nameInput,ageInput))
//    //המרת אוביית למחרוזת לתובת שמירה ב זקרון המקומי
//    userListSTR = JSON.stringify(userList)
//    //  שמירת הרשימה/אובייקת בזקרון המקומי לאחר הפיכתו למחרוזת
//    // השמירה מתבצעת ע"י מפתח יעודי כד שנוכל לשלוף את הנתון כשנצתרך
//    localStorage.setItem("userList",userListSTR)
//    console.log(userList)
 
// }



// function saveUserrfi(){
//     email = document.getElementById("email").value
//     password = document.getElementById("password").value
//     console.log(email)
//     console.log(password)
//     if (password.length>6){
//         return
//     }

//     firebase.auth().createUserWithEmailAndPassword(email, password)
//     .then((userCredential) => {
//     // Signed in 
//     var user = userCredential.user;
//     console.log(user)
//      })
//     .catch((error) => {
//     var errorCode = error.code;
//     var errorMessage = error.message;
//     console.log(errorMessage)
//      });
//     }
//     function login(){

//       email = document.getElementById("em").value
//           password = document.getElementById("pass").value
  
//       //     console.log(email)
//       //     console.log(password)
//       //     if(password.length<6){
//       //     return
//       // }
  
//       firebase.auth().signInWithEmailAndPassword(email, password)
//       .then((userCredential) => {
//         // Signed in 
//         var user = userCredential.user;

//         console.log(user)
//         // ...
//       })
//       .catch((error) => {
//         var errorCode = error.code;
//         var errorMessage = error.message;
//         console.log(errorMessage)
//         // ..
//       });
//     }
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
userId = 100
function saveData(){
    emailInput = document.getElementById("email").value
    ageInput = document.getElementById("age").value
    idInput = document.getElementById("id").value
 
    data = {
        id:idInput,
        email:emailInput,
        age:ageInput
    }
 
  firebase.database().ref('users/'+data.id ).set(data);
 
}
 
var starCountRef = firebase.database().ref('/sensore/temp');
starCountRef.on('value', newData);
 
function newData(data){
    console.log(data.val())
    document.getElementById("temp").innerHTML = '<span class="temp">'+data.val()+'</span>'
}
  
