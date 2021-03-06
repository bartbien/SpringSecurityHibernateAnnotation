
<!-- expander stuff -->
<link rel="stylesheet" href="${ pageContext.request.contextPath }/res/expander/css/jqx.base.css" />
<script type="text/javascript" src="${ pageContext.request.contextPath }/res/expander/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/res/expander/js/demos.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/res/expander/js/jqxcore.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/res/expander/js/jqxnavigationbar.js"></script>
<!-- end of expander stuff -->

<script type="text/javascript">
	$(document).ready(function() {
		// Create jqxNavigationBar.
		$("#jqxNavigationBar").jqxNavigationBar({
			width : 250,
			expandMode : 'multiple',
			expandedIndexes : [ 0, 1, 2, 3, 4, 5 ]
		});
	});
</script>

<!-- --------------------------------------------------- -->
<!-- jq expander 								 		 -->
<!-- --------------------------------------------------- -->
<div id="leftColumn">
	<div style='width: 250px;' id='jqxWidget'>
		<div id="jqxNavigationBar">
			<!-- -------------------------   My Work   -------------------------- -->
			<div>
				<div style='margin-top: 2px;'>
					<div style='float: left;'>
						<img alt='Mail' src="${ pageContext.request.contextPath }/res/expander/images/mailIcon.png" />
					</div>
					<div style='margin-left: 4px; float: left;'>My Work</div>
				</div>
			</div>
			<div>
				<ul>
					<li><a href="${ pageContext.request.contextPath }/dashboard" id="header-link">Home Page</a></li>
					<li><a href='#'>Activities</a></li>
					<li><a href='#'>Calendar</a></li>
					<li><a href='#'>Email</a></li>
					<li><a href='#'>..</a></li>
					<li><a href="${ pageContext.request.contextPath }/dashboard/employee/salaryStatsChart">Chart chartjs.org</a></li>
					<li><a href="${ pageContext.request.contextPath }/dashboard/employee/jqxChart">Chart jqx</a></li>
					<li><a href="${ pageContext.request.contextPath }/dashboard/employee/jqxChartXml">Chart jqx xml</a></li>
					<li><a href="${ pageContext.request.contextPath }/dashboard/employee/jqxChartJson">Chart jqx json</a></li>
					<li><a href="${ pageContext.request.contextPath }/dashboard/employee/jqxChartVar">Chart jqx var</a></li>
					<li><a href="${ pageContext.request.contextPath }/dashboard/employee/jqxChartTxt">Chart jqx txt</a></li>
				</ul>
			</div>
			<!-- -------------------------   Customers   -------------------------- -->
			<div>
				<div style='margin-top: 2px;'>
					<div style='float: left;'>
						<img alt='Mail' src="${ pageContext.request.contextPath }/res/expander/images/contactsIcon.png" />
					</div>
					<div style='margin-left: 4px; float: left;'>Customers</div>
				</div>
			</div>
			<div>
				<ul>
					<li><a href='#'>Orders</a></li>
					<li><a href='#'>Constant Clients</a></li>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
				</ul>
			</div>
			<!-- -------------------------   Sales   -------------------------- -->
			<div>
				<div style='margin-top: 2px;'>
					<div style='float: left;'>
						<img alt='Mail' src="${ pageContext.request.contextPath }/res/expander/images/contactsIcon.png" />
					</div>
					<div style='margin-left: 4px; float: left;'>Sales</div>
				</div>
			</div>
			<div>
				<ul>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
				</ul>
			</div>
			<!-- -------------------------   Marketing   -------------------------- -->
			<div>
				<div style='margin-top: 2px;'>
					<div style='float: left;'>
						<img alt='Mail' src="${ pageContext.request.contextPath }/res/expander/images/contactsIcon.png" />
					</div>
					<div style='margin-left: 4px; float: left;'>Marketing</div>
				</div>
			</div>
			<div>
				<ul>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
				</ul>
			</div>
			<!-- -------------------------   Supply   -------------------------- -->
			<div>
				<div style='margin-top: 2px;'>
					<div style='float: left;'>
						<img alt='Mail' src="${ pageContext.request.contextPath }/res/expander/images/notesIcon.png" />
					</div>
					<div style='margin-left: 4px; float: left;'>Supply</div>
				</div>
			</div>
			<div>
				<ul>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
				</ul>
			</div>
			<!-- -------------------------   Human Resource   -------------------------- -->
			<div>
				<div style='margin-top: 2px;'>
					<div style='float: left;'>
						<img alt='Mail' src="${ pageContext.request.contextPath }/res/expander/images/tasksIcon.png" />
					</div>
					<div style='margin-left: 4px; float: left;'>Human Resource</div>
				</div>
			</div>
			<div>
				<ul>
					<li><a href="${ pageContext.request.contextPath }/dashboard/employee/list">Employees</a></li>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
					<li><a href='#'>..</a></li>
					<li><a href="${ pageContext.request.contextPath }/dashboard/popupmenu">JQuery Popup Menu</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
