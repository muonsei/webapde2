<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Home | stumblr</title>
        <link rel="stylesheet" type="text/css" href="indexStyle.css">
        <style>

				body {
				    background-color: #fef6eb;
				    text-align: center;
				    padding:0;
				    margin: 0;
				}
				
				body{
				    font-family: sans-serif;
				    font-size: 12pt;
				}
				
				h1 {
				    font-family: sans-serif;
				    font-size: 21pt;
				    line-height: 22pt;
				    font-weight: bold;
				}
				
				h4 {
				    font-family: sans-serif;
				    font-size: 14pt;
				    margin-top: -12px;
				}
				
				a {
				    color: #74828F;
				    text-decoration: none;
				    transition: all 600ms ease-in-out;
				    -webkit-transition: all 600ms ease-in-out;
				    -moz-transition: all 600ms ease-in-out;
				    -o-transition: all 600ms ease-in-out;
				    padding: 5px;
				}
				
				a:hover {
				    color: #FEF6EB;
				    background-color: #74828F;
				    border-radius: 5px;
				}
				
				@font-face {
				    font-family: naviFontR;
				    src: url(fonts/cinematografica/Cinematografica-Regular-trial.ttf);
				}
				
				@font-face {
				    font-family: naviFontB;
				    src: url(fonts/source-sans-pro/SourceSansPro-Regular.otf);
				}
				
				nav{
				    position:fixed;
				    top:0;
				    width:100%;
				    height:10%;
				    color:white;
				    font-family: sans-serif;
				    background-color:#74828F;
				}
				
				li{
				    display: inline-block;
				}
				
				li a{
				    font-size:20px;
				    text-decoration:none;
				    color: white;
				    transition: all 600ms ease-in-out;
				    -webkit-transition: all 600ms ease-in-out;
				    -moz-transition: all 600ms ease-in-out;
				    -o-transition: all 600ms ease-in-out;
				}
				li a:hover{
				    background-color:#FEF6EB;
				    color: #74828F;
				    border-radius: 3px;
				}
				
				#posts {
				    margin-top: 7%;
				    height: auto;
				    width: 100%;
				}
				
				#middle {
				    height: auto;
				    width: 100%;
				    margin-top: 50px;
				}
				
				.inside1 {
				    background-color: #81bfb2;
				    border-radius: 10px;
				    width: 500px;
				    height: 700px;
				    text-align: left;
				    color: #fef6eb;
				    padding: 4px 20px 4px 20px;
				    margin-top: 25px;
				    margin-left: auto;
				    margin-right: auto;
				}
				
				.pic{
				    margin-top: 30px;
				    width: 500px;
				    height: 500px;
				}
				
				
				#more {
				    font-family: sans-serif;
				    font-size: 12pt;
				    margin-top: 20px;
				    margin-bottom: 20px;
				    padding: 10px;
				    text-align: center;
				    background-color: #74828f;
				    color: #fef6eb;
				    border: 3px solid #74828f;
				    border-radius: 5px;
				    transition: all 600ms ease-in-out;
				    -webkit-transition: all 600ms ease-in-out;
				    -moz-transition: all 600ms ease-in-out;
				    -o-transition: all 600ms ease-in-out;
				}
				#more:hover {
				    background-color: #fef6eb;
				    color: #74828f;
				    border-color: #74828f;
				}
				
				#logout{
				    background-color: transparent;
				    font-family: sans-serif;
				    font-size: 20px;
				    color: white;
				    border-width: 0px;
				    transition: all 600ms ease-in-out;
				    -webkit-transition: all 600ms ease-in-out;
				    -moz-transition: all 600ms ease-in-out;
				    -o-transition: all 600ms ease-in-out;
				    position: relative;
				    left: 180px;
				    
				}
				
				#logout:hover{
				    background-color:#FEF6EB;
				    color: #74828F;
				    border-radius: 5px;
				}
				
				#navLinks{
				    margin: auto;
				    margin-top: 10px;
				    padding: 0px;
				}
				
				#homing{
				    position: relative;
				    left: 180px;
				    margin-right: 20px;
				}
				
				#photos{
				    position: relative;
				    left: 180px;
				    margin-right: 20px;
				}
				
				#profile{
				    position: relative;
				    left: 180px;
				    margin-right: 20px;
				}
				
				#search{
				    position: relative;
				    right: 180px;
				    width: 250px;
				    font-size: 12px;
				}
				
				#upload{
				    position: relative;
				    left: 180px;
				    margin-right: 20px;
				}
				
				#upload{
				    background-color: transparent;
				    font-family: sans-serif;
				    font-size: 20px;
				    color: white;
				    border-width: 0px;
				    transition: all 600ms ease-in-out;
				    -webkit-transition: all 600ms ease-in-out;
				    -moz-transition: all 600ms ease-in-out;
				    -o-transition: all 600ms ease-in-out;
				    position: relative;
				    left: 180px;
				    
				}
				
				#upload:hover{
				    background-color:#FEF6EB;
				    color: #74828F;
				    border-radius: 5px;
				}
				
				
				.anothermodal {
				    font-family: sans-serif;
				    display: none; /* Hidden by default */
				    position: fixed; /* Stay in place */
				    z-index: 1; /* Sit on top */
				    padding-top: 100px; /* Location of the box */
				    left: 0;
				    top: 0;
				    width: 100%; /* Full width */
				    height: 100%; /* Full height */
				    overflow: auto; /* Enable scroll if needed */
				    background-color: rgb(0,0,0); /* Fallback color */
				    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
				}
				
				.modal-upload {
				    background-color: #fefefe;
				    margin: auto;
				    padding: 20px;
				    border: 1px solid #888;
				    width: 70%;
				    height: 70%;
				    overflow: auto;
				}
				
				.closeupload {
				    color: #aaaaaa;
				    float: right;
				    font-size: 28px;
				    font-weight: bold;
				}
				
				.closeupload:hover,
				.closeupload:focus {
				    color: #000;
				    text-decoration: none;
				    cursor: pointer;
				}
				
				
				#upload{
				    background-color: transparent;
				    font-family: sans-serif;
				    font-size: 20px;
				    color: white;
				    border-width: 0px;
				    transition: all 600ms ease-in-out;
				    -webkit-transition: all 600ms ease-in-out;
				    -moz-transition: all 600ms ease-in-out;
				    -o-transition: all 600ms ease-in-out;
				    position: relative;
				    left: 180px;
				    margin-right: 20px;
				}
				
				#upload:hover{
				    background-color:#FEF6EB;
				    color: #74828F;
				    border-radius: 5px;
				}
				
				#uploadBody{
				    margin: auto;
				    margin-top: 50px;
				    text-align: center;
				}
				
				#uploadHeader{
				    font-size: 20px;
				    font-style: sans-serif;
				}
				
				#uploadFile{
				    margin: auto;
				    font-size: 16px;
				    margin-top: 30px;
				    display: block;
				}
				
				#titleBlank{
				    margin: auto;
				    margin-top: 15px;
				    font-size: 16px;
				    width: 300px;
				    display: block;
				}
				
				#picDesc{
				    margin: auto;
				    margin-top: 15px;
				    width: 300px;    
				    font-size: 16px;
				    font-family: sans-serif;
				    border-top: 0;
				    border-right: 0;
				    border-left: 0;
				    min-height: 75px;
				    max-height: auto;
				    display: block;
				}
				
				#tagBlank{
				    margin: auto;
				    margin-top: 15px;
				    font-size: 16px;
				    width: 300px;
				    display: block;
				}
				
				#uploadbutton{
				    margin-top: 15px;
				    font-size: 16px;
				}
				
				.inside1 {
				    background-color: #81bfb2;
				    border-radius: 10px;
				    width: 500px;
				    height: 700px;
				    text-align: left;
				    color: #fef6eb;
				    padding: 4px 20px 4px 20px;
				    margin-top: 25px;
				    margin-left: auto;
				    margin-right: auto;
				}
				
				.pic{
				    margin-top: 30px;
				    width: 500px;
				    height: 500px;
				}
				
				.posttitle{
					font-size: 24px;
					font-family: sans-serif;
					font-weight: bold;
					margin-top: 15px;
					color: white;
				}
				
				.postdesc{
					font-size: 18px;
					font-family: sans-serif;
					margin-top: 15px;
					color: white;
				}
				
				.posttags{
					margin-top: 10px;
					font-family: sans-serif;
					font-size: 12px;
				}
				
				.postcreds{
					margin-top: 15px;
					font-family: sans-serif;
					font-size: 14px;
					color: white;
				}
				
				p{
					margin-top: 2px;
					margin-bottom: 2px;
				}
				
				#searchbutton{
					position: relative;
					right: 180px;
				}
				

        
		</style>
    </head>

    <body>
        <nav>
        	<form action="logoutServlet" method="POST">
	            <ul id=navLinks>
	                <li><input type="text" id="search" placeholder="Search"/></li>
	                <li><a href="#search" id="searchbutton">Search</a></li>
	                <li><a href="home.jsp" id="homing">Home</a></li>
	                <li><a href="photos.jsp" id="photos">Explore</a><li>
	                <li><a href="profile.jsp" id="profile">Profile</a></li>
	                <li><a href="upload.jsp" id="upload">Upload</a></li>
			        <li><input type="submit" id="logout" name="logout" value="Log Out"/></li>
	            </ul>
            </form>
        </nav>
        <div id="middle">
            <div id="posts">
            	<!--div class="inside1">
                    <img src="1.jpg" class="pic">
                </div>
                <div class="inside1">
                    <img src="2.jpg" class="pic">
                </div>
                <div class="inside1">
                    <img src="3.jpg" class="pic">
                </div-->
                <div class="inside1">
                    <img src="images/4.jpg" class="pic">
                    <div class="posttitle">
                    	Night scene
                    </div>
                   	<div class="postdesc">
                   		Through the lens at night.
                   	</div>
                   	<div class="posttags">
                   			<a href="">#night</a>
                   			<a href="">#photography</a>     			
                   	</div>
                   	<div class="postcreds">
                   		<div class="uploadby">
                   		<p>Uploaded by<a href="">@user1</a></p>
                   		</div>
                   		<div class="sharedwith">
                   		<p>Shared with<a href="">@admin</a>,<a href="">@user2</a>,and<a href="">two more users</a></p>
                   		</div>
                   	</div>
                </div>
                <div class="inside1">
                    <img src="images/5.jpg" class="pic">
                    <div class="posttitle">
                    	Party Stans
                    </div>
                   	<div class="postdesc">
                   		Back at it again with the Stans
                   	</div>
                   	<div class="posttags">
                   			<a href="">#shoes</a>
                   			<a href="">#party</a>     			             	
                   	</div>
                   	<div class="postcreds">
                   		<div class="uploadby">
                   		<p>Uploaded by<a href="">@user2</a></p>
                   		</div>
                   		<div class="sharedwith">
                   		<p>Shared with<a href="">@admin</a>and<a href="">@user1</a></p>
                   		</div>
                   	</div>
                </div>
                <div class="inside1">
                    <img src="images/6.jpg" class="pic">
                    <div class="posttitle">
                    	Clouds
                    </div>
                   	<div class="postdesc">
                   		Flying above. See you soon!
                   	</div>
                   	<div class="posttags">
                   			<a href="">#clouds</a>
                   			<a href="">#photography</a>   			                  		                    			
                   	</div>
                   	<div class="postcreds">
						<div class="uploadby">
                   		<p>Uploaded by<a href="">@user3</a></p>
                   		</div>
                   		<div class="sharedwith">
                   		<p>Shared with<a href="">@admin</a>,<a href="">@user2</a>,and<a href="">two more users</a></p>
                   		</div>	
                   	</div>
                </div>
                <div class="inside1">
                    <img src="images/7.jpg" class="pic">
                    <div class="posttitle">
                    	Room Makeover
                    </div>
                   	<div class="postdesc">
                   		Room decor tutorial soon!
                   	</div>
                   	<div class="posttags">
                   			<a href="">#tutorial</a>
                   			<a href="">#roomdecor</a>     			                 		                      		
                   	</div>
                   	<div class="postcreds">
                   		<div class="uploadby">
                   		<p>Uploaded by<a href="">@user3</a></p>
                   		</div>
                   		<div class="sharedwith">
                   		<p>Shared with<a href="">@admin</a>,<a href="">@user1</a>,and<a href="">@user4</a></p>
                   		</div>	
                   	</div>
                </div>
                <div class="inside1">
                    <img src="images/8.jpg" class="pic">
                     <div class="posttitle">
                    	Fresh
                    </div>
                   	<div class="postdesc">
                   		Back at it again.
                   	</div>
                   	<div class="posttags">
                   	        <a href="">#ootd</a>
                   			<a href="">#superstar</a>   			                  		   
                   	</div>
                   	<div class="postcreds">
                   		<div class="uploadby">
                   		<p>Uploaded by<a href="">@user4</a></p>
                   		</div>
                   		<div class="sharedwith">
                   		<p>Shared with<a href="">@admin</a></p>
                   		</div>
                   	</div>
                </div>
                <div class="inside1">
                    <img src="images/9.jpg" class="pic">
                     <div class="posttitle">
                    	Head up
                    </div>
                   	<div class="postdesc">
                   		Keep it in a photograph.
                   	</div>
                   	<div class="posttags">
                   			<a href="">#photography</a>
                   			<a href="">#memories</a>     			                  		
                   	</div>
                   	<div class="postcreds">
                   	    <div class="uploadby">
                   		<p>Uploaded by<a href="">@user1</a></p>
                   		</div>
                   		<div class="sharedwith">
                   		<p>Shared with<a href="">@admin</a>and<a href="">@user4</a></p>
                   		</div>
                   	</div>
                </div>
                <!--div class="inside1">
                    <img src="10.jpg" class="pic">
                </div>
                <div class="inside1">
                    <img src="11.jpg" class="pic">
                </div>
                <div class="inside1">
                    <img src="12.jpg" class="pic">
                </div>
                <div class="inside1">
                    <img src="13.jpg" class="pic">
                </div>
                <div class="inside1">
                    <img src="14.jpg" class="pic">
                </div>
                <div class="inside1">
                    <img src="15.jpg" class="pic">
                </div-->
                
            </div>
            <!--button id="more">Load More...</button-->
        </div>
        
         <div id="uploadModal" class="anothermodal">
            <div class="modal-upload">
                <span class="closeupload">&times;</span>
                <div id="uploadBody">
                	<form action="home" method="POST">
	                    <div id="uploadHeader">Upload Picture</div>
	                    <input type="file" id="uploadFile" name="filename" accept="image/jpg, image/png, image/tiff"/>
	                    <input type="text" id="titleBlank" name="title" placeholder="Title"/>
	                    <textarea id="picDesc" placeholder="Description"></textarea>
	                    <input type="text" id="tagBlank" placeholder="Tags"/>
	                    <input type="button" id="uploadbutton" value="Upload"/>
                    </form>
                </div>                                       
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script>
            var start = 0;
            $(document).ready(function() {
                
            	/*
                $("#upload").click(function(){
                    $("#uploadModal").css("display", "block");
                    $(".modal-upload").html();  
                });
                
                $(".closeupload").click(function(event){
                    $("#uploadModal").css("display", "none");
                });
                
                $("#uploadbutton").click(function(){
                    $("#uploadModal").css("display", "none");
                    var imgname = document.getElementById("uploadFile");
                    console.log(imgname.value);
                    var full = $("<img src=" + imgname + ">");
                    full.addClass("inside1");
                    $("#posts").append(full);
                });
                */
                
                $("#searchbutton").click(function(){
                	var func = $("#search");
                	var filter = func.val();
                	var newDiv = $("<div>");

                	newDiv.addClass("posts");
                	console.log(filter);
                	
                	if(filter == "#photography" || filter == "photography"){
                		console.log("IN");
                		var div1 = $("<div class='inside1'><img src='images/4.jpg' class='pic'><div class='posttitle'>Night scene</div><div class='postdesc'>Through the lens at night.</div><div class='posttags'><a href='#'>#night</a><a href='#'>#photography</a></div></div>");
                		var div2 = $("<div class='inside1'><img src='images/6.jpg' class='pic'><div class='posttitle'>Clouds</div><div class='postdesc'>Flying above. See you soon!</div><div class='posttags'><a href='#'>#clouds</a><a href='#'>#photography</a></div></div>");
                		var div3 = $("<div class='inside1'><img src='images/9.jpg' class='pic'><div class='posttitle'>Head up</div><div class='postdesc'>Keep it in a photograph.</div><div class='posttags'><a href='#'>#photography</a><a href='#'>#memories</a></div></div>");

                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                		newDiv.append(div2);
                		newDiv.append(div3);
                	}else if(filter == "#night" || filter == "night"){
                		var div1 = $("<div class='inside1'><img src='images/4.jpg' class='pic'><div class='posttitle'>Night scene</div><div class='postdesc'>Through the lens at night.</div><div class='posttags'><a href='#'>#night</a><a href='#'>#photography</a></div></div>");
                	
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else if(filter == "#shoes" || filter == "shoes" || filter == "#party" || filter == "party"){
                		var div1 = ("<div class='inside1'><img src='images/5.jpg' class='pic'><div class='posttitle'>Party Stans</div><div class='postdesc'>Back at it again with the Stans</div><div class='posttags'><a href='#'>#shoes</a><a href='#'>#party</a></div></div>");
                		
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else if(filter == "#clouds" || filter == "clouds"){
                		var div1 = $("<div class='inside1'><img src='images/6.jpg' class='pic'><div class='posttitle'>Clouds</div><div class='postdesc'>Flying above. See you soon!</div><div class='posttags'><a href='#'>#clouds</a><a href='#'>#photography</a></div></div>");
                		
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else if(filter == "#tutorial" || filter == "tutorial" || filter == "#roomdecor" || filter == "roomdecor"){
                		var div1 = $("<div class='inside1'><img src='images/7.jpg' class='pic'><div class='posttitle'>Room Makeover</div><div class='postdesc'>Room decor tutorial soon!</div><div class='posttags'><a href='#'>#tutorial</a><a href='#'>#roomdecor</a></div> </div>");
                		
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else if(filter == "#ootd" || filter == "ootd" || filter == "#superstar" || filter == "superstar"){
                		var div1 = $("<div class='inside1'><img src='images/8.jpg' class='pic'><div class='posttitle'>Fresh</div><div class='postdesc'>Back at it again</div><div class='posttags'><a href='#'>#ootd</a><a href='#'>#superstar</a></div></div>");
                		
                		$("#middle").html(newDiv);
                        newDiv.html(div1);
                	}else if(filter == "#memories" || filter == "memories"){
                		var div1 = $("<div class='inside1'><img src='images/9.jpg' class='pic'><div class='posttitle'>Head up</div><div class='postdesc'>Keep it in a photograph.</div><div class='posttags'><a href='#'>#photography</a><a href='#'>#memories</a></div></div>");
                	
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else{
                		alert("No result for tag search");
                	}
                	
                	func.val("");
                	
                });
                
            });
                
             /*
                $.getJSON("/jsonAPI").done(function(obj) {
                    for(var i = 0; i < obj.length; i++) {
                    	var post = $("<div class='inside1'><img src=" + obj[i].link + "></div><div class='imgtitle'" + obj[i].title + "</div>");
                    	post.addClass("pic");
                    	$("#posts").append(post);
 
                    }
                }); 
                            
            });
            */
        </script>
        <!--script>
        
        var users = [];
        var start = 0;
        var end = 90;
        $(document).ready(function() {
            $.getJSON("https://jsonplaceholder.typicode.com/users")
            .done(function(obj) {
                for(var i = 0; i < obj.length; i++) {
                    users.push(obj[i]);
                }
            });
           
            if (start == 0){
                $.getJSON("https://jsonplaceholder.typicode.com/posts")
                .done(function(obj) {
                        var totalLength = obj.length - end;
                        for(var j = start; j < totalLength; j++) {
                            var userID = parseInt(obj[j].userId) - 1;
                            var post = $("<div><h1>" + obj[j].title + '</h1><h4>Written by: <a href="profile.html?id='
                                        + users[userID].id + '">' 
                                        + users[userID].username 
                                        + "</a></h4><p>" + obj[j].body + "</p></div>");
                            post.addClass("inside1");
                            $("#posts").append(post);
                        }

                        console.log(totalLength);
                        start = start + 10;
                        end = end - 10;
                })
                .fail(function() {
                    var errorMessage = $("<div><p>Sorry! We could not load the data at the moment.</p></div>");
                    $("#posts").html(errorMessage);
                });
            }
           
            $("#more").click(function(){
                    $.get("https://jsonplaceholder.typicode.com/posts", function(obj) {
                    var totalLength = obj.length - end;
                    for(var j = start; j < totalLength; j++) {
                        if (j == obj.length - 1)
                            $("#more").hide();
                        var userID = parseInt(obj[j].userId) - 1;
                        var post = $("<div><h1>" + obj[j].title + '</h1><h4>Written by: <a href="profile.html?id='
                                     + users[userID].id + '">' 
                                     + users[userID].username 
                                     + "</a></h4><p>" + obj[j].body + "</p></div>");
                        post.addClass("inside1");
                        $("#posts").append(post);
                    }

                    console.log(totalLength);
                    start = start + 10;
                    end = end - 10;
                });
            });
        });
    </script-->
    </body>
</html>