<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>多啦亲子互动平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link  href="${ctx}/admin/css/bootstrap-cerulean.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }
    </style>
    <link href="${ctx}/admin/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="${ctx}/admin/css/charisma-app.css" rel="stylesheet">
    <link href="${ctx}/admin/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
    <link href='${ctx}/admin/css/fullcalendar.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/fullcalendar.print.css' rel='stylesheet'  media='print'>
    <link href='${ctx}/admin/css/chosen.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/uniform.default.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/colorbox.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/jquery.cleditor.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/jquery.noty.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/noty_theme_default.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/elfinder.min.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/elfinder.theme.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/opa-icons.css' rel='stylesheet'>
    <link href='${ctx}/admin/css/uploadify.css' rel='stylesheet'>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="${ctx}/admin/img/logo200.png">

</head>

<body>
<!-- topbar starts -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="brand" href="${ctx}/user/index.do?uid=${user.id}"> <img alt="Charisma Logo" src="${ctx}/admin/img/logo200.png" /> <span>哆啦亲子</span></a>

            <!-- user dropdown starts -->
            <div class="btn-group pull-right" >
                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="icon-user"></i><span class="hidden-phone">  ${user.username}</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <!-- <li><a href="#">Profile</a></li> -->
                    <li class="divider"></li>
                    <li><a href="${ctx}/user/login.do">注销</a></li>
                </ul>
            </div>
            <!-- user dropdown ends -->
        </div>
    </div>
</div>
<!-- topbar ends -->
<div class="container-fluid">
    <div class="row-fluid">

        <div id="content" class="span10">
            <!-- content starts -->
            <div class="box span12">
                <div class="row-fluid sortable">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-user"></i> 增加城市</h2>
                        <div class="box-icon">
                            <a href="${ctx}/city/info.do?uid=${user.id}&pageNo=${pageNo}" class="btn btn-back btn-round"><i class="icon-remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <form class="form-horizontal" id="vform" action="${ctx}/city/add.do?uid=${user.id}&pageNo=1" method="post">
                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label">城市名称</label>
                                    <div class="controls">
                                        <input class="required" id="name" name="name" type="text" value="" >
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary" id="confirmbtn" name="confirmbtn" >确   定</button>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            <!-- content ends -->
        </div><!--/#content.span10-->
    </div><!--/fluid-row-->

    <footer>
        <p class="pull-left">&copy; <a href="#" target="_blank">开发时间</a> @2015－06-18 </p>
        <p class="pull-right"><a href="#">多啦亲子互动平台</a></p>
    </footer>

</div><!--/.fluid-container-->

<!-- external javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<!-- jQuery -->
<script src="${ctx}/admin/js/jquery-1.7.2.min.js"></script>
<!-- jQuery UI -->
<script src="${ctx}/admin/js/jquery-ui-1.8.21.custom.min.js"></script>
<!-- transition / effect library -->
<script src="${ctx}/admin/js/bootstrap-transition.js"></script>
<!-- alert enhancer library -->
<script src="${ctx}/admin/js/bootstrap-alert.js"></script>
<!-- modal / dialog library -->
<script src="${ctx}/admin/js/bootstrap-modal.js"></script>
<!-- custom dropdown library -->
<script src="${ctx}/admin/js/bootstrap-dropdown.js"></script>
<!-- scrolspy library -->
<script src="${ctx}/admin/js/bootstrap-scrollspy.js"></script>
<!-- library for creating tabs -->
<script src="${ctx}/admin/js/bootstrap-tab.js"></script>
<!-- library for advanced tooltip -->
<script src="${ctx}/admin/js/bootstrap-tooltip.js"></script>
<!-- popover effect library -->
<script src="${ctx}/admin/js/bootstrap-popover.js"></script>
<!-- button enhancer library -->
<script src="${ctx}/admin/js/bootstrap-button.js"></script>
<!-- accordion library (optional, not used in demo) -->
<script src="${ctx}/admin/js/bootstrap-collapse.js"></script>
<!-- carousel slideshow library (optional, not used in demo) -->
<script src="${ctx}/admin/js/bootstrap-carousel.js"></script>
<!-- autocomplete library -->
<script src="${ctx}/admin/js/bootstrap-typeahead.js"></script>
<!-- tour library -->
<script src="${ctx}/admin/js/bootstrap-tour.js"></script>
<!-- library for cookie management -->
<script src="${ctx}/admin/js/jquery.cookie.js"></script>
<!-- calander plugin -->
<script src='${ctx}/admin/js/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='${ctx}/admin/js/jquery.dataTables.min.js'></script>

<!-- chart libraries start -->
<script src="${ctx}/admin/js/excanvas.js"></script>
<script src="${ctx}/admin/js/jquery.flot.min.js"></script>
<script src="${ctx}/admin/js/jquery.flot.pie.min.js"></script>
<script src="${ctx}/admin/js/jquery.flot.stack.js"></script>
<script src="${ctx}/admin/js/jquery.flot.resize.min.js"></script>
<!-- chart libraries end -->

<!-- select or dropdown enhancer -->
<script src="${ctx}/admin/js/jquery.chosen.min.js"></script>
<!-- checkbox, radio, and file input styler -->
<script src="${ctx}/admin/js/jquery.uniform.min.js"></script>
<!-- plugin for gallery image view -->
<script src="${ctx}/admin/js/jquery.colorbox.min.js"></script>
<!-- rich text editor library -->
<script src="${ctx}/admin/js/jquery.cleditor.min.js"></script>
<!-- notification plugin -->
<script src="${ctx}/admin/js/jquery.noty.js"></script>
<!-- file manager library -->
<script src="${ctx}/admin/js/jquery.elfinder.min.js"></script>
<!-- star rating plugin -->
<script src="${ctx}/admin/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="${ctx}/admin/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="${ctx}/admin/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="${ctx}/admin/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="${ctx}/admin/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="${ctx}/admin/js/charisma.js"></script>
<!--验证框架js-->
<script src="${ctx}/admin/js/jquery.validate.js"></script>
<script src="${ctx}/admin/js/messages.js"></script>
<script src="${ctx}/admin/js/messages_zh.js"></script>

<script language="JavaScript">

    $(function() {

        $("#vform").validate();
    });

</script>

</body>
</html>