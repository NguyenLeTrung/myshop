<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Menu</title>
	
	<link href="${pageContext.request.contextPath}/resources/manages/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/manages/css/metisMenu.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/manages/css/timeline.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/manages/css/startmin.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/manages/css/morris.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/manages/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="${pageContext.request.contextPath}/resources/manages/css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/manages/css/dataTables/dataTables.responsive.css" rel="stylesheet">

</head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/manages/home">Admin</a>
        </div>

       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <li><a href="${pageContext.request.contextPath}/home"><i class="fa fa-home fa-fw"></i> Website</a></li>
        </ul>

        <ul class="nav navbar-right navbar-top-links">

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>${sessionScope.myLogin.accountName}<b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>

	<!-- Menu c??c ch???c n??ng -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-primary" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
	                        </span>
                        </div>
                    </li>
                    
                    <!-- Trang ch??? -->
                    <li>
                        <a href="${pageContext.request.contextPath}/manages/home" class="active"><i class="fa fa-dashboard fa-fw"></i> Trang ch???</a>
                    </li>
                    
                    <!-- Danh m???c -->
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i> Danh m???c<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${pageContext.request.contextPath}/manages/category/list">Danh s??ch</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/manages/category/create">T???o m???i danh m???c</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/manages/category/add">T???o m???i danh m???c api</a>
                            </li>
                        </ul>
                    </li>
                    
                    <!-- NSX -->
                    <li>
	                    <a href="#"><i class="fa fa-bank fa-fw"></i> NSX<span class="fa arrow"></span></a>
	                    <ul class="nav nav-second-level">
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/producer/list">Danh s??ch</a>
	                        </li>
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/producer/create">T???o NSX m???i</a>
	                        </li>
	                    </ul>
	                </li>
                    
                    <!-- S???n ph???m -->
                    <li>
	                    <a href="#"><i class="fa fa-mobile fa-fw"></i> S???n ph???m<span class="fa arrow"></span></a>
	                    <ul class="nav nav-second-level">
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/product/list">Danh s??ch s???n ph???m</a>
	                        </li>
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/product/create">Th??m s???n ph???m m???i</a>
	                        </li>
	                        <!-- <li>
	                            <a href="form_import_product.php">Nh???p s??? l?????ng b???ng excel</a>
	                        </li>
	                        <li>
	                            <a href="form_product_file.php">Nh???p s???n ph???m b???ng Excel</a>
	                        </li> -->
	                    </ul>
	                </li>
	                
	                <!-- M??u -->
	                <li>
	                    <a href="#"><i class="fa fa-joomla fa-fw"></i> Color<span class="fa arrow"></span></a>
	                    <ul class="nav nav-second-level">
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/color/list">Danh s??ch</a>
	                        </li>
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/color/create">T???o m??u m???i</a>
	                        </li>
	                    </ul>
	                </li>
	                
	                <!-- Size -->
	                <li>
	                    <a href="#"><i class="fa fa-joomla fa-fw"></i> Size<span class="fa arrow"></span></a>
	                    <ul class="nav nav-second-level">
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/size/list">Danh s??ch</a>
	                        </li>
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/size/create">T???o size m???i</a>
	                        </li>
	                    </ul>
	                </li>
	                
	                <!-- ????n h??ng -->
	                
	                <li>
	                    <a href="${pageContext.request.contextPath}/manages/order/list"><i class="fa fa-cart-plus fa-fw"></i> ????n h??ng</a>
	                </li>
	
	                <!-- Tin t???c -->
	                <li>
	                    <a href="#"><i class="fa fa-edit fa-fw"></i> Tin t???c<span class="fa arrow"></span></a>
	                    <ul class="nav nav-second-level">
	                        <li>
	                            <a href="list_news.php">Danh s??ch</a>
	                        </li>
	                        <li>
	                            <a href="form_news.php">T???o tin t???c m???i</a>
	                        </li>
	                    </ul>
	                </li>
	
	                <!-- Danh s??ch t??i kho???n kh??ch h??ng -->
	                <li>
	                    <a href="#"><i class="fa fa-users fa-fw"></i> Ng?????i d??ng<span class="fa arrow"></span></a>
	                    <ul class="nav nav-second-level">
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/account/list_manages">Danh s??ch ng?????i qu???n tr???</a>
	                        </li>
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/account/list_customer">Danh s??ch ng?????i d??ng</a>
	                        </li>
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/account/create_manages">T???o t??i kho???n qu???n tr???</a>
	                        </li>
	                        <li>
	                            <a href="${pageContext.request.contextPath}/manages/account/reset_account">Reset m???t kh???u t??i kho???n</a>
	                        </li>
	                    </ul>
	                </li>
	                
	                <!-- Ph???n h???i -->
	                <li>
	                    <a href="${pageContext.request.contextPath}/manages/feedback/list"><i class="fa fa-users fa-fw"></i> Ph???n h???i</a>
	                </li>
		                
                </ul>
                
            </div>
            
        </div>
        
    </nav>
    
</body>
</html>