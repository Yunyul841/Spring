<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Screen</title>
    <style>
        body {
            width: 1280px;
            height: 1024px;
            border: 1px solid;
            margin: 0; 
            font-family: Arial, sans-serif;
            
        }
        header {
            /* padding-right: ; */
            width: 100%;
            height: 100px;
            background-color: #d2b48c;
            line-height: 100px;
            font-size: 24px; 
            float: left;
            text-align: center;
            
        }
        nav {
            float: left;
            width: 100%;
            height: 50px;
            /* display: flex; */
            background-color: #bdb76b; 
            
        }
        nav ul {
            /* float: left; */
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center; 
            width: 100%;
        }
        nav ul li {
            margin: auto;
            margin-right: auto;
        }
        li a {
            display: block;
            color: white;
            padding: 14px 20px;
            text-decoration: none;
        }
        li a:hover {
            background-color: #8b4513; 
        }
        section {
            width: 50%;
            height: 400px;
            float: left;
            background-color: #fff8dc; 
            padding: 20px; 
            float: left;
            box-sizing: border-box; 
        }
        aside {
            float: left;
            width: 50%;
            height: 400px;
            float: left;
            background-color: #ffe4c4; 
            padding: 20px; 
            box-sizing: border-box; 
        }
        #display {
            clear: both; 
            width: 100%;
            height: 430px;
            background-color: #faebd7; 
            margin-top: 20px; 
        }
        footer {
            width: 100%;
            height: 44px;
            background-color: #d2b48c;
            text-align: center;
            line-height: 44px; 
        }
        img {
            float: left;
           
        }
       
       
    </style>
</head>
<body>
    <header> Welcome My page</header> 

    <nav>
        <ul>
            <li><a class="active" href="#home">Home</a></li>
            <li><a href="#news">News</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="#about">About</a></li>
        </ul>
    </nav>

    <section>
        <h2>-Steve Jobs-</h2>
        <p>Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it.</p>
    </section>
    
    <aside>
        <h2>Wise Saying</h2>
        <ul>
            <li>1:When you believe in a thing, believe in it all the way, implicitly and unquestionable. </li><br>
            <li>2:The past can hurt. But from the way I see it, you can either run from it, or learn from it.</li><br>
            <li>3:You cannot be happy every day. But there are happy things every day. - Winnie the Pooh.</li><br>
            <li>4:Many of lifes failures are people who did not realize how close they were to success when they gave up.</li><br>
            <li>5:Life is like playing a violin in public and learning the instrument as one goes on.</li>
        </ul>
    </aside>

    <div id="display">
        <h2>Display Area</h2>
        <p>This area can be used for various dynamic content like notifications or messages.</p>
        <img src="<%=request.getContextPath()%>/resources/img/sectionback5.PNG.jpg" width="520" height="auto">
        <img src="<%=request.getContextPath()%>/resources/img/pexels-ahmetyuksek-28971111.jpg" width="520" height="auto">
        <img src="<%=request.getContextPath()%>/resources/img/sectionback1.PNG.jpg" width="240" height="346">
    </div>
  
    
    <footer>2024-10-30 윤율</footer>
</body>
</html>

