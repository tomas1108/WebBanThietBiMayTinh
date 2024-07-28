<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ------>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />
<!-- Custom styles -->
<link rel="stylesheet" href="css/style.css" />

<!-- Roboto Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap">
Font Awesome
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
Bootstrap core CSS
<link rel="stylesheet"
	href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
Material Design Bootstrap
<link rel="stylesheet"
	href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
Material Design Bootstrap Ecommerce
<link rel="stylesheet"
	href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
<!-- Your custom styles (optional) -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<style>
/* Carousel styling */
#introCarousel, .carousel-inner, .carousel-item, .carousel-item.active {
	height: 100vh;
}

.carousel-item:nth-child(1) {
	background-image:
		url('https://file.hstatic.net/1000026716/file/1_fanpage_cover__1__eddaac6aee0a43839fcde21bd28d1491.png');
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-position: center center;
}

.carousel-item:nth-child(2) {
	background-image:
		url('https://mir-s3-cdn-cf.behance.net/project_modules/1400/f2e0fd133279139.61b9fe8cd8d41.png');
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-position: center center;
}

.carousel-item:nth-child(3) {
	background-image:
		url('https://lh3.googleusercontent.com/ourQbUh5x_qOtLqkqURngvERqVSP9BdSf84gDkdvomg11oZ0QZKBh_uwPeBEOwRkwzxoB9CcH-AwLoN6HZammrdXii52xXxFow=w1920-rw');
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-position: center center;
}

/* Height for devices larger than 576px */
@media ( min-width : 992px) {
	#introCarousel {
		margin-top: -58.59px;
	}
}

.navbar .nav-link {
	color: #fff !important;
}
</style>

</head>
<body class="skin-light" onload="loadAmountCart()">
	<jsp:include page="Menu.jsp"></jsp:include>



	<!-- Carousel wrapper -->
	<div id="introCarousel"
		class="carousel slide carousel-fade shadow-2-strong"
		data-mdb-ride="carousel" style="margin-top: 35px;">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-mdb-target="#introCarousel" data-mdb-slide-to="0"
				class="active"></li>
			<li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
			<li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
		</ol>

		<!-- Inner -->
		<div class="carousel-inner">
			<!-- Single item -->
			<div class="carousel-item active"></div>

			<!-- Single item -->
			<div class="carousel-item"></div>

			<!-- Single item -->
			<div class="carousel-item"></div>
		</div>
		<!-- Inner -->

		<!-- Controls -->
		<a class="carousel-control-prev" href="#introCarousel" role="button"
			data-mdb-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#introCarousel" role="button"
			data-mdb-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>

	<!-- Carousel wrapper -->
	<div class="card-group" style="margin-top: 50px;">
		<div class="card" style="border-style: none;">
			<img style="height: 55px; width: 64px; margin: auto;"
				src="https://th.bing.com/th/id/R.305d6b03db5f76df05a0b481e36a463d?rik=aJTFC0p3OYsIBg&riu=http%3a%2f%2fwww.nhanshiphang.vn%2fwp-content%2fuploads%2f2015%2f11%2fshipper.png&ehk=5LSZVnprfRPnkbsgFuaKoqONr7UUm5%2bL3etCl3URvTo%3d&risl=&pid=ImgRaw&r=0">
			<div class="card-body">
				<h5 class="card-title" style="text-align: center">GIAO HÀNG
					TOÀN QUỐC</h5>
				<p class="card-text" style="text-align: center">Vận chuyển khắp
					Việt Nam</p>
			</div>
		</div>
		<div class="card" style="border-style: none;">
			<img class="card-img-top"
				style="height: 55px; width: 64px; margin: auto;"
				src="https://th.bing.com/th/id/OIP.vutGoH9nSPhx4YjDjpFDrwAAAA?rs=1&pid=ImgDetMain">
			<div class="card-body">
				<h5 class="card-title" style="text-align: center">THANH TOÁN
					KHI NHẬN HÀNG</h5>
				<p class="card-text" style="text-align: center">Nhận hàng tại
					nhà rồi thanh toán</p>
			</div>
		</div>
		<div class="card" style="border-style: none;">
			<img class="card-img-top"
				style="height: 55px; width: 64px; margin: auto;"
				src="https://th.bing.com/th/id/OIP.yd6icQZabCq84w001wt_8AHaHS?rs=1&pid=ImgDetMain">
			<div class="card-body">
				<h5 class="card-title" style="text-align: center">BẢO HÀNH DÀI
					HẠN</h5>
				<p class="card-text" style="text-align: center">Bảo hàng lên đến
					60 ngày</p>
			</div>
		</div>
		<div class="card" style="border-style: none;">
			<img class="card-img-top"
				style="height: 55px; width: 64px; margin: auto;"
				src="https://file.hstatic.net/200000411627/file/doi_tra_5fc6420ffe864418bda9b44af682714f.jpg">
			<div class="card-body">
				<h5 class="card-title" style="text-align: center">ĐỔI HÀNG DỄ
					DÀNG</h5>
				<p class="card-text" style="text-align: center">Đổi hàng thoải
					mái trong 30 ngày</p>
			</div>
		</div>
	</div>


	<div class="container">
		<div class="row" style="margin-top: 25px">
			<h1 style="text-align: center; width: 100%" id="moiNhat">SẢN
				PHẨM MỚI NHẤT</h1>
			<div class="col-sm-12">
				<div id="contentMoiNhat" class="row">
					<c:forEach items="${list8Last}" var="o">
						<div class=" col-12 col-md-6 col-lg-3">
							<div class="card">
								<div class="view zoom z-depth-2 rounded">
									<img class="img-fluid w-100" src="${o.image}"
										alt="Card image cap">

								</div>
								<div class="card-body">
									<h4 class="card-title show_txt">
										<a href="detail?pid=${o.id}" title="View Product">${o.name}</a>
									</h4>
									<p class="card-text show_txt">${o.title}</p>
									<div class="row">
										<div class="col">
											<p class="btn btn-success btn-block">${o.price}$</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

			</div>

		</div>


		<div class="row" style="margin-top: 25px">
			<h1 style="text-align: center; width: 100%" id="linhkien">LINH
				KIỆN MÁY TÍNH</h1>
			<div class="col-sm-12">
				<div id="contentLinhKien" class="row">
					<c:forEach items="${list4LinhKienLast}" var="o">
						<div class="productLinhKien col-12 col-md-6 col-lg-3">
							<div class="card">
								<div class="view zoom z-depth-2 rounded">
									<img class="img-fluid w-100" src="${o.image}"
										alt="Card image cap">
								</div>
								<div class="card-body">
									<h4 class="card-title show_txt">
										<a href="detail?pid=${o.id}" title="View Product">${o.name}</a>
									</h4>
									<p class="card-text show_txt">${o.title}</p>
									<div class="row">
										<div class="col">
											<p class="btn btn-success btn-block">${o.price}$</p>
										</div>

									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<button onclick="loadMoreLinhKien()" class="btn btn-primary">Load
					more</button>
			</div>
		</div>


		<div class="row" style="margin-top: 25px">
			<h1 style="text-align: center; width: 100%" id="phukien">PHỤ
				KIỆN MÁY TÍNH</h1>
			<div class="col-sm-12">
				<div id="contentPhuKien" class="row">
					<c:forEach items="${list4PhuKienLast}" var="o">
						<div class="productPhukien col-12 col-md-6 col-lg-3">
							<div class="card">
								<div class="view zoom z-depth-2 rounded">
									<img class="img-fluid w-100" src="${o.image}"
										alt="Card image cap">
								</div>
								<div class="card-body">
									<h4 class="card-title show_txt">
										<a href="detail?pid=${o.id}" title="View Product">${o.name}</a>
									</h4>
									<p class="card-text show_txt">${o.title}</p>
									<div class="row">
										<div class="col">
											<p class="btn btn-success btn-block">${o.price}$</p>
										</div>

									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<button onclick="loadMorePhuKien()" class="btn btn-primary">Load
					more</button>
			</div>
		</div>


		<div class="row" style="margin-top: 50px">
			<div class="col-sm-12">
				<div id="content" class="row">
					<div class=" col-12 col-md-12 col-lg-6">
						<div class="card-body">
							<h4 class="card-title show_txt"
								style="text-align: center; font-size: 18pt; color: #b57b00;">About US</h4>
							<h2 class="card-title show_txt"
								style="text-align: center; font-size: 24pt;">DOTECH PC</h2>
							<p style="text-align: center;">Uy tín lâu năm chuyên cung cấp
								máy tính để bàn, laptop và các linh kiện điện tử với chất lượng
								đảm bảo và giá tốt nhất tại Hà Nội, tpHCM.</p>
							<p>Bạn đang cần tìm một chiếc máy tính để bàn, laptop hoặc
								các linh kiện điện tử chất lượng cao và hợp thời trang đến từ
								các thương hiệu lớn nhưng lại không đủ hầu bao để sắm được hàng
								chính hãng? Hãy đến với DoTech – nơi bạn thỏa lòng mong ước mà
								chỉ phải chi ra một phần nhỏ so với dòng chính hãng ngoài store
								mà vẫn sắm cho mình được một sản phẩm chất lượng từ rep 1:1 đến
								siêu cấp like auth.</p>
						</div>

					</div>
					<div class=" col-12 col-md-12 col-lg-6">
						<img class="card-img-top"
							src="https://th.bing.com/th/id/R.b40c0312036acb2957d8704b5bf858cc?rik=vFabH6tlyk9%2bWw&pid=ImgRaw&r=0"
							alt="Card image cap">
					</div>
				</div>
			</div>
		</div>





	</div>

	<jsp:include page="Footer.jsp"></jsp:include>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
        
        	 function loadMore() {
                 var amount = document.getElementsByClassName("product").length;
                 $.ajax({
                     url: "/WebBanThietBiMayTinh/load",
                     type: "get", //send it through get method
                     data: {
                         exits: amount
                     },
                     success: function (data) {
                         var row = document.getElementById("content");
                         row.innerHTML += data;
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
        	 function loadMoreLinhKien() {
                 var amountLinkKien = document.getElementsByClassName("productLinhKien").length;
                 $.ajax({
                     url: "/WebBanThietBiMayTinh/loadLinhKien",
                     type: "get", //send it through get method
                     data: {
                         exitsLinhKien: amountLinkKien
                     },
                     success: function (dataLinhKien) {
                         document.getElementById("contentLinhKien").innerHTML += dataLinhKien;
                         
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
        	 function loadMorePhuKien() {
                 var amountPhuKien = document.getElementsByClassName("productPhuKien").length;
                 $.ajax({
                     url: "/WebBanThietBiMayTinh/loadPhuKien",
                     type: "get", //send it through get method
                     data: {
                         exitsPhuKien: amountPhuKien
                     },
                     success: function (dataPhuKien) {
                         document.getElementById("contentPhuKien").innerHTML += dataPhuKien;
                         
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
             function searchByName(param){
                 var txtSearch = param.value;
                 $.ajax({
                     url: "/WebBanThietBiMayTinh/searchAjax",
                     type: "get", //send it through get method
                     data: {
                         txt: txtSearch
                     },
                     success: function (data) {
                         var row = document.getElementById("content");
                         row.innerHTML = data;
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
             function load(cateid){
             	 $.ajax({
                      url: "/WebBanThietBiMayTinh/category",
                      type: "get", //send it through get method
                      data: {
                          cid: cateid
                      },
                      success: function (responseData) {
                          document.getElementById("content").innerHTML = responseData;
                      }
                  });
             }    
             function loadAmountCart(){
             	 $.ajax({
                      url: "/WebBanThietBiMayTinh/loadAllAmountCart",
                      type: "get", //send it through get method
                      data: {
                          
                      },
                      success: function (responseData) {
                          document.getElementById("amountCart").innerHTML = responseData;
                      }
                  });
             }         
        </script>


	<!-- MDB -->
	<script type="text/javascript" src="js/mdb.min.js"></script>
	<!-- Custom scripts -->
	<script type="text/javascript" src="js/script.js"></script>

	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript"
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
	<!-- MDB Ecommerce JavaScript -->
	<script type="text/javascript"
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
</body>
</html>

