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
  function saveData(){
      tavInput = document.getElementById("tav").value
      data = {
        tav : tavInput
      }
   
    firebase.database().ref('users/'+data.id ).set(data);
   
  }
   

  var distance = firebase.database().ref('/esp/rx');
  distance.on('value', distanceValue);

  function distanceValue(dis){
    var s= parseInt(document.getElementById("sVal").value);
    if (s==0){
        document.querySelector("#name").innerHTML = "tavim";
        const tavim=["no sound","C","B", "A","G","F","E","D","C"]
        document.getElementById("distance").innerHTML = '<span class="distance">'+tavim[dis.val()]+'</span>'
    }
    else{
        document.querySelector("#name").innerHTML = "distance";
        document.getElementById("distance").innerHTML = '<span class="distance">'+dis.val()+'</span>'
    }
   }

   function select(){
    var s= parseInt(document.getElementById("sVal").value);
    firebase.database().ref('/user/input/').set(s);

   }

   var starCountRef = firebase.database().ref('/tav');
   starCountRef.on('value', newData);

  function newData(data){
    console.log(data.val())
    document.getElementById("tav").innerHTML = '<span class="tav">'+data.val()+'</span>'
}
