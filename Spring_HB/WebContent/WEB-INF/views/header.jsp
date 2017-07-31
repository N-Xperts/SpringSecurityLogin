<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="taglib.jsp"%>   
<!DOCTYPE html>
<html>
<head>
<title>SpringHB</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/thin-admin.css" rel="stylesheet" media="screen">
<link href="css/font-awesome.css" rel="stylesheet" media="screen">
<link href="css/style.css" rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">
<link href="css/demo_page.css" rel="stylesheet">
<link href="css/demo_table.css" rel="stylesheet">
<link href="css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
<link rel="stylesheet" type="text/css" href="css/jquery.css"> 
<style type="text/css">
.user {
  display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
}
</style>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="container">
  <div class="top-navbar header b-b"> <a data-original-title="Toggle navigation" class="toggle-side-nav pull-left" href="#"><i class="icon-reorder"></i> </a>
    <div class="brand pull-left"> <a href="index.html"></a></div>
    <ul class="nav navbar-nav navbar-right  hidden-xs">
      
   
      
     
       <a href='<c:url value="/logout"/>' data-toggle="modal" class="btn btn-danger"> LOGOUT </a> 
    
    </ul>
    
  </div>
</div>