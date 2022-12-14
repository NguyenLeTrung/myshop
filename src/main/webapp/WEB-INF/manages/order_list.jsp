<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Danh sách đơn hàng</title>
</head>
<body>

	<div id="wrapper">

	<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Danh sách đơn hàng</h1>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">DataTables Advanced Tables</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>Mã đơn hàng</th>
												<th>Tên người đặt</th>
												<th>SĐT</th>
												<th>Mail</th>
												<th>Địa chỉ</th>
												<th>Tổng tiền</th>
												<th>Ngày đặt hàng</th>
												<th>Trạng thái</th>
												<th>Chi tiết</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${listOrder}" var="item">
											<tr>
												<td>${item.orderId}</td>
												<td>${item.orderName}</td>
												<td>${item.phone}</td> 
												<td>${item.mail}</td>
												<td>${item.address}</td>
												<td>${item.totalPrice}</td>
												<td>${item.orderDate}</td>
												<td>${item.statusorder.statusName}</td>
												<td>
													<a class='btn btn-default' href='${pageContext.request.contextPath}/manages/order/OrderItem/${item.orderId}'><i class='fa fa-edit'></i></a>
												</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
									
								</div>
								
							</div>

						</div>
						
					</div>

				</div>

			</div>

		</div>

	</div>

	<script src="${pageContext.request.contextPath}/resources/manages/js/jquery.min.js"></script>

	<script src="${pageContext.request.contextPath}/resources/manages/js/bootstrap.min.js"></script>

	<script src="${pageContext.request.contextPath}/resources/manages/js/metisMenu.min.js"></script>

	<script src="${pageContext.request.contextPath}/resources/manages/js/dataTables/jquery.dataTables.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/manages/js/dataTables/dataTables.bootstrap.min.js"></script>

	<script src="${pageContext.request.contextPath}/resources/manages/js/startmin.js"></script>

	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>
	
</body>
</html>
