<html>
    <head>
        <title>Profile | stumblr</title>
        <style>
       			body
				{
				    padding:0;
				    margin: 0;
				    background-color:#FEF6EB;
				}

				@font-face {
				    font-family: naviFontR;
				    src: url(fonts/cinematografica/Cinematografica-Regular-trial.ttf);
				}
				
				@font-face {
				    font-family: naviFontB;
				    src: url(fonts/source-sans-pro/SourceSansPro-Regular.otf);
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
				
				nav{
				    position:fixed;
				    top:0;
				    width:100%;
				    height:10%;
				    color:white;
				    font-family: sans-serif;
				    background-color:#74828F;
				}
				
				#gallery div a {
				    text-decoration: none;
				    color: #FEF6EB;
				    -webkit-transition: all 600ms ease-in-out;
				    -moz-transition: all 600ms ease-in-out;
				    -o-transition: all 600ms ease-in-out;
				    padding: 2px;
				}
				
				#gallery div a:hover {
				    text-shadow: 3px 2px 2px #74828F;
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
				
				#profile{
				    width: 550px;
				    height: auto;
				    margin-left:auto;
				    margin-right: auto;
				    margin-top:80px;
				    color:#FEF6EB;
				    background-color:#81bfb2;
				    border-radius: 16px;
				    -moz-border-radius: 16px;
				    -webkit-border-radius: 16px;
				    border: 0px solid #000000;
				    padding-left:13px;
				    padding-right:13px;
				    font-family:sans-serif;
				    padding-top:5px;
				    padding-bottom:5px;
				    font-size:15px;
				}
				
				h3 span {
				    padding: 3px 5px 3px 5px;
				    border-radius: 5px;
				    background-color:#FEF6EB;
				    color:#81bfb2;
				    font-size:15px;
				    text-transform: uppercase;
				}
				
				#posts {
					margin-top: 50px;
					height: auto;
					width: 100%;
				}
				
				#individual_posts{
				    padding-top:30px;
				}
				
				#posts p{
				    font-size:15px;
				}
				#albums{
				    position: relative;
				    font-family: sans-serif;
				    color:#FEF6EB;
				    background-color:#81bfb2;
				    border-radius: 16px 16px 16px 16px;
				    height:auto;
				    margin-bottom: 55px;
				    padding-bottom: 30px;
				    text-align: center;
				}
				#middle{
					height: auto;
					width: 100%;
					margin-top: 50px;
				}
				
				#alPosts{
				    max-width: 930px;
				    height:auto;
				    float: right;
				    margin-top:-730px;
				    margin-right:55px;
				    margin-left:260px;
				    -webkit-flex: 1; /* Safari 6.1+ */
				    -ms-flex: 1; /* IE 10 */ 
				    flex: 1;
				}
				#albums  p{
				    font-size:13pt;
				    text-overflow: ellipsis;
				}
				#gallery{
				    position: relative;
				    height:auto;
				    width:100%;
				    display:inline;
				    text-align: center;
				}
				#gallery  div{
				    margin-left:150px;
				    margin-top:120px;
				    width:30%;
				    text-align:center;
				    text-overflow: ellipsis;
				}
				
				#gallery div:nth-child(1) {
				    padding-top: 30px;
				}
				#gallery div:nth-child(even){
				    margin-left:500px;
				    margin-top:-151px;
				}
				.galleryItem {
				    height: 150px;
				    width: 150px;
				}
				img{
				    height:100px;
				    width:100px;
				}
				
				.more {
				    font-family: sans-serif;
				    font-size: 12pt;
				    margin-top: 20px;
				    margin-bottom: 20px;
				    margin-left: auto;
				    margin-right: auto;
				    padding: 10px;
				    text-align: center;
				    background-color: #fef6eb;
				    color: #81bfb2;
				    border: 3px solid transparent;
				    border-radius: 5px;
				    transition: all 600ms ease-in-out;
				    -webkit-transition: all 600ms ease-in-out;
				    -moz-transition: all 600ms ease-in-out;
				    -o-transition: all 600ms ease-in-out;
				}
				.more:hover {
				    background-color: transparent;
				    color: #fef6eb;
				    border-color: #fef6eb;
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
				    position: relative;
				    left: 260px;
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
				
				#profileset{
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
				
				.modal {
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
				
				.modal-content {
				    background-color: #fefefe;
				    margin: auto;
				    padding: 20px;
				    border: 1px solid #888;
				    width: 70%;
				    height: 70%;
				    overflow: auto;
				}
				
				.close {
				    color: #aaaaaa;
				    float: right;
				    font-size: 28px;
				    font-weight: bold;
				}
				
				.close:hover,
				.close:focus {
				    color: #000;
				    text-decoration: none;
				    cursor: pointer;
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
				
				#profuser{
					color: white;
					font-size: 22px;
					margin-top: 30px;
					font-family: sans-serif;
				}
				
				#profdesc{
					color: white;
					font-size: 16px;
					text-align: justify;
					font-family: sans-serif;
				}
				
				.galleryinside{
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
								
				.image1{
					margin-top: 30px;
					width: 500px;
					height: 500px;
				}

				#posts {
				    margin-top: 10px;
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
					font-size: 14px;
				}

				#searchbutton{
					position: relative;
					right: 180px;
				}
				
				.postcreds{
					margin-top: 15px;
					font-family: sans-serif;
					font-size: 14px;
					color: white;
				}
				
				.postcreds p{
					margin-top: 2px;
					margin-bottom: 2px;
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
		            <li><a href="profile.jsp" id="profileset">Profile</a></li>
		            <li><a href="upload.jsp" id="upload">Upload</a></li>
		            <li><input type="submit" id="logout" name="logout" value="Log Out"/></li>       
	            </ul>
	        </form>
  
        </nav>
        
        <div id="middle">
            <div id="profile">
            	<div id="profuser">@admin</div>
            	<p id="profdesc">i am the admin. nyar i dont know. despacito, ay mami. tale as old as time. oh my heart hurts so good and i love you babe, so bad. i hate you, i love you, i hate that i love you.</p>
            </div>
            <div id="posts">
                	<div class="galleryinside">
                    	<img src="images/1.jpg" class="image1">
                    	<div class="posttitle">
                    		Day one.
                    	</div>
                    	<div class="postdesc">
                    		Sun's out, skin's out!
                    	</div>
                    	<div class="posttags">
                    		<a href="">#sunkissed</a>
                    		<a href="">#beach</a>
                    	</div>
                    	<div class="postcreds">
	                   		<div class="uploadby">
	                   		<p>Uploaded by<a href="">@admin</a></p>
	                   		</div>
	                   		<div class="sharedwith">
	                   		<p>Shared with public</p>
                   		</div>
                   	</div>
               		</div>
               		<div class="galleryinside">
                    	<img src="images/2.jpg" class="image1">
                    	<div class="posttitle">
                    		Lemon's out!
                    	</div>
                    	<div class="postdesc">
                    		When life gives you lemons, idek.
                    	</div>
                    	<div class="posttags">
                    		<a href="">#lemon</a>
                    		<a href="">#makelemonade</a>
                    	</div>
                    	<div class="postcreds">
	                   		<div class="uploadby">
	                   		<p>Uploaded by<a href="">@admin</a></p>
	                   		</div>
	                   		<div class="sharedwith">
	                   		<p>Shared with<a href="">@user1</a>,<a href="">@user2</a>,and<a href="">two more users</a></p>
                   		</div>
                   	</div>
                	</div>
                	<div class="galleryinside">
                    	<img src="images/3.jpg" class="image1">
                    	<div class="posttitle">
                    		Day in and out
                    	</div>
                    	<div class="postdesc">
                    		The best days with you!
                    	</div>
                    	<div class="posttags">
                    		<a href="">#bestfriends</a>
                    		<a href="">#daysout</a>
                    	</div>
                    	<div class="postcreds">
                   		<div class="uploadby">
                   		<p>Uploaded by<a href="">@admin</a></p>
                   		</div>
                   		<div class="sharedwith">
                   		<p>Shared with<a href="">@user4</a></p>
                   		</div>
                   	</div>
                	</div>
                    <!--div id="individual_posts">
                    </div-->
                    <!--button class="more" id="morePosts">Load More...</button-->
             </div>
        </div>
        
        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close">&times;</span>
                <div id="uploadBody">
                    <div id="uploadHeader">Upload Picture</div>
                     <input type="file" id="uploadFile" name="filename" accept="image/jpg, image/png, image/tiff"/>
                    <input type="text" id="titleBlank"/>
                    <textarea id="picDesc" placeholder="Description"></textarea>
                    <input type="text" id="tagBlank"/>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function() {
            
                $("#upload").click(function(){
                        $("#myModal").css("display", "block");
                        $(".modal-content").html();  
                });
                
                $(".close").click(function(){
                         $("#myModal").css("display", "none");
                });
                
                $("#searchbutton").click(function(){
                	var func = $("#search");
                	var filter = func.val();
                	var newDiv = $("<div>");

                	newDiv.addClass("posts");
                	console.log(filter);
                	
                	if(filter == "#photography" || filter == "photography"){
                		console.log("IN");
                		var div1 = $("<div class='inside1'><img src='/images/4.jpg' class='pic'><div class='posttitle'>Night scene</div><div class='postdesc'>Through the lens at night.</div><div class='posttags'><a href='#'>#night</a><a href='#'>#photography</a></div></div>");
                		var div2 = $("<div class='inside1'><img src='/images/6.jpg' class='pic'><div class='posttitle'>Clouds</div><div class='postdesc'>Flying above. See you soon!</div><div class='posttags'><a href='#'>#clouds</a><a href='#'>#photography</a></div></div>");
                		var div3 = $("<div class='inside1'><img src='/images/9.jpg' class='pic'><div class='posttitle'>Head up</div><div class='postdesc'>Keep it in a photograph.</div><div class='posttags'><a href='#'>#photography</a><a href='#'>#memories</a></div></div>");

                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                		newDiv.append(div2);
                		newDiv.append(div3);
                	}else if(filter == "#night" || filter == "night"){
                		var div1 = $("<div class='inside1'><img src='/images/4.jpg' class='pic'><div class='posttitle'>Night scene</div><div class='postdesc'>Through the lens at night.</div><div class='posttags'><a href='#'>#night</a><a href='#'>#photography</a></div></div>");
                	
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else if(filter == "#shoes" || filter == "shoes" || filter == "#party" || filter == "party"){
                		var div1 = ("<div class='inside1'><img src='/images/5.jpg' class='pic'><div class='posttitle'>Party Stans</div><div class='postdesc'>Back at it again with the Stans</div><div class='posttags'><a href='#'>#shoes</a><a href='#'>#party</a></div></div>");
                		
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else if(filter == "#clouds" || filter == "clouds"){
                		var div1 = $("<div class='inside1'><img src='/images/6.jpg' class='pic'><div class='posttitle'>Clouds</div><div class='postdesc'>Flying above. See you soon!</div><div class='posttags'><a href='#'>#clouds</a><a href='#'>#photography</a></div></div>");
                		
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else if(filter == "#tutorial" || filter == "tutorial" || filter == "#roomdecor" || filter == "roomdecor"){
                		var div1 = $("<div class='inside1'><img src='/images/7.jpg' class='pic'><div class='posttitle'>Room Makeover</div><div class='postdesc'>Room decor tutorial soon!</div><div class='posttags'><a href='#'>#tutorial</a><a href='#'>#roomdecor</a></div> </div>");
                		
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else if(filter == "#ootd" || filter == "ootd" || filter == "#superstar" || filter == "superstar"){
                		var div1 = $("<div class='inside1'><img src='/images/8.jpg' class='pic'><div class='posttitle'>Fresh</div><div class='postdesc'>Back at it again</div><div class='posttags'><a href='#'>#ootd</a><a href='#'>#superstar</a></div></div>");
                		
                		$("#middle").html(newDiv);
                        newDiv.html(div1);
                	}else if(filter == "#memories" || filter == "memories"){
                		var div1 = $("<div class='inside1'><img src='/images/9.jpg' class='pic'><div class='posttitle'>Head up</div><div class='postdesc'>Keep it in a photograph.</div><div class='posttags'><a href='#'>#photography</a><a href='#'>#memories</a></div></div>");
                	
                		$("#middle").html(newDiv);
                		newDiv.html(div1);
                	}else{
                		alert("No result for tag search");
                	}
                	
                	func.val("");
                	
                });
                    
            });
        </script>

    </body>
</html>