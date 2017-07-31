

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jquery.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery_002.js"></script> 
<script src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/smooth-sliding-menu.js"></script> 
<script class="include" type="text/javascript" src="js/jquery191.min.js"></script> 
<script class="include" type="text/javascript" src="js/jquery.jqplot.min.js"></script> 
<script src="js/jquery.sparkline.js" type="text/javascript"></script>
<script src="js/jquery.customSelect.min.js" ></script>
<script src="js/sparkline-chart.js"></script>
<script src="js/easy-pie-chart.js"></script>
<script src="js/select-checkbox.js"></script> 
<script src="js/to-do-admin.js"></script> 

<!-- form js -->
<script type='text/javascript' src='js/jquery-1.10.2.min.js'></script> 
<script type='text/javascript' src='js/jqueryui-1.10.3.min.js'></script> 
<script type='text/javascript' src='js/toggle.min.js'></script> 
<script type='text/javascript' src='js/parsley.min.js'></script> 
<script type='text/javascript' src='js/demo-formvalidation.js'></script> 

<!-- file js -->

<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            {% if (file.error) { %}
            <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <p class="size">{%=o.formatFileSize(file.size)%}</p>
            {% if (!o.files.error) { %}
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100"
                 aria-valuenow="0">
                <div class="progress-bar progress-bar-success" style="width:0%;"></div>
            </div>
            {% } %}
        </td>
        <td>
            {% if (!o.files.error && !i && !o.options.autoUpload) { %}
            <button class="btn btn-primary start">
                <i class="icon-upload"></i>
                <span>Start</span>
            </button>
            {% } %}
            {% if (!i) { %}
            <button class="btn btn-warning cancel">
                <i class="icon-ban-circle"></i>
                <span>Cancel</span>
            </button>
            {% } %}
        </td>
    </tr>
    {% } %}
</script>

<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
<span class="preview">
    {% if (file.thumbnailUrl) { %}
        <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img
                src="{%=file.thumbnailUrl%}"></a>
    {% } %}
</span>
        </td>
        <td>
            <p class="name">
                {% if (file.url) { %}
                <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}">
                    {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
            <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
            <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}">{% if
                (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}
                <i class="icon-trash "></i>
                <span>Delete</span>
            </button>
            <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
            <button class="btn btn-warning cancel">
                <i class="icon-ban-circle"></i>
                <span>Cancel</span>
            </button>
            {% } %}
        </td>
    </tr>
    {% } %}
</script>
<script type="text/javascript" src="js/jquery-1.js"></script> 
<script type="text/javascript" src="js/jquery_005.js"></script> 
<script type="text/javascript" src="js/tmpl.js"></script> 
<script type="text/javascript" src="js/load-image.js"></script> 
<script type="text/javascript" src="js/canvas-to-blob.js"></script> 
<script type="text/javascript" src="js/jquery_007.js"></script> 
<script type="text/javascript" src="js/jquery_008.js"></script> 
<script type="text/javascript" src="js/jquery.js"></script> 
<script type="text/javascript" src="js/jquery_004.js"></script> 
<script type="text/javascript" src="js/jquery_010.js"></script> 
<script type="text/javascript" src="js/jquery_003.js"></script> 
<script type="text/javascript" src="js/jquery_002.js"></script> 
<script type="text/javascript" src="js/jquery_006.js"></script> 
<script type="text/javascript" src="js/main.js"></script> 



  <!-- file js ends -->
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
</div>  -->

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
