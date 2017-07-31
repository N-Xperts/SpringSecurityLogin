<!DOCTYPE html>
<html class=" js "><head>
<meta http-equiv="content-type" content="text/html; charset=windows-1252">
<title>Thin Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/thin-admin.css" rel="stylesheet" media="screen">
<link href="css/font-awesome.css" rel="stylesheet" media="screen">
<link href="css/style.css" rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">

<link href="css/demo_page.css" rel="stylesheet">
<link href="css/demo_table.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="container">
  <div class="top-navbar header b-b"> <a data-original-title="Toggle navigation" class="toggle-side-nav pull-left" href="#"><i class="icon-reorder"></i> </a>
    <div class="brand pull-left"> <a href="http://www.riaxe.com/marketplace/thin-admin/index.html"><img src="tbl_files/logo.png" height="33" width="147"></a></div>
    <ul class="nav navbar-nav navbar-right  hidden-xs">
      <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-warning-sign"></i> <span class="badge">5</span> </a>
        <ul class="dropdown-menu extended notification">
          <li class="title">
            <p>You have 5 new notifications</p>
          </li>
          <li> <a href="#"> <span class="label label-success"><i class="icon-plus"></i></span> <span class="message">New user registration.</span> <span class="time">1 mins</span> </a> </li>
          <li> <a href="#"> <span class="label label-danger"><i class="icon-warning-sign"></i></span> <span class="message">High CPU load on cluster #2.</span> <span class="time">5 mins</span> </a> </li>
          <li> <a href="#"> <span class="label label-success"><i class="icon-plus"></i></span> <span class="message">New user registration.</span> <span class="time">10 mins</span> </a> </li>
          <li> <a href="#"> <span class="label label-info"><i class="icon-bullhorn"></i></span> <span class="message">New items are in queue.</span> <span class="time">25 mins</span> </a> </li>
          <li> <a href="#"> <span class="label label-warning"><i class="icon-bolt"></i></span> <span class="message">Disk space to 85% full.</span> <span class="time">35 mins</span> </a> </li>
          <li class="footer"> <a href="#">View all notifications</a> </li>
        </ul>
      </li>
      <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-tasks"></i> <span class="badge">7</span> </a>
        <ul class="dropdown-menu extended notification">
          <li class="title">
            <p>You have 7 pending tasks</p>
          </li>
          <li> <a href="#"> <span class="task"> <span class="desc">Preparing new release</span> <span class="percent">30%</span> </span>
            <div class="progress progress-small">
              <div class="progress-bar progress-bar-info" style="width: 30%;"></div>
            </div>
            </a> </li>
          <li> <a href="#"> <span class="task"> <span class="desc">Change management</span> <span class="percent">80%</span> </span>
            <div class="progress progress-small progress-striped active">
              <div class="progress-bar progress-bar-danger" style="width: 80%;"></div>
            </div>
            </a> </li>
          <li> <a href="#"> <span class="task"> <span class="desc">Mobile development</span> <span class="percent">60%</span> </span>
            <div class="progress progress-small">
              <div class="progress-bar progress-bar-success" style="width: 60%;"></div>
            </div>
            </a> </li>
          <li> <a href="#"> <span class="task"> <span class="desc">Database migration</span> <span class="percent">20%</span> </span>
            <div class="progress progress-small">
              <div class="progress-bar progress-bar-warning" style="width: 20%;"></div>
            </div>
            </a> </li>
          <li class="footer"> <a href="#">View all tasks</a> </li>
        </ul>
      </li>
      <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-envelope"></i> <span class="badge">1</span> </a>
        <ul class="dropdown-menu extended notification">
          <li class="title">
            <p>You have 3 new messages</p>
          </li>
          <li> <a href="#"> <span class="photo"> <img src="tbl_files/profile.png" height="34" width="34"></span> <span class="subject"> <span class="from">John Doe</span> <span class="time">Just Now</span> </span> <span class="text"> Consetetur sadipscing elitr... </span> </a> </li>
          <li> <a href="#"> <span class="photo"><img src="tbl_files/profile.png" height="34" width="34"></span> <span class="subject"> <span class="from">John Doe</span> <span class="time">35 mins</span> </span> <span class="text"> Sed diam nonumy... </span> </a> </li>
          <li> <a href="#"> <span class="photo"><img src="tbl_files/profile.png" height="34" width="34"></span> <span class="subject"> <span class="from">John Doe</span> <span class="time">5 hours</span> </span> <span class="text"> No sea takimata sanctus... </span> </a> </li>
          <li class="footer"> <a href="#">View all messages</a> </li>
        </ul>
      </li>
      <li class="dropdown user  hidden-xs"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-male"></i> <span class="username">John Doe</span> <i class="icon-caret-down small"></i> </a>
        <ul class="dropdown-menu">
          <li><a href="http://www.riaxe.com/marketplace/thin-admin/user_profile.html"><i class="icon-user"></i> My Profile</a></li>
          <li><a href="http://www.riaxe.com/marketplace/thin-admin/fullCalendar.html"><i class="icon-calendar"></i> My Calendar</a></li>
          <li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
          <li class="divider"></li>
          <li><a href="http://www.riaxe.com/marketplace/thin-admin/login.html"><i class="icon-key"></i> Log Out</a></li>
        </ul>
      </li>
    </ul>
    <form class="pull-right">
      <input placeholder="Search..." class="search" id="search-input" type="search">
    </form>
  </div>
</div>
<div class="wrapper">
  <div class="left-nav">
    <div id="side-nav">
      <ul id="nav">
        <li> <a href="http://www.riaxe.com/marketplace/thin-admin/index.html"> <i class="icon-dashboard"></i> Dashboard </a> </li>
        <li> <a href="#"> <i class="icon-desktop"></i> UI Features <span class="label label-info pull-right">7</span> <i class="arrow icon-angle-left"></i></a>
          <ul class="sub-menu">
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/buttons.html"> <i class="icon-angle-right"></i> Buttons </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/tabs.html"> <i class="icon-angle-right"></i> Tabs</a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/accordions.html"> <i class="icon-angle-right"></i> Accordions </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/nestable.html"> <i class="icon-angle-right"></i> Nestable List </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/grid.html"> <i class="icon-angle-right"></i> Grid </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/dialogs.html"> <i class="icon-angle-right"></i> Dialogs </a> </li>
          </ul>
        </li>
        <li> <a href="#"> <i class="icon-edit"></i> Forms <span class="label label-info pull-right">4</span> <i class="arrow icon-angle-left"></i></a>
       	 <ul class="sub-menu">
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/form_elements.html"> <i class="icon-angle-right"></i> Form Elements </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/form_validation.html"> <i class="icon-angle-right"></i> Form Validation</a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/form_masks.html"> <i class="icon-angle-right"></i> Form Masks </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/wizard.html"> <i class="icon-angle-right"></i> Form Wizard </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/multipleFile_upload.html"> <i class="icon-angle-right"></i> Multiple File Upload </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/dropzone_upload.html"> <i class="icon-angle-right"></i> Dropzone File Upload </a> </li>
          </ul>
        </li>
        <li> <a href="#"> <i class="icon-table"></i> Tables <span class="label label-info pull-right">2</span> <i class="arrow icon-angle-left"></i></a> 
        <ul class="sub-menu opened">
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/static_table.html"> <i class="icon-angle-right"></i> Static </a> </li>
            <li class="current"> <a href="http://www.riaxe.com/marketplace/thin-admin/dynamic_table.html"> <i class="icon-angle-right"></i> Dynamic </a> </li>
          </ul>
        </li>        
        <li> <a href="http://www.riaxe.com/marketplace/thin-admin/chart.html"> <i class="icon-bar-chart"></i> Charts &amp; Statistics </a> </li>
        <li> <a href="#"> <i class="icon-flag"></i> Fontawesome <span class="label label-info pull-right">2</span> <i class="arrow icon-angle-left"></i></a>
          <ul class="sub-menu">
          	<li> <a href="http://www.riaxe.com/marketplace/thin-admin/icons-new.html"> <i class="icon-angle-right"></i> New-Icons </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/icons.html"> <i class="icon-angle-right"></i> Icons </a> </li>
          </ul>
        </li>
        <li> <a href="http://www.riaxe.com/marketplace/thin-admin/gallery.html"> <i class="icon-picture"></i> Gallery </a> </li>
        <li> <a href="http://www.riaxe.com/marketplace/thin-admin/timeline.html"> <i class="icon-time"></i> Timeline </a> </li>
        <li> <a href="#"> <i class="icon-folder-open-alt"></i> Pages <span class="label label-info pull-right">5</span> <i class="arrow icon-angle-left"></i></a>
          <ul class="sub-menu">
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/login.html"> <i class="icon-angle-right"></i> Login </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/user_profile.html"> <i class="icon-angle-right"></i> User Profile </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/mailbox.html"> <i class="icon-angle-right"></i> Mailbox </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/fullCalendar.html"> <i class="icon-angle-right"></i> Calendar </a> </li>
            <li> <a href="http://www.riaxe.com/marketplace/thin-admin/404-page.html"> <i class="icon-angle-right"></i> 404-page </a> </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
  <div class="page-content">
    <div class="content container">
      <div class="row">
        <div class="col-lg-12">
          <h2 class="page-title">Dynamic Tables <small>Asynchronously loaded content</small></h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="widget">
            <div class="widget-header"> <i class="icon-table"></i>
              <h3>DataTable with Sorting</h3>
            </div>
            <div class="widget-content">
         
<div class="example_alt_pagination">
      <div id="container">
        <div class="full_width big"></div>
  <div id="demo">
    <div id="example_wrapper" class="dataTables_wrapper" role="grid"><div class="dataTables_length" id="example_length"><label>Show <select aria-controls="example" size="1" name="example_length"><option selected="selected" value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div><div id="example_filter" class="dataTables_filter"><label>Search: <input aria-controls="example" type="text"></label></div><table aria-describedby="example_info" class="display dataTable" id="example" border="0" cellpadding="0" cellspacing="0">
      <thead>
        <tr role="row"><th aria-label="Rendering engine: activate to sort column descending" aria-sort="ascending" style="width: 158px;" colspan="1" rowspan="1" aria-controls="example" tabindex="0" role="columnheader" class="sorting_asc">Rendering engine</th><th aria-label="Browser: activate to sort column ascending" style="width: 219px;" colspan="1" rowspan="1" aria-controls="example" tabindex="0" role="columnheader" class="hidden-xs sorting">Browser</th><th aria-label="Platform(s): activate to sort column ascending" style="width: 200px;" colspan="1" rowspan="1" aria-controls="example" tabindex="0" role="columnheader" class="hidden-xs sorting">Platform(s)</th><th aria-label="Engine version: activate to sort column ascending" style="width: 134px;" colspan="1" rowspan="1" aria-controls="example" tabindex="0" role="columnheader" class="sorting">Engine version</th><th aria-label="CSS grade: activate to sort column ascending" style="width: 95px;" colspan="1" rowspan="1" aria-controls="example" tabindex="0" role="columnheader" class="sorting">CSS grade</th></tr>
        </thead>
      
      <tfoot>
        <tr><th colspan="1" rowspan="1"> </th><th colspan="1" rowspan="1"></th><th colspan="1" rowspan="1"></th><th colspan="1" rowspan="1"></th><th colspan="1" rowspan="1"></th></tr>
        </tfoot>
  <tbody aria-relevant="all" aria-live="polite" role="alert"><tr class="gradeA odd">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Firefox 1.0</td>
          <td class="hidden-xs ">Win 98+ / OSX.2+</td>
          <td class="center ">1.7</td>
          <td class="center ">A</td>
          </tr><tr class="gradeA even">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Firefox 1.5</td>
          <td class="hidden-xs ">Win 98+ / OSX.2+</td>
          <td class="center ">1.8</td>
          <td class="center ">A</td>
          </tr><tr class="gradeA odd">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Firefox 2.0</td>
          <td class="hidden-xs ">Win 98+ / OSX.2+</td>
          <td class="center ">1.8</td>
          <td class="center ">A</td>
          </tr><tr class="gradeA even">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Firefox 3.0</td>
          <td class="hidden-xs ">Win 2k+ / OSX.3+</td>
          <td class="center ">1.9</td>
          <td class="center ">A</td>
          </tr><tr class="gradeA odd">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Camino 1.0</td>
          <td class="hidden-xs ">OSX.2+</td>
          <td class="center ">1.8</td>
          <td class="center ">A</td>
          </tr><tr class="gradeA even">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Camino 1.5</td>
          <td class="hidden-xs ">OSX.3+</td>
          <td class="center ">1.8</td>
          <td class="center ">A</td>
          </tr><tr class="gradeA odd">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Netscape 7.2</td>
          <td class="hidden-xs ">Win 95+ / Mac OS 8.6-9.2</td>
          <td class="center ">1.7</td>
          <td class="center ">A</td>
          </tr><tr class="gradeA even">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Netscape Browser 8</td>
          <td class="hidden-xs ">Win 98SE+</td>
          <td class="center ">1.7</td>
          <td class="center ">A</td>
          </tr><tr class="gradeA odd">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Netscape Navigator 9</td>
          <td class="hidden-xs ">Win 98+ / OSX.2+</td>
          <td class="center ">1.8</td>
          <td class="center ">A</td>
          </tr><tr class="gradeA even">
          <td class="  sorting_1">Gecko</td>
          <td class="hidden-xs ">Mozilla 1.0</td>
          <td class="hidden-xs ">Win 95+ / OSX.1+</td>
          <td class="center ">1</td>
          <td class="center ">A</td>
          </tr></tbody></table><div id="example_info" class="dataTables_info">Showing 1 to 10 of 57 entries</div><div id="example_paginate" class="dataTables_paginate paging_full_numbers"><a id="example_first" tabindex="0" class="first paginate_button paginate_button_disabled">First</a><a id="example_previous" tabindex="0" class="previous paginate_button paginate_button_disabled">Previous</a><span><a tabindex="0" class="paginate_active">1</a><a tabindex="0" class="paginate_button">2</a><a tabindex="0" class="paginate_button">3</a><a tabindex="0" class="paginate_button">4</a><a tabindex="0" class="paginate_button">5</a></span><a id="example_next" tabindex="0" class="next paginate_button">Next</a><a id="example_last" tabindex="0" class="last paginate_button">Last</a></div></div>
    </div>
        
        
      
        </div>
    </div>
    
    
            </div>
          </div>
        </div>
      </div>
      
      
      
      
      
    </div>
  </div>
</div>
<div class="bottom-nav footer"> 2013 \A9 Thin Admin by Riaxe Systems. </div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jquery_002.js"></script> 
<script src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/smooth-sliding-menu.js"></script>


<script type="text/javascript" language="javascript" src="js/jquery_002.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').dataTable( {
					"sPaginationType": "full_numbers"
				} );
			} );
		</script>

<!--switcher html start-->
<!-- <div class="demo_changer active" style="right: 0px;">
                <div class="demo-icon"></div>
                <div class="form_holder">
                        

                    <div class="predefined_styles">
                        <a class="styleswitch" rel="a" href=""><img alt="" src="images/a.jpg"></a>	
                        <a class="styleswitch" rel="b" href=""><img alt="" src="images/b.jpg"></a>
                        <a class="styleswitch" rel="c" href=""><img alt="" src="tbl_files/c.jpg"></a>
                        <a class="styleswitch" rel="d" href=""><img alt="" src="tbl_files/d.jpg"></a>
                        <a class="styleswitch" rel="e" href=""><img alt="" src="tbl_files/e.jpg"></a>
                        <a class="styleswitch" rel="f" href=""><img alt="" src="tbl_files/f.jpg"></a>
                        <a class="styleswitch" rel="g" href=""><img alt="" src="tbl_files/g.jpg"></a>
                        <a class="styleswitch" rel="h" href=""><img alt="" src="tbl_files/h.jpg"></a>
                        <a class="styleswitch" rel="i" href=""><img alt="" src="tbl_files/i.jpg"></a>
                        <a class="styleswitch" rel="j" href=""><img alt="" src="tbl_files/j.jpg"></a>
                    </div>
					                    
                </div>
            </div>
             -->
            
    <!--switcher html end-->
<script src="tbl_files/switcher.js"></script> 
<script src="tbl_files/moderziner.js"></script> 
<link href="tbl_files/switcher.css" rel="stylesheet">
<link href="tbl_files/switcher-defult.css" rel="stylesheet">
<link rel="alternate stylesheet" type="text/css" href="css/a.css" title="a" media="all">
<link rel="alternate stylesheet" type="text/css" href="css/b.css" title="b" media="all">
<link rel="alternate stylesheet" type="text/css" href="css/c.css" title="c" media="all">
<link rel="alternate stylesheet" type="text/css" href="css/d.css" title="d" media="all">
<link rel="alternate stylesheet" type="text/css" href="css/e.css" title="e" media="all">
<link rel="alternate stylesheet" type="text/css" href="css/f.css" title="f" media="all">
<link rel="alternate stylesheet" type="text/css" href="css/g.css" title="g" media="all">
<link rel="alternate stylesheet" type="text/css" href="css/h.css" title="h" media="all">
<link rel="alternate stylesheet" type="text/css" href="csss/i.css" title="i" media="all">
<link rel="alternate stylesheet" type="text/css" href="css/j.css" title="j" media="all">



</body></html>
