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
function saveData() {
  tavInput = document.getElementById("tav").value
  data = {
    tav: tavInput
  }

  firebase.database().ref('users/' + data.id).set(data);

}


var distance = firebase.database().ref('/esp/rx');
distance.on('value', distanceValue);
function key() {
  document.getElementById("k1").style.backgroundColor = "white";
  document.getElementById("k3").style.backgroundColor = "white";
  document.getElementById("k4").style.backgroundColor = "white";
  document.getElementById("k5").style.backgroundColor = "white";
  document.getElementById("k6").style.backgroundColor = "white";
  document.getElementById("k7").style.backgroundColor = "white";
  document.getElementById("k8").style.backgroundColor = "white";
  document.getElementById("k2").style.backgroundColor = "white";
}
function vol() {
  document.getElementById("kav1").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav2").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav3").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav4").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav5").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav6").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav7").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav8").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav9").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav10").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav11").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav12").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav13").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav14").style.backgroundColor = "rgb(41, 87, 83)";
  document.getElementById("kav14").style.backgroundColor = "rgb(41, 87, 83)";
}
function distanceValue(dis) {
  bin = dis.val().toString(2);
  distance = parseInt(bin.substring(0, 4), 2);
  tav = parseInt(bin.substring(4), 2);

  firebase.database().ref('/out/distance/').set(distance);
  firebase.database().ref('/out/ms tavim/').set(tav);

  const tavim = ["no sound", "C", "B", "A", "G", "F", "E", "D", "C"];
  document.getElementById("tavim").innerHTML = '<span class="tavim">' + tavim[tav] + '</span>';
  document.getElementById("distance").innerHTML = '<span class="distance">' + distance + '</span>';
  switch (distance) {
    case 0:
      vol()
      break;
    case 1:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      break;
    case 2:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      break;
    case 3:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      break;
    case 4:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      break;
    case 5:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      break;
    case 6:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      break;
    case 7:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      document.getElementById("kav7").style.backgroundColor = "white";
      break;
    case 8:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      document.getElementById("kav7").style.backgroundColor = "white";
      document.getElementById("kav8").style.backgroundColor = "white";
      break;
    case 9:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      document.getElementById("kav7").style.backgroundColor = "white";
      document.getElementById("kav8").style.backgroundColor = "white";
      document.getElementById("kav9").style.backgroundColor = "white";
      break;
    case 10:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      document.getElementById("kav7").style.backgroundColor = "white";
      document.getElementById("kav8").style.backgroundColor = "white";
      document.getElementById("kav9").style.backgroundColor = "white";
      document.getElementById("kav10").style.backgroundColor = "white";
      break;
    case 11:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      document.getElementById("kav7").style.backgroundColor = "white";
      document.getElementById("kav8").style.backgroundColor = "white";
      document.getElementById("kav9").style.backgroundColor = "white";
      document.getElementById("kav10").style.backgroundColor = "white";
      document.getElementById("kav11").style.backgroundColor = "white";
      break;
    case 12:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      document.getElementById("kav7").style.backgroundColor = "white";
      document.getElementById("kav8").style.backgroundColor = "white";
      document.getElementById("kav9").style.backgroundColor = "white";
      document.getElementById("kav10").style.backgroundColor = "white";
      document.getElementById("kav11").style.backgroundColor = "white";
      document.getElementById("kav12").style.backgroundColor = "white";
      break;
    case 13:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      document.getElementById("kav7").style.backgroundColor = "white";
      document.getElementById("kav8").style.backgroundColor = "white";
      document.getElementById("kav9").style.backgroundColor = "white";
      document.getElementById("kav10").style.backgroundColor = "white";
      document.getElementById("kav11").style.backgroundColor = "white";
      document.getElementById("kav12").style.backgroundColor = "white";
      document.getElementById("kav13").style.backgroundColor = "white";
      break;
    case 14:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      document.getElementById("kav7").style.backgroundColor = "white";
      document.getElementById("kav8").style.backgroundColor = "white";
      document.getElementById("kav9").style.backgroundColor = "white";
      document.getElementById("kav10").style.backgroundColor = "white";
      document.getElementById("kav11").style.backgroundColor = "white";
      document.getElementById("kav12").style.backgroundColor = "white";
      document.getElementById("kav13").style.backgroundColor = "white";
      document.getElementById("kav14").style.backgroundColor = "white";
      break;
    case 15:
      vol()
      document.getElementById("kav1").style.backgroundColor = "white";
      document.getElementById("kav2").style.backgroundColor = "white";
      document.getElementById("kav3").style.backgroundColor = "white";
      document.getElementById("kav4").style.backgroundColor = "white";
      document.getElementById("kav5").style.backgroundColor = "white";
      document.getElementById("kav6").style.backgroundColor = "white";
      document.getElementById("kav7").style.backgroundColor = "white";
      document.getElementById("kav8").style.backgroundColor = "white";
      document.getElementById("kav9").style.backgroundColor = "white";
      document.getElementById("kav10").style.backgroundColor = "white";
      document.getElementById("kav11").style.backgroundColor = "white";
      document.getElementById("kav12").style.backgroundColor = "white";
      document.getElementById("kav13").style.backgroundColor = "white";
      document.getElementById("kav14").style.backgroundColor = "white";
      document.getElementById("kav15").style.backgroundColor = "white";
      break;
  }

  switch (tav) {
    case 0:
      key()
      break;
    case 1:
      key()
      document.getElementById("k1").style.backgroundColor = " rgb(169, 169, 169)";
      break;
    case 2:
      key()
      document.getElementById("k2").style.backgroundColor = " rgb(169, 169, 169)";
      break;
    case 3:
      key()
      document.getElementById("k3").style.backgroundColor = " rgb(169, 169, 169)";
      break;
    case 4:
      key()
      document.getElementById("k4").style.backgroundColor = " rgb(169, 169, 169)";
      break;
    case 5:
      key()
      document.getElementById("k5").style.backgroundColor = " rgb(169, 169, 169)";
      break;
    case 6:
      key()
      document.getElementById("k6").style.backgroundColor = " rgb(169, 169, 169)";
      break;
    case 7:
      key()
      document.getElementById("k7").style.backgroundColor = " rgb(169, 169, 169)";
      break;
    case 8:
      key()
      document.getElementById("k8").style.backgroundColor = " rgb(169, 169, 169)";
      break;
  }
}
function changeColor(element, color) {
  // Add the appropriate color class
  element.classList.add(color);
  switch (color) {
        case 'off':
      cl = 0;
      break;
      case 'blue':
      cl = 1;
      break;
    case 'green':
      cl = 2;
      break;
    case 'yellow':
      cl = 3;
      break;
    case 'red':
      cl = 4;
      break;
    case 'pink':
      cl = 5;
      break;
    case 'orange':
      cl = 6;
      break;
    case 'white':
      cl = 7;
      break;
  }
  firebase.database().ref('/color/id').set(cl);
  firebase.database().ref('/color/color').set(color);
  tx = cl.toString(2);
  firebase.database().ref('/color/tx').set(tx);
}




function select() {
  var s = parseInt(document.getElementById("sVal").value);
  firebase.database().ref('/user/input/').set(s);

}

var starCountRef = firebase.database().ref('/tav');
starCountRef.on('value', newData);

function newData(data) {
  console.log(data.val())
  document.getElementById("tav").innerHTML = '<span class="tav">' + data.val() + '</span>'
}
