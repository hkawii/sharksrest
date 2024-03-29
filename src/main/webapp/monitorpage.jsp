<%-- 
    Document   : monitorpage
    Created on : Dec 12, 2016, 2:12:50 AM
    Author     : dell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="myclassespackage.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Monitor</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->


   <style>
       #map {
        height: 400px;
        width: 100%;
       }
   </style>


</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
<!--						<li>
							<a href="index.html"><i class="fa fa-home nav_icon"></i>Dashboard</a>
						</li>-->
						<li>
							<a href="#"><i class="fa fa-cogs nav_icon"></i>Manage  <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="${pageContext.request.contextPath}/ManageServlet?goflag=showdrivers">Drivers</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/ManageVehicleServlet?goflag=showvehicles">Vehicles</a>
								</li>
							</ul>
							<!-- /nav-second-level -->
						</li>
                                                <li>
							<a href="${pageContext.request.contextPath}/MonitorServlet"><i class="active fa fa-home nav_icon" ></i>Monitor</a>
						</li>
<!--						<li class="">
							<a href="#"><i class="fa fa-book nav_icon"></i>UI Elements <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="general.html">General<span class="nav-badge-btm">08</span></a>
								</li>
								<li>
									<a href="typography.html">Typography</a>
								</li>
							</ul>
							 /nav-second-level 
						</li>-->
						<li>
							<a href="${pageContext.request.contextPath}/EventServlet"><i class="fa fa-th-large nav_icon"></i>Events </a>
						</li>
<!--						<li>
							<a href="#"><i class="fa fa-envelope nav_icon"></i>Mailbox<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="inbox.html">Inbox <span class="nav-badge-btm">05</span></a>
								</li>
								<li>
									<a href="compose.html">Compose email</a>
								</li>
							</ul>
							 //nav-second-level 
						</li>-->
						<li>
							<a href="${pageContext.request.contextPath}/TripServlet"><i class="fa fa-check-square-o nav_icon"></i>Trips </a>
						</li>
<!--						<li>
							<a href="#"><i class="fa fa-check-square-o nav_icon"></i>Trips</a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="forms.html">Basic Forms <span class="nav-badge-btm">07</span></a>
								</li>
								<li>
									<a href="validation.html">Validation</a>
								</li>
							</ul>
							 //nav-second-level 
						</li>-->
<!--						<li>
							<a href="#"><i class="fa fa-file-text-o nav_icon"></i>Pages<span class="nav-badge-btm">02</span><span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="login.html">Login</a>
								</li>
								<li>
									<a href="signup.html">SignUp</a>
								</li>
								<li>
									<a href="blank-page.html">Blank Page</a>
								</li>
							</ul>
							 //nav-second-level 
						</li>
						<li>
							<a href="charts.html" class="chart-nav"><i class="fa fa-bar-chart nav_icon"></i>Charts <span class="nav-badge-btm pull-right">new</span></a>
						</li>-->
					</ul>
					<div class="clearfix"> </div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="index.html">
						<h1>SHARKS</h1>
						<span>AdminPanel</span>
					</a>
				</div>
				<!--//logo-->
				<!--search-box-->
<!--				<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
						<label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
							</svg>
						</label>
					</form>
				</div>//end-search-box-->
				<div class="clearfix"> </div>
			</div>
			
                    <div class="header-right">
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">
							<a href="${pageContext.request.contextPath}/PendingServlet" class="dropdown-toggle" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">1</span></a>
						</li>	
					</ul>
					<div class="clearfix"> </div>
				</div>
                            
                            <% String servletParam = "showall"; %>
                            <% request.setAttribute(servletParam,servletParam); %>
                            
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/a.png" alt=""> </span> 
									<div class="user-name">
										<p><%= DataClass.currentMM.name %></p>
										<span><%= DataClass.currentMM.position %></span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="${pageContext.request.contextPath}/LoginServlet?goflag=logout"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
                            
                            <h3 class="title1">Monitor</h3>
                            
                            <div class="row-one">
					<div class="col-md-4 widget">
						<div class="stats-left ">
							<h5>Total</h5>
							<h4>Trips</h4>
						</div>
						<div class="stats-right">
							<label><%=(String)request.getAttribute("tripscount")%></label>
						</div>
						<div class="clearfix"> </div>	
					</div>
					<div class="col-md-4 widget states-mdl">
						<div class="stats-left">
							<h5>Total</h5>
							<h4>Drivers</h4>
						</div>
						<div class="stats-right">
							<label><%=(String)request.getAttribute("alldriverscount")%></label>
						</div>
						<div class="clearfix"> </div>	
					</div>
					<div class="col-md-4 widget states-last">
						<div class="stats-left">
							<h5>Total</h5>
							<h4>Clients</h4>
						</div>
						<div class="stats-right">
							<label><%=(String)request.getAttribute("passengerscount")%></label>
						</div>
						<div class="clearfix"> </div>	
					</div>
					<div class="clearfix"> </div>	
				</div>
                            
                            <br/>
                            <div class="row" >
                            <div class="col-md-6 chrt-page-grids">
                                <h4 class="title">Drivers Chart</h4>
                                    <canvas id="doughnut"  style="width:416px; height: 272px; padding-right: 20px;"></canvas>
                            </div>
                           <div class="col-md-6 chrt-page-grids">
						<h4 class="title">Ratting Chart</h4>
						<canvas id="line" style="width:416px; height: 306px; padding-right: 20px;"> </canvas>
					</div>
                            </div>

                            
                            <script>
                                						
    var doughnutData = [
								{
									value: <%=(String)request.getAttribute("onlineDriversCount")%>,
									color:"rgba(242, 179, 63, 1)",
                                                                        label: "Online Drivers"
								},
                                                                {
									value: <%=(String)request.getAttribute("offlineDriversCount")%>,
									color:"rgba(79, 82, 186, 1)",
                                                                        label: "Offline Drivers"
								}
							
							];
new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData);

<% ArrayList<String> tripsids = (ArrayList<String>) request.getAttribute("tripsids"); %>
<% ArrayList<Integer> tripsratings = (ArrayList<Integer>) request.getAttribute("tripsratings"); %>
var labls = [];
var dataa = [];
<% for(int i = 0; i < tripsids.size(); i+=1) { %>
    
    labls.push('<%=tripsids.get(i)%>');
    dataa.push(<%=tripsratings.get(i)%>);
    
<%}%>

var lineChartData = {
									labels : labls,
									datasets : [
										{
												fillColor : "rgba(51, 51, 51, 0)",
                                                                                                strokeColor : "#4F52BA",
                                                                                                pointColor : "#4F52BA",
                                                                                                pointStrokeColor : "#fff",
                                                                                                data : dataa


										}
									]
									
								};
new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);

                            </script>
                                     
                            
                            

                            
                            <br/>
                            
                            
                            
                            
                                                            <% ArrayList<Vehicle> activevehicles = (ArrayList<Vehicle>) request.getAttribute("activevehicles"); %>
                                                             <% ArrayList<Driver> activedrivers = (ArrayList<Driver>) request.getAttribute("activedrivers"); %>

                                                             <h2 style="opacity: 0.1;">   . </h2>
                                                                        <!--map part-->
                
    <input id="pac-input" class="controls" type="text" placeholder="Search Box">
    <div id="map"></div>
    <script>
//      function initMap() {
//        var uluru = {lat: -25.363, lng: 131.044};
//        var map = new google.maps.Map(document.getElementById('map'), {
//          zoom: 11,
//          center: uluru
//        });
//        
//                
//        var image = new google.maps.MarkerImage('pin.png',
//        new google.maps.Size(65, 124),
//        new google.maps.Point(0,0),
//        new google.maps.Point(56, 122)
//    );
//        
//        var marker = new google.maps.Marker({
//          position: uluru,
//          map: map,
//          icon: image,
//          title:"Driver : Nashwa"
//        });
//        
//                
//        var marker2 = new google.maps.Marker({
//          position: {lat: -25.463, lng: 131.044},
//          map: map,
//          icon: image,
//          title:"Driver : Thomas"
//        });
//
//        var marker3 = new google.maps.Marker({
//          position: {lat: -25.465, lng: 131.148},
//          map: map,
//          icon: image,
//          title:"Driver : Youstina"
//        });
//        
//        var marker4 = new google.maps.Marker({
//          position: {lat: -25.461, lng: 131.245},
//          map: map,
//          icon: image,
//          title:"Driver : Heba"
//        });
//        
//        var marker5 = new google.maps.Marker({
//          position: {lat: -25.461, lng: 131.111},
//          map: map,
//          icon: image,
//          title:"Driver : Sarah"
//        });
//        
//        var marker6 = new google.maps.Marker({
//          position: {lat: -25.401, lng: 131.275},
//          map: map,
//          icon: image,
//          title:"Driver : Alaa"
//        });
//        
//        google.maps.event.addListener(marker, 'click', function() {
//        infowindow.open(map,marker);
//      });
//  }
      ////////////////////////////////////////////////////////////
    function initAutocomplete() {
        var uluru = {lat: -33.8688, lng: 151.2195};
        var map = new google.maps.Map(document.getElementById('map'), {
          center: uluru,
          zoom: 14,
          mapTypeId: 'roadmap'
        });
      
        // Create the search box and link it to the UI element.
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        // Bias the SearchBox results towards current map's viewport.
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });

        var markers = [];
        // Listen for the event fired when the user selects a prediction and retrieve
        // more details for that place.
        searchBox.addListener('places_changed', function() {
          var places = searchBox.getPlaces();

          if (places.length == 0) {
            return;
          }

          // Clear out the old markers.
          markers.forEach(function(marker) {
            marker.setMap(null);
          });
          markers = [];

          // For each place, get the icon, name and location.
          var bounds = new google.maps.LatLngBounds();
          places.forEach(function(place) {
            if (!place.geometry) {
              console.log("Returned place contains no geometry");
              return;
            }
            var icon = {
              url: place.icon,
              size: new google.maps.Size(71, 71),
              origin: new google.maps.Point(0, 0),
              anchor: new google.maps.Point(17, 34),
              scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
              map: map,
              icon: icon,
              title: place.name,
              position: place.geometry.location
            }));

            if (place.geometry.viewport) {
              // Only geocodes have viewport.
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }
          });
          map.fitBounds(bounds);
        });
        
        
        //for me
        //initMap();
        
        var image = new google.maps.MarkerImage('pin.png',
        new google.maps.Size(65, 124),
        new google.maps.Point(0,0),
        new google.maps.Point(56, 122)
    );
    
    
<% for(int i = 0; i < activevehicles.size(); i+=1) { %>
        
    new google.maps.Marker({
          position: uluru,
          map: map,
          icon: image,
          title:"Driver : <%=activedrivers.get(i).name %>"
        });
        
        
<% } %>
        
        
        
      }
      
      
      
        
      
    </script>
<!--    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyATc18NoAmLoEZFU9gIbIb8uGpXEbLoTDk&callback=initMap">
    </script>-->

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyATc18NoAmLoEZFU9gIbIb8uGpXEbLoTDk&libraries=places&callback=initAutocomplete"
         async defer></script>
                
                <!--end map part-->
                
                
                
                <br/>
                <h4>Active Vehicles & Drivers</h4>
                <br/>
                	<div class="col-md-12 stats-info widget-shadow">
						<table class="table stats-table ">
							<thead>
								<tr>
                                                                        <th>D</th>
                                                                        <th>Driver Name</th>
									<th>V.ID</th>
                                                                        <th>D.ID</th>
									<th>Vehicle Plate Number</th>
                                                                        
<!--									<th>Options</th>-->
								</tr>
							</thead>
							<tbody>
                                                           
                                                            <% for(int i = 0; i < activevehicles.size(); i+=1) { %>
                                                                
                                                            
								<tr>
                                                                        
                                                                        <th>
                                                                            <div class="chat-left">
                                                                                <img class="img-circle" width="30" height="30" src="images/admin_icon.jpg" alt="">
										<label class="small-badge bg-green"></label>
                                                                            </div>
                                                                        </th>
                                                                        <th><%=activedrivers.get(i).name %></th>
                                                                        <th><%=activevehicles.get(i).ID %></th>
                                                                        <th><%=activedrivers.get(i).id %></th>
                                                                        <th><%=activevehicles.get(i).Plate_number %></th>
                                                                        
                                                                        <th>
<!--                                                                            <a href="${pageContext.request.contextPath}/ManageVehicleServlet?goflag=showvehicle&id=<%=activevehicles.get(i).ID  %>"><span class="label label-primary">   View   </span></a>-->

                                                                            
                                                                        </th>

                                                                </tr>
							     <% } %>
                                                             
							</tbody>
						</table>
                                                            

                                                             
                                                             
					</div>
                
                            
                            
                            
                            
                            
			</div>
		</div>
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2016 Novus Admin Panel. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts</a></p>
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
</body>
</html>
