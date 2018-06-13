window.onload = function() {
  reset();
}

window.onload = function () {
  imagesCarousel();
}

let slideIndexImgs = 0;
function imagesCarousel() {
  let bkgrdimg = document.getElementsByClassName("mainimg");

  for (let i = 0; i < bkgrdimg.length; i++) {
  bkgrdimg[i].style.display = "none";
  }
  slideIndexImgs++;
  if (slideIndexImgs > bkgrdimg.length) {
  slideIndexImgs = 1
  }
  bkgrdimg[slideIndexImgs-1].style.display = "block";
  setTimeout(imagesCarousel, 3500);
  }
imagesCarousel();



//STOPWATCH///////////////////////////////
//This is a function re-creation of this StackOverflow question. I took the broken example (not the solutions), made it work and customized it for my needs https://stackoverflow.com/questions/40284674/second-stop-watch-is-failing
//STOPWATCH/////////////////////////////
var running = 0
var rounds = document.getElementById("numRounds").value;
var work = document.getElementById("numWork").value;
var rest = document.getElementyId("numRest").value;

function startPause() {
  //check value
  if (document.getElementById("numRounds").value == "" || document.getElementById("numWork").value == "" ||
    document.getElementById("numRest").value == "") {
    document.getElementById("error").innerHTML = "*All fields are required.";
  }
  else {
    //otherwise start the timer and change innerHTML
    if (running == 0) {
      running = 1;
      increment();
      document.getElementById("startPause").innerHTML = "Pause";
    }
    else {
      running = 0;
      document.getElementById("startPause").innerHTML = "Resume";
    }
  }
}
// resets stopwatch
function reset() {
  running = 0;
  time = 0;
  document.getElementById("startPause").innerHTML = "Start";
  document.getElementById("output2").innerHTML = "00:00:00";
}

//TIMER FUNCTION
function increment() {
  if (running == 1) {
    setTimeout(function () {
      time++;
      var mins = Math.floor(time / 10 / 60);
      var secs = Math.floor(time / 10 % 60);
      var tenths = time % 10;
      var round = 1;
      var work = document.getElementById("numWork").value;
      var rest = document.getElementById("numRest").value;
      var total = work + rest;
      if (secs == work) {
        document.getElementById("work").innerHTML = "REST";
      }
      if (secs == total) {
        document.getElementById("work").innerHTML = "WORK";
      }
      //I WANT TO CHANGE THE INNER HTML OF ROUNDS TOO, but it's currently not incrementing
      if (rounds == total) {
        roundCounter = round++;
        document.getElementById("outputRound").innerHTML = roundCounter;
      }

      if (mins < 10) {
        mins = "0" + mins;
      }
      if (secs < 10) {
        secs = "0" + secs;
      }
      if (tenths < 10) {
        tenths = "0" + tenths;
      }
      document.getElementById("outputRound").innerHTML = round
      document.getElementById("output2").innerHTML = "&nbsp;&nbsp;" + mins + ":" + secs + ":" + tenths;
      increment();

    }, 100);
  }
}
