<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/res/table/css/jquery.dataTables.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/res/table/css/shCore.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/res/table/css/demo.css">

	
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/res/table/js/jquery.js"></script> --%>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/res/table/js/jquery.dataTables.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/res/table/js/shCore.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/res/table/js/demoTable.js"></script>


<script type="text/javascript" class="init">

	var linkFirstPart = "<a href=\"${pageContext.request.contextPath}/employee/edit/";
	var linkSecondPart = ">Edit</a>";
	
	$(document).ready(function() {
		$('#example')
			.css('display', 'block')
			.dataTable( {
				"processing": true,
				"serverSide": true,
			    "ajax": '${pageContext.request.contextPath}/dashboard/employee/getEmployers',
			    "columns": [
	                { "data": null },
	               	{ "data": "id" },
	                { "data": "lastName" },
	                { "data": "firstName" },
	                { "data": "position" },
					{ "data": "office" },
					{ "data": "startDate" },
					{ "data": "salary" },
					{ "data": null},
					{ "data": null},
					{ "data": null}
	            ],
				"fnRowCallback" : function(nRow, aData, iDisplayIndex) {
					nRow.innerHTML = "<td><img src=\"test.png\" /></td>"
						+ "<td>" + aData.id + "</td>"
						+ "<td>" + aData.lastName + "</td>"
						+ "<td>" + aData.firstName + "</td>"
						+ "<td>" + aData.position + "</td>"
						+ "<td>" + aData.office + "</td>"
						+ "<td>" + aData.startDate + "</td>"
						+ "<td>" + aData.salary + "</td>"
						+ "<td><a href=\"edit/" + aData.id + "\">Edit</a></td>"
						+ "<td><a href=\"update/" + aData.id + "\">Update</a></td>"
						+ "<td><a href=\"delete/" + aData.id + "\">Delete</a></td>";
					
					return nRow;
				}
			});
	});
</script>



<div class="dt-example">
	<div class="container">
		<table id="example" class="display" style="display: none;" cellspacing="0" width="750px">
			<thead>
				<tr>
					<th></th>
					<th>Id</th>
					<th>Last name</th>
					<th>First name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Start date</th>
					<th>Salary</th>	
					<th>Edit</th>
					<th>Update</th>	
					<th>Delete</th>				
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th></th>
					<th>Id</th>
					<th>Last name</th>
					<th>First name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Start date</th>
					<th>Salary</th>
					<th>Edit</th>
					<th>Update</th>	
					<th>Delete</th>	
				</tr>
			</tfoot>
			<%-- <tbody>
				<c:forEach var="employee" items="${ employees }">
					<tr class="alt">
						<td>${ employee.emplId }</td>
						<td>${ employee.firstName }</td>
						<td>${ employee.lastName }</td>
						<td>${ employee.lastName }</td>
						<td>${ employee.lastName }</td>
						<td>${ employee.lastName }</td>
						<td><a href="${pageContext.request.contextPath}/employee/edit/${employee.emplId}.html">Edit</a>  </td>
						<td><a href="${pageContext.request.contextPath}/employee/delete/${employee.emplId}.html">Delete</a> </td>
					</tr>
				</c:forEach>
			</tbody> --%>
			<tbody></tbody>
		</table>
	</div>
</div>