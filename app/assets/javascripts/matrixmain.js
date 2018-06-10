// let matrixradiogrp1Choice = document.getElementById("matrixquizchoice");
// UPPER LOWER ABS OR FULL BODY QUIZ
function allQuizAnswers() {
  let formsAll = document.querySelectorAll("form");
  allSelects = [];
  let matrixquizdiv = document.querySelector(".matrixquizresults");

    let form1 = document.querySelector("#formupperlowerabsquiz");

    form1.addEventListener("submit", function (event) {
      event.preventDefault();
      let data = new FormData(form1);
      let output1 = "";
      for (const entry of data) {
        output1 = entry[0] + "=" + entry[1] + "\r";
        allSelects.push(output1)
      };
    }, false);

    // // BEGINNER INTERMEDIATE OR ADVANCED QUIZ
    let form2 = document.querySelector("#formbegintadvquiz");

    form2.addEventListener("submit", function (event) {
      event.preventDefault();
      let data = new FormData(form2);
      let output2 = "";
      for (const entry of data) {
        output2 = entry[0] + "=" + entry[1] + "\r";
        allSelects.push(output2)
      };
    }, false);

    // 
    let form3 = document.querySelectorAll("#formtimerquiz");

    form3.addEventListener("submit", function (event) {
      event.preventDefault();
      let data = new FormData(form3);
      let output3 = "";
      for (const entry of data) {
        output3 = entry[0] + "=" + entry[1] + "\r";
        allSelects.push(output3)
      };
    }, false);

  matrixquizdiv.appendChild(formsAll);
};