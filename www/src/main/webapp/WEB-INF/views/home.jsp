<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<style>
  body {
    margin: 0px;
    width: 1920px;
    height: 1024px;
  }

  #userinfo {
    display: inline-block;
    width: 1000px;
    height: 50px;
    /*  background-color: aqua;*/
    top: 40px;
    left: 1700px;
    position: absolute;
  }

  #header {
    width: 1920px;
    height: 100px;
    /* background-color: rgb(98, 139, 253);*/
    padding-top: 20px;
    box-sizing: border-box;
    float: left;
    /* display: flex;*/

  }

  .header_20 input[type=text] {
    width: 500px;
    height: 32px;
    font-size: 15px;
    border: solid 1px gray;
    border-radius: 15px;
    outline: none;
    margin-bottom: 10px;
    background-color: rgb(233, 233, 233);
  }

  .header_10 {
    width: 400px;
    height: 40px;
    /* border: 1px solid;*/
    margin: 0px auto;
    text-align: center;
    float: left;
  }

  .header_20 {
    padding-top: 5px;
    width: 1500px;
    height: 40px;
    /* border: 1px solid;*/
    margin: 0px auto;
    text-align: center;
    float: left;
  }

  .header_10 h2 {
    display: inline;
    color: green;
    font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
  }

  #nav {
    width: 1920px;
    height: 60px;
    float: left;
    border-bottom: 1px solid;
    font-size: larger;
  }

  /*
    #nav ul li{
        color:black;
    }
     #nav ul li:hover{
        background-color: aqua;
    } */
  /*   ul {
*/
  /*   border: 1px solid;
        margin-top: 3px;
    }*/
  ul li {
    display: inline-block;
    width: 120px;
    /*   border: 1px solid;*/

  }

  #mainsection {
    width: 80%;
    height: 900px;
    /*  border: 1px dotted;*/
    float: left;
    box-sizing: border-box;
  }

  #mainsection_01 {
    width: 80%;
    height: 300px;
    /*   border: 1px solid;
    /*    background-color: red;*/
    margin: 0px auto;
    text-align: center;
    float: left;
  }

  #asidelogin {
    width: 20%;
    height: 500px;
    /* border: 1px solid;*/
    float: left;
  }

  .subject {
    display: inline-block;
    font-size: larger;
    margin-bottom: 5px;
  }

  #login {
    background-color: darkcyan;
    padding-top: 15px;
    border-radius: 5px;
    box-sizing: border-box;
    color: white;

  }

  #login,
  #loginup,
  #logindown {
    width: 250px;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    margin: 0px auto;

  }

  #loginbox {
    margin-top: 30px;
    box-sizing: border-box;
  }

  #infosection {
    width: 1920px;
    height: 150px;
    /* border: 1px solid;*/
    float: left;
  }

  .infosetion_card {
    width: 360px;
    height: 150px;
    margin-left: 20px;
    /* background-color: yellow;*/
    float: left;
  }

  #footer {
    width: 1920px;
    text-align: center;
    font-size: larger;
    /* border: 1px solid;*/
    float: left;
  }
</style>
<style>
  .dropdown {
    display: inline-block;
    position: relative;
  }

  #btn01,
  #btn02,
  #btn03,
  #btn04,
  #btn05 {
    border: none;
    border-radius: 5px;
    padding: 3px 30px;
    font-size: 18px;
    cursor: pointer;
    display: inline-block;
    background-color: white;
  }

  button:hover {
    background-color: #ddd;
  }

  .dropdown-options {
    display: none;
    position: absolute;
    overflow: auto;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0px 10px 10px 0px rgba(0, 0, 0, 0.4);
  }

  .dropdown:hover .dropdown-options {
    display: block;
  }

  .dropdown-options a {
    display: block;
    color: #000000;
    padding: 5px;
    text-decoration: none;
    padding: 20px 40px;
  }

  .dropdown-options a:hover {
    color: #0a0a23;
    background-color: #ddd;
    border-radius: 5px;
  }
</style>
<style>
  /*boot strap에서 마우스 올려 놓으면 메뉴 자동 펼치기 추가 코드 */
  nav li.dropdown:hover>ul.dropdown-menu {
    display: block;
    margin: 0;
  }
</style>
<body>
<%@ include file="./include/top.jsp" %>
	<div id="mainsection">
	<style>
#mainsection left {
	float:left;
	width:300px;
	height:500px;
	padding: 20px 20px 20px 30px;
	box-sizing:border-box;
}
</style>


  <div id="infosection">
    <div class="infosetion_card">
      <h3> Java </h3>
      <hr>
      <p> 객체지향언어 자바는 프로그래밍 실력향상에 좋은 언어이다</p>
    </div>
    <div class="infosetion_card">
      <h3> Spring </h3>
      <hr>
      <p> 웹개발에서 Spring은 필수적인 요소이다. 프레임워크를 구성을 이해하자</p>
    </div>
    <div class="infosetion_card">
      <h3> JavaScript</h3>
      <hr>
      <p>자바스크립트는 html 태그를 선택하여 동적인 효과를 가져다 주며 반응형 웹에서 많이 사용한다.</p>
    </div>
    <div class="infosetion_card">
      <h3> JavaScript</h3>
      <hr>
      <p>자바스크립트는 html 태그를 선택하여 동적인 효과를 가져다 주며 반응형 웹에서 많이 사용한다.</p>
    </div>
    <div class="infosetion_card">
      <h3> JavaScript</h3>
      <hr>
      <p>자바스크립트는 html 태그를 선택하여 동적인 효과를 가져다 주며 반응형 웹에서 많이 사용한다.</p>
    </div>

  </div>
  <div id="footer">
    <hr>
    김티처 tel. 010-9407-8767
  </div>
  <!-- Modal -->
  <form action="join" method="post">
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">회원가입</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">ID</span>
            <input type="text" class="form-control" placeholder="Username" aria-label="Username"
              aria-describedby="basic-addon1"name="id">
              <!-- name으로 지정하는 것들이 변수, vo의 변수이름, 데이터베이스 컬럼 이름과 같아야한다. -->
          </div>
          <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">PASS</span>
            <input type="text" class="form-control" placeholder="Pass" aria-label="Username"
              aria-describedby="basic-addon1"name="pass">
              <!-- name으로 지정하는 것들이 변수, vo의 변수이름, 데이터베이스 컬럼 이름과 같아야한다. -->
          </div>
          <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">TEL</span>
            <input type="text" class="form-control" placeholder="tel" aria-label="Username"
              aria-describedby="basic-addon1"name="tel">
              <!-- name으로 지정하는 것들이 변수, vo의 변수이름, 데이터베이스 컬럼 이름과 같아야한다. -->
          </div>
          
          <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">EMAIL</span>
            <input type="text" class="form-control" placeholder="E-mail" aria-label="Username"
              aria-describedby="basic-addon1"name="email">
              <!-- name으로 지정하는 것들이 변, vo의 변수이름, 데이터베이스 컬럼 이름과 같아야한다.수 -->
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Save</button>
          <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>
  </form>
  <div>
    <!-- Modal -->
    <!-- Modal -->
    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel1">로그인</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          <form action="login" method="post">
            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon1">ID</span>
              <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                aria-describedby="basic-addon1" name="id">
            </div>
            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon1">PASS</span>
              <input type="text" class="form-control" placeholder="Pass" aria-label="Username"
                aria-describedby="basic-addon1" name="pass">
            </div>
            <div class="modal-footer">
              <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">login</button>
              <button type="button" class="btn btn-primary " data-bs-dismiss="modal">Cancel</button>
            </div>
    	 </form>
          </div>
        </div>
      </div>
      <div>
        <!-- Modal -->
</body>

</html>