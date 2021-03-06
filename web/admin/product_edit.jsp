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
                        <h2><i class="icon-user"></i> 修改活动</h2>
                        <div class="box-icon">
                            <a href="${ctx}/product/info.do?uid=${user.id}&pageNo=${pageNo}" class="btn btn-back btn-round"><i class="icon-remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <form class="form-horizontal" id="vform" action="${ctx}/product/edit.do?uid=${user.id}&id=${model.id}&pageNo=${pageNo}" method="post">
                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label">封面大图</label>
                                    <div class="controls">
                                        <c:choose>
                                            <c:when test="${fn:contains(model.cover,'http')}">
                                                <img id="img_a" src="${model.cover}" height="100ps" width="200ps" alt="未上传">
                                            </c:when>
                                            <c:otherwise>
                                                <img id="img_a" src="${filepath}${model.cover}" height="100ps" width="200ps" alt="未上传">
                                            </c:otherwise>
                                        </c:choose><br>
                                        <input id="fileurl" type="file" size="20" name="fileurl" >
                                        <input id="cover" name="cover" type="hidden" value="${model.cover}">
                                        <input id="filepath" name="filepath" type="hidden" value="${filepath}">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">封面小图</label>
                                    <div class="controls">
                                        <c:choose>
                                            <c:when test="${fn:contains(model.thumb,'http')}">
                                                <img id="img_b" src="${model.thumb}" height="100ps" width="200ps" alt="未上传">
                                            </c:when>
                                            <c:otherwise>
                                                <img id="img_b" src="${filepath}${model.thumb}" height="100ps" width="200ps" alt="未上传">
                                            </c:otherwise>
                                        </c:choose><br>
                                        <input id="fileurlth" type="file" size="20" name="fileurlth" >
                                        <input id="thumb" name="thumb" type="hidden" value="${model.thumb}">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">活动标题</label>
                                    <div class="controls">
                                        <textarea id="title" name="title" class="required" rows="3" cols="3">${model.title}</textarea>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">摘要</label>
                                    <div class="controls">
                                        <textarea id="abstracts" name="abstracts" class="required" rows="3" cols="3">${model.abstracts}</textarea>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">适合人群</label>
                                    <div class="controls">
                                        <input class="required" id="crowd" name="crowd" type="text" value="${model.crowd}">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >选择分类</label>
                                    <div class="controls">
                                        <select id="categoryId" name="categoryId">
                                            <c:forEach items="${categorys}" var="node">
                                                <c:choose>
                                                    <c:when test="${node.id == model.categoryId}">
                                                        <option value="${node.id}" selected>${node.name}</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="${node.id}"  >${node.name}</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">选择地址</label>
                                    <div class="controls">
                                        <select id="placeId" name="placeId">
                                            <c:forEach items="${places}" var="node">
                                                <c:choose>
                                                    <c:when test="${node.id == model.placeId}">
                                                        <option value="${node.id}" selected>${node.name}</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="${node.id}"  >${node.name}</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">选择城市</label>
                                    <div class="controls">
                                        <select id="cityId" name="cityId">
                                            <c:forEach items="${citys}" var="node">
                                                <c:choose>
                                                    <c:when test="${node.id == model.cityId}">
                                                        <option value="${node.id}" selected>${node.name}</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="${node.id}"  >${node.name}</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >标签</label>
                                    <div class="controls">
                                        <c:forEach items="${tags}" var="node">
                                            <label class="checkbox inline">
                                                <input type="checkbox" id="tag" name= "tag" value="${node.id}"  <c:if test="${node.checked==1}">checked</c:if>>${node.name}
                                            </label>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >活动时间</label>
                                    <div class="controls">
                                        <input type="text" id="startTime" name="startTime" class="required" readonly value="${model.startTime}" >
                                        <br>至<br>
                                        <input type="text" id="endTime" name="endTime" class="required" readonly value="${model.endTime}" >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >上下线时间</label>
                                    <div class="controls">
                                        <input type="text" id="onlineTime" name="onlineTime" class="required" readonly value="${model.onlineTime}">
                                        <br>至<br>
                                        <input type="text" id="offlineTime" name="offlineTime" class="required" readonly value="${model.offlineTime}">
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
<script src="${ctx}/admin/js/jquery-ui-timepicker-addon.js"></script>
<script src="${ctx}/admin/js/jquery-ui-slide.min.js"></script>

<!--验证框架js-->
<script src="${ctx}/admin/js/jquery.validate.js"></script>
<script src="${ctx}/admin/js/messages.js"></script>
<script src="${ctx}/admin/js/messages_zh.js"></script>

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
<script src="${ctx}/admin/js/ajaxfileupload.js"></script>
<script language="JavaScript">

    $(function() {
        $("#fileurl").change(function(){
            //alert("进入事件...");
            //加载图标
            /* $("#loading").ajaxStart(function(){
             $(this).show();
             }).ajaxComplete(function(){
             $(this).hide();
             });*/
            //上传文件
            $.ajaxFileUpload({
                url:'/upload/img.do',//处理图片脚本
                secureuri :false,
                fileElementId :'fileurl',//file控件id
                dataType : 'text',
                success : function (data, status){
                    var obj = JSON.parse(data);
                    $("#cover").val(obj.path);
                    var pic = $("#filepath").val();
                    $("#img_a").attr("src", pic + obj.path);
                },
                error: function(data, status, e){
                    //alert("e===="+e);
                }
            });
            return false;
        });

        $("#fileurlth").change(function(){
            $.ajaxFileUpload({
                url:'/upload/img.do',
                secureuri :false,
                fileElementId :'fileurlth',
                dataType : 'text',
                success : function (data, status){
                    var obj = JSON.parse(data);
                    $("#thumb").val(obj.path);
                    var pic = $("#filepath").val();
                    $("#img_b").attr("src", pic + obj.path);
                },
                error: function(data, status, e){
                }
            });
            return false;
        });

        $("#vform").validate();

        $('#startTime').datetimepicker({
            dateFormat:'yy-mm-dd',
            timeFormat: 'hh:mm:ss'
        });

        $('#endTime').datetimepicker({
            dateFormat:'yy-mm-dd',
            timeFormat: 'hh:mm:ss'
        });

        $('#onlineTime').datetimepicker({
            dateFormat:'yy-mm-dd',
            timeFormat: 'hh:mm:ss'
        });

        $('#offlineTime').datetimepicker({
            dateFormat:'yy-mm-dd',
            timeFormat: 'hh:mm:ss'
        });

    });

</script>
</body>
</html>