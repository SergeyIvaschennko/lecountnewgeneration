<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link href='https://fonts.googleapis.com/css?family=Montserrat:Bold,600' rel='stylesheet'>
  <link href="https://fonts.cdnfonts.com/css/sf-pro-display" rel="stylesheet">
  <title>lecount</title>
  <style>
    .green {
      width: 232px;
      height: 67px;
      border-radius: 5px;
      border: 1px solid #45FF53;
      margin-bottom: 22px;
      margin-left: 22px;
    }
    .red {
      width: 232px;
      height: 67px;
      border-radius: 5px;
      border: 1px solid #FF0000;
      margin-bottom: 22px;
      margin-left: 22px;
    }
    #rev-text {
      font-size: 17px;
      margin-top: 3px;
      margin-left: 8px;
      margin-bottom: 0px;
      margin-top: 0;
      opacity: 0.9;
      font-family: SFProDisplay-Light, SF Pro Display;
      font-weight: 300;
      color: #333333;
      letter-spacing: 1px;
    }

    #money-text {
      font-size: 24px;
      margin-top: 5px;
      margin-left: 8px
      margin-top: 0;
      opacity: 0.9;
      font-family: SFProDisplay-Light, SF Pro Display;
      font-weight: 300;
      color: #333333;
      letter-spacing: 1px;
    }

    .modal {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      display: none;
      justify-content: center;
      align-items: center;
      padding-top: 100px;
    }

    .modal-content {
      width: 400px;
      /*height: 210px;*/
      background-color: white;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      /*text-align: center;*/
      position: relative;
      margin: auto;
      display: flex;
      flex-direction: column;
      gap:20px;
      /*justify-content: space-between;*/
      align-items: center;
    }

    h11 {
      font-family: 'Montserrat', sans-serif;
      font-size: 27px;
      color: #002049;
    }
    .close-btn {
      position: absolute;
      top: 10px;
      right: 10px;
      cursor: pointer;
    }

    #history {
      display: flex;
      flex-direction: column-reverse;
    }

    /*.red-btn {*/
    /*    background-color: red;*/
    /*    color: white;*/
    /*    font-size: 18px;*/
    /*    padding: 10px 20px;*/
    /*    border-radius: 5px;*/
    /*    margin-left: 10px;*/
    /*}*/

    .red-modal {
      background-color: rgba(255, 0, 0, 0.5);
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      display: none;
      justify-content: center;
      align-items: center;
      padding-top: 100px;
    }

    .logo {
      font-family: 'Montserrat', sans-serif;
      /* font-weight: bold; */
      font-size: 27px;
      color: #333333;
    }

    .main {
      width: 887px;
      height: 523px;
      /* border: 1px solid #0075FF; */
      margin: auto;
      margin-top: 90px;
      display: flex;
      justify-content: space-between;

    }

    .lin1 {
      width: 575px;
      height: 523px;
      /* background-color: #a30000; */
    }

    .lin11 {
      width: 575px;
      height: 207px;
      background-color: #002049;
      margin-bottom: 34px;
      border-radius: 5px;
      position: relative;
    }

    .lin12 {
      width: 573px;
      height: 282px;
      background-color: #ffffff;
      border: 1px solid #333333;
      border-radius: 5px;
      position: relative;
    }

    .lin2 {
      width: 278px;
      height: 512px;
      background-color: #ffffff;
      border: 1px solid #333333;
      border-radius: 5px;
      padding-top: 11px;
      /*overflow: scroll;*/
      /*overflow-x:hidden;*/
    }

    .lin22 {
      /*padding-top: 6px;*/
      margin-top: 23px;
      width: 276px;
      height: 455px;
      /*border: 1px solid #333333;*/
      overflow: scroll;
      overflow-x:hidden;
    }

    h1 {
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      font-size: 27px;
      color: #ffffff;
      top: 11px;
      left: 22px;
      position: absolute;
      margin: 0;
    }

    h11 {
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      font-size: 27px;
      color: #333333;
      margin-left: 22px;
    }

    #totalSum {
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      font-size: 50px;
      color: #ffffff;
      top: 65px;
      left: 22px;
      position: absolute;
      margin: 0;
    }

    .two-butt {
      position: absolute;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 20px;
      left: 22px;
      bottom: 22px;
      /* border: 1px solid #ffffff; */
    }

    #black {
      color: #333333;
    }

    .moneybox {
      width: 232px;
      height: 65px;
      border-radius: 5px;
    }

    #income {
      border: 1px solid #45FF53;
      margin-top: 76px;
      margin-left: 22px;
    }

    #spend {
      border: 1px solid #FF0000;
      margin-top: 22px;
      margin-left: 22px;
    }

    h4 {
      margin-top: 0;
      opacity: 0.9;
      font-family: SFProDisplay-Light, SF Pro Display;
      font-weight: 300;
      color: #333333;
      letter-spacing: 1px;
    }

    #rev-text {
      font-size: 17px;
      margin-top: 3px;
      margin-left: 8px;
      margin-bottom: 0px;
    }

    #money-text {
      font-size: 24px;
      margin-top: 5px;
      margin-left: 8px
    }

    #totalgreenSum {
      font-size: 24px;
      margin-top: 5px;
      margin-left: 8px
    }
    #totalredSum {
      font-size: 24px;
      margin-top: 5px;
      margin-left: 8px
    }

    #open-modal-btn {
      padding: 5px 21px 7px 21px;
      cursor: pointer;
      font-family: 'Montserrat', sans-serif;
      font-size: 18px;
      color: #ffffff;
      border: 1.5px solid #ffffff;
      background-color: #002049;
      border-radius: 5px;
      margin: 0;
      letter-spacing: 1px;
      box-shadow: 0px 0px 10px rgba(60, 179, 113, 1.0);
      transition: box-shadow 0.2s ease-in-out;
    }
    #open-modal-btn:hover {
      box-shadow: 0px 0px 20px rgba(60, 179, 113, 1.0);
    }


    #open-red-modal-btn {
      padding: 5px 21px 7px 21px;
      cursor: pointer;
      font-family: 'Montserrat', sans-serif;
      font-size: 18px;
      color: #ffffff;
      border: 1.5px solid #ffffff;
      background-color: #002049;
      border-radius: 5px;
      margin: 0;
      box-shadow: 0px 0px 10px rgba(255, 0, 0, 1.0);
      letter-spacing: 1px;
      transition: box-shadow 0.2s ease-in-out;
    }

    #open-red-modal-btn:hover {
      box-shadow: 0px 0px 20px rgba(255, 0, 0, 1.0);
    }

    #number-input {
      width: 225px;
      height: 44px;
      border: 1px solid #707070;
      border-radius: 5px;
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      font-size: 27px;
      color: #333333;
      padding-left: 10px;
    }

    #add-number-btn {
      width: 235px;
      height: 44px;
      background-color: #002049;
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      font-size: 20px;
      color: white;
      text-align: center;
      border: 1px solid #002049;
      border-radius: 5px;
    }

    h12 {
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      font-size: 36px;
      color: #333333;
    }




    #red-number-input {
      width: 225px;
      height: 44px;
      border: 1px solid #707070;
      border-radius: 5px;
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      font-size: 27px;
      color: #333333;
      padding-left: 10px;
    }

    #add-red-number-btn {
      margin-top: 10px;
      width: 235px;
      height: 44px;
      background-color: #002049;
      font-family: 'Montserrat', sans-serif;
      font-weight: bold;
      font-size: 20px;
      color: white;
      text-align: center;
      border: 1px solid #002049;
      border-radius: 5px;
    }

    span{
      font-family: SFProDisplay-Light, SF Pro Display;
      font-weight: 300;
      color: #333333;
      letter-spacing: 1px;
      font-size: 13px;
    }






    form {
      margin-right: 25px;
    }

    input[type="radio"] {
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none;
      display: inline-block;
      width: 13px;
      height: 13px;
      border-radius: 50%;
      border: 1px solid red;
      margin-right: 10px;
      outline: none;
    }

    input[type="radio"]:checked::before {
      content: '';
      display: block;
      width: 8px;
      height: 8px;
      margin-top: 1.5px;
      margin-left: 1.5px;
      /* margin: 5px; */
      border-radius: 50%;
      background-color: inherit;
    }

    input[value="Развлечения"] {
      border-color: orange;
      margin-top: 0px;
      margin-left: 30px;
    }

    input[value="Развлечения"]:checked::before {
      background-color: orange;
      border-color: orange;
    }

    input[value="Еда"] {
      border-color: red;
      margin-top: 0px;
      margin-left: 30px;
    }

    input[value="Еда"]:checked::before {
      background-color: red;
      border-color: red;
    }

    input[value="Налоги"] {
      border-color: green;
      margin-top: 0px;
      margin-left: 62px;
    }

    input[value="Налоги"]:checked::before {
      background-color: green;
      border-color: green;
    }

    input[value="Путешествия"] {
      border-color: black;
      margin-top: 50px;
      margin-left: 30px;
    }

    input[value="Путешествия"]:checked::before {
      background-color: black;
      border-color: black;
    }

    input[value="Транспорт"] {
      border-color: #0C134F;
      margin-top: 50px;
      margin-left: 27px;
    }

    input[value="Транспорт"]:checked::before {
      background-color: #0C134F;
      border-color: #0C134F;
    }

    input[value="Шопинг"] {
      border-color: pink;
      margin-top: 50px;
      margin-left: 17px;
    }

    input[value="Шопинг"]:checked::before {
      background-color: pink;
      border-color: pink;
    }
    h66 {
      color: #333333;
    }
  </style>
</head>
<body>
<div class = "logo">l e c o u n t</div>
<%--<h6 id="result"></h6>--%>
<div class = "main">
  <div class = "lin1">
    <div class = "lin11">
      <h1>в а ш &nbspб а л а н с</h1>
      <div id = "totalSum">0 ₽</div>
      <div class = "two-butt">
        <button id = "open-modal-btn">пополнить</button>
        <button id = "open-red-modal-btn">вычесть</button>
      </div>
    </div>
    <div class = "lin12">
      <h1 id = "black">м е с я ц &nbsp м а й</h1>
      <div class = "moneybox" id = "income">
        <h4 id = "rev-text">доход</h4>
        <h4 id = "totalgreenSum">0</h4>
      </div>
      <div class = "moneybox" id = "spend">
        <h4 id = "rev-text">расход</h4>
        <h4 id = "totalredSum">0</h4>
      </div>

      <div class="circle">
        <div class="inner-circle"></div>
      </div>
    </div>
  </div>
  <div class = "lin2">
    <h11 id = "marg20">и с т о р и я</h11>
    <div class = "lin22">
      <div id="history"></div>
    </div>
  </div>
</div>

<div class="modal">
  <div class="modal-content">
    <span class="close-btn">&times;</span>
    <h12>введите сумму</h12>
    <%--        <label for="number-input">Введите сумму</label>--%>
    <input type="number" id="number-input">
    <button id="add-number-btn">добавить</button>
  </div>
</div>

<div class="red-modal">
  <div class="modal-content">
    <span class="close-btn">&times;</span>
    <h12>введите сумму</h12>
    <input type="number" id="red-number-input">
    <%--        <label for="city-select">выберите город:</label>--%>
    <h12>выберите вид трат</h12>
    <form>
      <label>
        <input type="radio" name="option" value="Развлечения">
        <span>Развлечения</span>
      </label>
      <label>
        <input type="radio" name="option" value="Еда">
        <span>Еда</span>
      </label>
      <label>
        <input type="radio" name="option" value="Налоги">
        <span>Налоги</span>
      </label>
      <br>
      <label>
        <input type="radio" name="option" value="Путешествия">
        <span>Путешествия</span>
      </label>
      <label>
        <input type="radio" name="option" value="Транспорт">
        <span>Транспорт</span>
      </label>
      <label>
        <input type="radio" name="option" value="Шопинг">
        <span>Шопинг</span>
      </label>
    </form>
    <button id="add-red-number-btn">Добавить</button>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function() {
    // Обработчик клика на кнопке "Добавить число"
    $("#open-modal-btn").click(function() {
      $(".modal").fadeIn();
    });

    $("#open-red-modal-btn").click(function() {
      $(".red-modal").fadeIn();
    });

    // Обработчик клика на кнопке "Добавить" в модальном окне
    $("#add-number-btn").click(function() {
      // Получаем введенное число
      var number = $("#number-input").val();
      // Отправляем запрос на сервер, чтобы добавить число в историю
      $.ajax({
        type: "POST",
        url: "greennumber",
        data: {number: number},
        success: function(response) {
          // Обновляем значение на странице
          $("#history").html(response);
        }
      });
      $(".modal").fadeOut();
    });

    // Обработчик клика на кнопке закрытия модального окна
    $(".close-btn").click(function() {
      $(".modal").fadeOut();
    });
    $(".close-btn").click(function() {
      $(".red-modal").fadeOut();
    });


// Обработчик клика на кнопке "Добавить" в красном модальном окне
    $("#add-red-number-btn").click(function() {
      var city = "другое";
      // Получаем введенное число и выбранный город
      var number = $("#red-number-input").val();
      // var city = $("#city-select").val();
      city = $("input[name='option']:checked").val();
      // Отправляем запрос на сервер, чтобы добавить красное число в историю
      $.ajax({
        type: "POST",
        url: "rednumber",
        data: {number: number, city: city},
        success: function(response) {
          // Обновляем значение на странице
          $("#history").html(response);
        }
      });
      $(".red-modal").fadeOut();
    });

  });

  var totalgreenSum = 0;
  var totalredSum = 0;
  var myVariable = 0;

  function updateTotalSum() {
    $("#totalSum").text(myVariable + " ₽");
  }


  $("#add-number-btn").click(function() {
    // Получаем введенное число
    var number = parseInt($("#number-input").val());
    myVariable += number;
    updateTotalSum();
    // Отправляем число на сервер для обработки
    $.ajax({
      type: "POST",
      url: "greensum",
      data: {number: number},
      success: function(response) {
        // Обновляем значение на странице
        $("#totalgreenSum").html(response);
      }
    });
  });


  $("#add-red-number-btn").click(function() {
    // Получаем введенное число
    var number = parseInt($("#red-number-input").val());
    myVariable -= number;
    updateTotalSum();
    // Отправляем число на сервер для обработки
    $.ajax({
      type: "POST",
      url: "redsum",
      data: {number: number},
      success: function(response) {
        // Обновляем значение на странице
        $("#totalredSum").html(response);
      }
    });
  });


</script>
</body>
</html>








