<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
import="com.buPayments.model.Student"
%>

    <% 
response.setHeader("Cache-Control","no-store,must-revalidate"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", -1); 
new java.util.Date();
if(session.getAttribute("currentSessionStudent")!=null)
{
    
Student currentUser = (Student)(session.getAttribute("currentSessionStudent"));

%>

        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>devFees</title>

            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
            <link href="assets/css/bootstrap.min.css" rel="stylesheet">
            <link href="assets/css/style.css" rel="stylesheet">

            <style>
                body {
                    box-sizing: border-box;
                    color:white;
                    
                }
                
                h1,h2,h3,h4,h5,h6,th,td{
                	color:white;
                }

                header {
                    background-color: #4B0082;

                }

                .licolor {
                    color: white
                }
                
                .box {
					padding:5px;
    				margin-left: auto;
    				margin-right: auto;
   	 				width: 750px;
    				margin-top: 20px;
    				border:2px solid white;
    				background-color:;
				}
                
               .form-control:focus {
               		border-color:rgba(100,100,100,1)!important;
					-webkit-box-shadow: none!important;
    				-moz-box-shadow: none!important;
    				box-shadow: none!important;
				}
				
											
							*{
           						box-sizing:border-box;
            				}
            				
             				.section1 {
             					background-image: url("images/BUM.jpg");
                				background-repeat: no-repeat;
                				background-size: cover;

           					}
           					.cover-img {
                                width: 100%;
                            }

							#notice-board{
								color:white;
								font-size:30px;
								text-align: center;
							}
                          
							.jumbotron.mt-4.mr-5.validity {
   								OPACITY: 0.8;
    							background-color: #151a6b;
    							color: white;
							}
       


                            .css-typing p {
                                margin-left: auto;
                                margin-right: auto;
                                border-right: .15em solid orange;
                                font-family: "Courier";
                                font-size: 25px;
                                white-space: nowrap;
                                overflow: hidden;
                            }

                            .css-typing p:nth-child(1) {
                                width: 32.8em;
                                color: white;
                                background-color: #151a6b;
                                OPACITY: 0.8;
                                padding: 5px;
                                -webkit-animation: type 3s steps(50, end);
                                animation: type 3s steps(50, end);
                                -webkit-animation-fill-mode: forwards;
                                animation-fill-mode: forwards;
                            }

                            .css-typing p:nth-child(2) {
                                width: 13.7em;
                                opacity: 0;
                                color: green;
                                background-color: #151a6b;
                                padding: 5px;
                                -webkit-animation: type2 2s steps(40, end);
                                animation: type2 2s steps(40, end);
                                -webkit-animation-delay: 2s;
                                animation-delay: 3s;
                                -webkit-animation-fill-mode: forwards;
                                animation-fill-mode: forwards;
                            }


                            @keyframes type {
                                0% {
                                    width: 0;
                                }
                                99.9% {
                                    border-right: .15em solid orange;
                                }
                                100% {
                                    border: none;
                                }
                            }

                            @-webkit-keyframes type {
                                0% {
                                    width: 0;
                                }
                                99.9% {
                                    border-right: .15em solid orange;
                                }
                                100% {
                                    border: none;
                                }
                            }

                            @keyframes type2 {
                                0% {
                                    width: 0;
                                }
                                1% {
                                    opacity: 1;
                                }
                                99.9% {
                                    border-right: .15em solid orange;
                                }
                                100% {
                                    opacity: 1;
                                    border: none;
                                }
                            }

                            @-webkit-keyframes type2 {
                                0% {
                                    width: 0;
                                }
                                1% {
                                    opacity: 1;
                                }
                                99.9% {
                                    border-right: .15em solid orange;
                                }
                                100% {
                                    opacity: 1;
                                    border: none;
                                }
                            }

                            @keyframes type3 {
                                0% {
                                    width: 0;
                                }
                                1% {
                                    opacity: 1;
                                }
                                100% {
                                    opacity: 1;
                                }
                            }

                            @-webkit-keyframes type3 {
                                0% {
                                    width: 0;
                                }
                                1% {
                                    opacity: 1;
                                }
                                100% {
                                    opacity: 1;
                                }
                            }

                            @keyframes blink {
                                50% {
                                    border-color: transparent;
                                }
                            }

                            @-webkit-keyframes blink {
                                50% {
                                    border-color: tranparent;
                                }
                            }
          
            </style>

        </head>


        <body>
            <header>
                <nav class="navbar navbar-expand-lg ">
                    <div class="container">
                        <a class="navbar-brand" href="index.jsp">
                            <span class="licolor">Bupayments</span>
                        </a>
                        <button class="navbar-toggler text-white" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-bars"></i>
                        </button>


                        <div class="collapse navbar-collapse" id="basicExampleNav">

                            <ul class="navbar-nav">

                                <li class="nav-item">
                                    <a class="nav-link" href="application_form.jsp">
                                        <span class="licolor">Application</span>
                                    </a>
                                </li>
                            </ul>

                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link waves-effect waves-light" href="stu_profile.jsp">
                                        <span class="licolor">
                                            <%= currentUser.getS_name() %>
                                        </span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link waves-effect waves-light" href="logoutController">
                                        <span class="licolor">Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>


            <script type="text/javascript" src="assets/js/jspdf.js"></script>
            <script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
            <script type="text/javascript" src="assets/js/popper.min.js"></script>
            <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

        </body>

        </html>

        <%   }

else{ %>

            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                <title>devFees</title>

                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
                <link href="assets/css/bootstrap.min.css" rel="stylesheet">
                <link href="assets/css/style.css" rel="stylesheet">
                <link rel="icon" type="image/png" href="images/s_icon.png" />
                
            <link href="assets/css/index_style.css" rel="stylesheet">

                <style>
                    body {
                        box-sizing: border-box;
                    }

                    header {
                        background-color: #4B0082;

                    }

                    .licolor {
                        color: white
                    }
                    

                </style>
            </head>


            <body>
                <header>
                    <nav class="navbar navbar-expand-lg ">
                        <div class="container">
                            <a class="navbar-brand" href="index.jsp">
                                <span class="licolor">Bupayments</span>
                            </a>
                            
                         <button class="navbar-toggler text-white" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-bars"></i>
                        </button>

                            <div class="collapse navbar-collapse" id="basicExampleNav">
                                <ul class="navbar-nav">
                                </ul>
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item">
                                        <a class="nav-link waves-effect waves-light" href="login.jsp">
                                            <span class="licolor">Login</span>
                                        </a>                                     
                                    </li>
                                </ul>                               
                            </div>
                        </div>                      
                    </nav>
                </header>


                <script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
                <script type="text/javascript" src="assets/js/popper.min.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

            </body>

            </html>

            <% }%>