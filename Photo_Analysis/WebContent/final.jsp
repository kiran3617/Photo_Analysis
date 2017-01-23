<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Photo Analytics</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
<style>
body {
padding-right:5px;
padding-left: 5px;
    background-image:url("bg-body.jpg");
    size : auto;
}


h2 {
    color: #dccfaf;
    text-align: center;
}

#tfheader{
		background-color:#c3dfef;
	}

	
	.tfbutton {
		padding: 5px 15px;
		font-family:sans-serif;
		font-size:14px;
		text-align: center;
		text-decoration: none;
		color: #ffffff;
                background-color :darkblue;
		border: solid 1px #0076a3; border-right:0px;
		border-top-right-radius: 3px 3px;
		border-bottom-right-radius: 5px 3px;
	}
	

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #dc9d3f;
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}

.modalDialog {
	position: fixed;
	font-family: Arial, Helvetica, sans-serif;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background: rgba(0,0,0,0.8);
	z-index: 99999;
	opacity:0;
	-webkit-transition: opacity 400ms ease-in;
	-moz-transition: opacity 400ms ease-in;
	transition: opacity 400ms ease-in;
	pointer-events: none;
}
.modalDialog:target {
	opacity:1;
	pointer-events: auto;
}

.modalDialog > div {
	width: 400px;
	position: relative;
	margin: 10% auto;
	padding: 5px 20px 13px 20px;
	border-radius: 10px;
	background: #fff;
	background: -moz-linear-gradient(#fff, #999);
	background: -webkit-linear-gradient(#fff, #999);
	background: -o-linear-gradient(#fff, #999);
}
.float-right {
float: left;
width: 80%;

}
.right_sec
{
float:right !important;

}
.hidden {
  display: none;
}
#frame_div
{
height: 80%;
	padding-left: 0px;
	position: absolute;
}
dl
{
width:17%;
padding-right: 20px;

}
#header
{

height:85px;
width:960px;	
}
#head
{
style="height: 5%;"	
}


#header h1
{
position:absolute;

text-align:left;
color:#FFFFFF;
font-size:43px;
color:#FFF;	
left:14px;
top:18px;
}
.off
{
color:white;
}

</style>
</head>
<body>

<div id="head">
<table style="width: 100%; height: 5%; background-color: #6699cc ; border-width: 2px;">
<tr><td style="">
<div id="header">
<h1 style=" color:#fff; font-size: 48px; font-weight: normal;"> Link World</h1>
</div>
</td> 
<td style="padding-top: 10px; padding-right: 35px;">
<div id="tfheader" class="right_sec" style="background-color:#000 ;">
       <img src="photo.jpg" height="85" width="85">
      
	
		
</div>
</td> </tr>
<tr>
<td></td>
<td style="float: right; padding-right: 35px;"><p Style="color:white;"> Hey, Marc </p></td>
</tr>
</table>
</div>

<div style="width:100%; float: right; background-color: #6699cc">
<ul >
<li></li>
   <li><a  href="HomePage.html" target="search_iframe">Home Page</a></li>

  <li><a  href="PhotoAnalysis.jsp"  target="search_iframe">Add Photo</a></li>
 
</ul>
</div>


<div style=" width: 100%; padding-bottom: 30px; padding-top: 30px;" class="w3-content w3-display-container">
 <iframe style=" width:1000px; height: 400px; border-color: transparent;" src="ImgScr.html" scrolling="no"></iframe>
</div>



<div style="position:center; margin-left:150px; width: 980px; height: 500px; ">
<iframe  id ="frame_div" name="search_iframe" src="HomePage.html" width="980px" height="300" scrolling="no"></iframe>
</div>

<div style=" padding-right: 5px; display: none;">
<dl><dt style="padding-left: 5PX; float: left !importatnt;"><h2>Events</h2></dt>
  <dt><a href="#" ><img src="event1.jpg" height="200" width="180"></a></dt>
  </br>
<dt><a href="#"><img src="event2.jpg" height=200 width=180></a></dt>
</br>
  <dt><a href="#"><img src="ny.png" height=200 width=180></a></dt>
  
  <dt></dt>
  
</dl>
</div>







</body>
</html>
