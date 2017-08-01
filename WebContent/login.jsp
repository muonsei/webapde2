<html>
    <head>
        <title>Login | stumblr</title>
        <style>
        	@font-face {
			    font-family: naviFontR;
			    src: url(fonts/cinematografica/Cinematografica-Regular-trial.ttf);
			}
			
			@font-face {
			    font-family: naviFontB;
			    src: url(fonts/source-sans-pro/SourceSansPro-Regular.otf);
			}
			
			body{
			    margin:0px;
			}
			
			nav{
			    position:fixed;
			    top:0;
			    width:100%;
			    height:10%;
			    color:white;
			    font-family: sans-serif;
			    background-color:#74828F;
			    text-align: center;
			    z-index: 100;
			}
			
			#login{
			    position: relative;
			    top: 10px;
			    left: 275px;
			}
			
			#user1{
			    font-size: 12px;
			    width: 150px;
			}
			
			#pass1{
			    position: relative;
			    left: 10;
			    font-size: 12px;
			    width: 150px;
			}
			
			#submit1{
			    position: relative;
			    width: 75px;
			    left: 135;
			    font-size: 18px;
			    border-width: 0px;
			    background-color: transparent;
			    color: white;
			    transition: all 600ms ease-in-out;
			    -webkit-transition: all 600ms ease-in-out;
			    -moz-transition: all 600ms ease-in-out;
			    -o-transition: all 600ms ease-in-out;
			}
			
			#submit1:hover{
			    background-color:#FEF6EB;
			    color: #74828F;
			    border-radius: 5px;
			}
			
			#mainleft{
			    background-color: #81bfb2;
			    width: 40%;
			    height: 100%;
			    margin: 0px;
			    display: inline-block;
			    position: absolute;
			}
			
			#mainright{
			    background-color:#FEF6EB;
			    position: absolute;
			    width: 60%;
			    height: 100%;
			    margin: 0px;
			    display: inline-block;
			    left: 40%;
			}
			
			#user2{
			    display: block;
			    width: 300px;
			    font-size: 20px;
			    font-family: sans-serif;
			    border-top: 0;
			    border-right: 0;
			    border-left: 0;
			    background-color: transparent;
			    border-bottom: 1.5px solid white;
			    font-style: italic;
			}
			
			#pass2{
			    position: relative;
			    display: block;
			    top: 20;
			    width: 300px;
			    font-size: 20px;
			    font-family: sans-serif;
			    border-top: 0;
			    border-right: 0;
			    border-left: 0;
			    background-color: transparent;
			    border-bottom: 1.5px solid white;
			    font-style: italic;
			}
			
			#shortdesc{
			    position: relative;
			    display: block;
			    top: 30;
			    width: 400px;    
			    font-size: 20px;
			    font-family: sans-serif;
			    border-top: 0;
			    border-right: 0;
			    border-left: 0;
			    background-color: transparent;
			    min-height: 100px;
			    max-height: auto;
			    border-bottom: 1.5px solid white;
			    font-style: italic;
			}
			
			#submit2{
			    position: relative;
			    display: block;
			    top: 40;
			    width: 100px;
			    height: 100px;
			    left: 300;
			    font-size: 20px;
			}
			
			.signupform{
			    position: relative;
			    top: 150px;
			    left: 50px;
			}
			
			.signup{
			    font-family: sans-serif;
			    font-style: italic;
			    color: white;
			    margin-bottom: 50px;
			    font-size: 30px;
			}
			
			#remember{
			    position: relative;
			    right: 60;
			}
			
			#rem{
			    display: inline-block;
			    position: relative;
			    font-family: sans-serif;
			    font-size: 12px;
			    right: 60;
			}
			
			.dummypic{
			    width: 150px;
			    height: 150px;
			}
			
			#prevpic{
			    margin-left: 0.5px;
			    margin-top: 95px;
			}
			
			.modal {
			    font-family: naviFontB;
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
			    width: 540px;
			    height: 70%;
			    overflow: auto;
			    text-align: center;
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
			
				.posttitle{
					font-size: 24px;
					font-family: sans-serif;
					font-weight: bold;
					margin-top: 15px;
					color: black;
				}
				
				.postdesc{
					font-size: 18px;
					font-family: sans-serif;
					margin-top: 15px;
					color: black;
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
					color: black;
				}
				
				p{
					margin-top: 2px;
					margin-bottom: 2px;
				}
				
				
				#searchbutton{
					position: relative;
					right: 180px;
				}
				
				.pic{
				    margin-top: 30px;
				    width: 500px;
				    height: 500px;
				}
				
				.loob {
				    width: auto;
				    height: auto;
				    text-align: left;
				    color: black;
				    padding: 4px 20px 4px 20px;
				    margin-top: 25px;
				    margin-left: auto;
				    margin-right: auto;
				}
        </style>
    </head>
    
    <body>
        <nav>
            <div id="login">
            	<form action="login" method="POST">
	                <input type="text" id="user1" name="username" placeholder="Username" required/>
	                <input type="password" id="pass1" name="password" placeholder="Password" required/>
	                <input type="submit" id="submit1" name="login" value="Log In"/>
	                <input type="checkbox" id="remember" value="remember" name="remember"/>
	                <div id="rem">Remember Me</div>
                </form>
            </div>
        </nav>
        <div id="mainleft">
            <div class="signupform">
            	<form action="login" method="POST">
	                <div class="signup">sign up today!</div>
	                <input type="text" id="user2" name="reguser" placeholder="Username" required/>
	                <input type="password" id="pass2" name="regpass" placeholder="Password" required/>
	                <textarea id="shortdesc" name="regdesc" placeholder="Short Description"></textarea>
	                <input type="submit" id="submit2" name="register" value="Register"/>
                </form>
            </div>
        </div>
        <div id="mainright">
            <div id="prevpic">
                <img src="images/1.jpg" class="dummypic">
                <img src="images/10.jpg" class="dummypic">
                <img src="images/11.jpg" class="dummypic">
                <img src="images/12.jpg" class="dummypic">
                <img src="images/13.jpg" class="dummypic">
                <img src="images/14.jpg" class="dummypic">
                <img src="images/15.jpg" class="dummypic">
                <img src="images/17.jpg" class="dummypic">
                <img src="images/18.jpg" class="dummypic">
                <img src="images/19.jpg" class="dummypic">
                <img src="images/20.jpg" class="dummypic">
                <img src="images/21.jpg" class="dummypic">
                <img src="images/22.jpg" class="dummypic">
                <img src="images/23.jpg" class="dummypic">
                <img src="images/24.jpg" class="dummypic">
            </div>
        </div>
        
        <div id="myModal" class="modal">
        
          <div class="modal-content">
            <span class="close">&times;</span>
          </div>
            
        </div>
    
        <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function() {
                
            	/*
                $(".dummypic").click(function(){
                    alert("You currently do not have access to this. Please Log In first.");
                        
                });*/
                
                $(".dummypic").click(function(){
                    var compare = $(this).attr("src");
                    $("#myModal").css("display", "block");
                            
                    for(var j = 1; j <= 24; j++) {
                        var filename = "images/" + j + ".jpg";
                        if(j != 2 || j != 3 || j != 4 || j !=5 || j != 6 || j != 7 || j != 8 || j != 9 || j != 16){
                        	if(compare == filename){                   
                                var full = $("<div class='loob'><img src="+ filename +"><div class='posttitle'>Title</div><div class='postdesc'>Description</div><div class='posttags'><a href='#'>#photography</a><a href='#'>#photo</a></div><div class='postcreds'><div class='uploadby'><p>Uploaded by<a href=''>@randomuser</a></p></div><div class='sharedwith'><p>Shared with public</p></div></div></div>")
                    
                                full.addClass("content")
                                $(".modal-content").html(full);
                            }
                        }
                        
                    }
                        
                });
                
                /*
                $.post("frontPageImage").done(function(data){
					var trueData = JSON.parse(data);
					console.log(data);
					i = trueData.pictures.length - 15;
			        for(; i < trueData.pictures.length; i++)
			        	{
			        	 var img = $("<img src=\"" + trueData.pictures[i] + "\" class= 'dummypic'/>");
			        	 
			        	 <!--var img = $('<img>'); //Equivalent: $(document.createElement('img'))
			        	 img.attr('src', trueData.pictures[i]);
			        	 img.attr('class', "dummypic");
			        	 -->
			        	 console.log(trueData.pictures[i]);
			        	 var his = img.attr("class"); 
			        	 console.log(his); 
			        	 $("#prevpic").append(img);
			        	}
				});*/

                $(".close").click(function(){
                     $("#myModal").css("display", "none");
                });

                $("#myModal").click(function(event){
                     $("#myModal").css("display", "none");
                });
                    
            });
        </script>
    </body>
    
</html>