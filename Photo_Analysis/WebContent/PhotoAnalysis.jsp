<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="./css/home.css">
<title>Photo Analysis</title>
<!-- <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script> -->
<script type="text/javascript" src= "js/googleApi.js"></script>
<script type="text/javascript" src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script> 
<script>



	 function getDetailsMain()
	{
		  
		   var imageId = localStorage.getItem('imageId');
		
		 var urlImage = "https://docs.google.com/uc?id="+imageId;
		 console.log(urlImage);   
		getdetails(urlImage);
		
		
	}
	 function dodelay()
	 {
	 setTimeout(function(){return true;},3000);

	 }
       function getdetails(imgUrl)
       {
    	   var status = false;
    	   
    	 var i = 0;
    	  while(i<1)
    	  {
	    	  
	    	  try {
	    		 
			    	var xhttp = new XMLHttpRequest();	
			    	
			    	///var imageUrl = document.getElementById("imageUrl");		         
			        var query = "url=".concat(String(imgUrl));
			       
			        var url = "http://api.imagga.com/v1/tagging" + "?" + query;
			       
			       
			        dodelay();
			      //  window.alert(url);
			        
			        xhttp.open('GET', url, false);  		
			       
			       /*   */
			        
			        xhttp.setRequestHeader("Authorization", "Basic YWNjXzAzOTcxZjg0NmY1MDIwMDo3NGJlMDI0MGU5ZGYzYzBjOTVjZTgwOWJhOWMxOWI4MA==");
			       
			      xhttp.onreadystatechange=function() {
			        	 if(xhttp.readyState==4)
						    {
						    	
						        if (xhttp.status == 200) {
						        	 document.getElementById("url").value = imgUrl;
						        	 window.alert("Upload success");
						        	 document.getElementById("response").value = xhttp.responseText;
						        	 i = 11;
						        	
						        	 document.getElementById("myForm").submit();
						        	 
						        }
						        else{
						        	 window.alert("Upload failed");	            	 
					            	 console.log(xhttp);
					            	document.getElementById("response").value = xhttp.responseText;
					            	            	
					            }
						        
						    }
			        	 else{
			        		 window.alert("Please click OK to continue "+imgUrl);	
			        	 }
			        };
			        
			       xhttp.send();
			       // document.getElementById("response").value = xhttp.responseText;
			      
			   
			       
			      
	    	  } catch (e) {
	    		  console.log("Problems whuile hitting the url  "+imgUrl);
	    		  window.alert("Please click OK to continue "+imgUrl);	    	    		
	    	 }
	    	  i = i+1;
    	  }
    	  
    	
    	  return false;	
    }    	
               
  </script> 
  <style>
  body {
	background-color: #efeadc;
	position: top;
}
h2 {
	
}
  </style>
</head>
<body>
<div style="background-color: #d88d30;">
<h2 style="color: white; font-weight: normal; top:auto;  "> Add photo</h2>
</div>
<section class="container">
  <div class="login">
      <h1></br></h1>
	
	<form method = "GET" action = "PhotoAnalysis">
		 <input type="file" id="filePicker" name="Add Photo" style="display: none" />
		 
		<input type="button" id="authorizeButton" style="display: none" value="Authorize" />
		<input type="button" id="uploadButton" style="display:none" value="Upload" />
		<% String responseText = (String)request.getAttribute("response"); %>
		<div id="imageDiv" ></div>
		  <div class="hidden"><textarea id = "response" name = "response"style="width: 500px; height: 100px;"><%=responseText%></textarea> <br></div> 
		   <div class="hidden"><textarea id = "url" name = "url"style="width: 500px; height: 100px;"><%=responseText%></textarea> <br></div> 
			 
	<p class="submit"><input type="submit" id = "submit" value="Submit"></p>
	</form>	
	</div>
 </section>
		


</body>
</html>