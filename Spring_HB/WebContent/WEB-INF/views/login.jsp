<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="taglib.jsp"%>   
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/thin-admin.css" rel="stylesheet" media="screen">
<link href="css/font-awesome.css" rel="stylesheet" media="screen">
<link href="css/style.css" rel="stylesheet">



</head>
<body>
 
<div class="login-logo">
	<img src="images/logo.png" width="147" height="33"> 
    </div>

<div class="widget">
<div class="login-content">
  <div class="widget-content" style="padding-bottom:0;">
  <form method="post" action="<c:url value='j_spring_security_check'/>"  class="no-margin">
                <h3 class="form-title">Login to your account</h3>
                
                <fieldset>
                    <div class="form-group no-margin">
                        <label for="email">UserName</label>

                        <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="icon-user"></i>
                                </span>
                            <input type="text" placeholder="Your Username" name="username" class="form-control input-lg" id="username">
                        </div>

                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>

                        <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="icon-lock"></i>
                                </span>
                            <input type="password" placeholder="Your Password" name="password" class="form-control input-lg" id="password">
                        </div>

                    </div>
                      
                </fieldset>
                 <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
			
								Username and Password dont match
			
						</c:if>
               <div class="form-actions">
				<label class="checkbox">
				<div class="checker"><span><input type="checkbox" value="1" name="remember"></span></div> Remember me
				</label>
				<button class="btn btn-warning pull-right" type="submit">
				Login <i class="m-icon-swapright m-icon-white"></i>
				</button> 
                <div class="forgot"><a href="#" class="forgot">Forgot Username or Password?</a></div>           
			</div>
            
            
            </form>
  
  
  </div>
   </div>
</div>








<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jquery.js"></script> 
<script src="js/bootstrap.min.js"></script> 



 

<!--switcher html start-->
<!-- <div class="demo_changer active" style="right: 0px;">
                <div class="demo-icon"></div>
                <div class="form_holder">
                        

                    <div class="predefined_styles">
                        <a class="styleswitch" rel="a" href=""><img alt="" src="images/a.jpg"></a>	
                        <a class="styleswitch" rel="b" href=""><img alt="" src="images/b.jpg"></a>
                        <a class="styleswitch" rel="c" href=""><img alt="" src="images/c.jpg"></a>
                        <a class="styleswitch" rel="d" href=""><img alt="" src="images/d.jpg"></a>
                        <a class="styleswitch" rel="e" href=""><img alt="" src="images/e.jpg"></a>
                        <a class="styleswitch" rel="f" href=""><img alt="" src="images/f.jpg"></a>
                        <a class="styleswitch" rel="g" href=""><img alt="" src="images/g.jpg"></a>
                        <a class="styleswitch" rel="h" href=""><img alt="" src="images/h.jpg"></a>
                        <a class="styleswitch" rel="i" href=""><img alt="" src="images/i.jpg"></a>
                        <a class="styleswitch" rel="j" href=""><img alt="" src="images/j.jpg"></a>
                    </div>
					                    
                </div>
            </div>
             -->
            
    <!--switcher html end-->
<script src="js/switcher.js"></script> 
<script src="js/moderziner.custom.js"></script> 
<link href="css/switcher.css" rel="stylesheet">
<link href="css/switcher-defult.css" rel="stylesheet">
<link rel="alternate stylesheet" type="text/css" href="css/a.css" title="a" media="all" />
<link rel="alternate stylesheet" type="text/css" href="css/b.css" title="b" media="all" />
<link rel="alternate stylesheet" type="text/css" href="css/c.css" title="c" media="all" />
<link rel="alternate stylesheet" type="text/css" href="css/d.css" title="d" media="all" />
<link rel="alternate stylesheet" type="text/css" href="css/e.css" title="e" media="all" />
<link rel="alternate stylesheet" type="text/css" href="css/f.css" title="f" media="all" />
<link rel="alternate stylesheet" type="text/css" href="css/g.css" title="g" media="all" />
<link rel="alternate stylesheet" type="text/css" href="css/h.css" title="h" media="all" />
<link rel="alternate stylesheet" type="text/css" href="css/i.css" title="i" media="all" />
<link rel="alternate stylesheet" type="text/css" href="css/j.css" title="j" media="all" />

</body>
</html>
