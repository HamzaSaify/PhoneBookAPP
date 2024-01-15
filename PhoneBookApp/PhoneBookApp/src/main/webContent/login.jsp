<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="component/allCss.jsp"%>

</head>
<body style="background-color: #f7faf8">

<%@include file="component/navabr.jsp" %>	
	
	
	
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<h4 class="test-center text-success">Login Page</h4>


						<%
						String inavlidMsg = (String) session.getAttribute("inavlidMsg");
						if (inavlidMsg != null) {
						%>
						<p class="text-danger text-center"><%=inavlidMsg%></p>
						<%
						session.removeAttribute("inavlidMsg");
						}
						%>
						
							<%
						String logMsg = (String) session.getAttribute("logMsg");
						if (logMsg != null) {
						%>
						<p class="text-success text-center"><%=logMsg%></p>
						<%
						session.removeAttribute("logMsg");
						}
						%>





						<form action="login" method="post">






							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="password" type="password" class="form-control"
									id="exampleInputPassword1">
							</div>

							<!-- checkkarna yhnpe errorasakti h div ki vjh se -->
							<div class="text-center mt-2">

								<button type="submit" class="btn btn-primary">Login</button>
							</div>



						</form>


					</div>
				</div>
			</div>
		</div>
	</div>



	<div style="margin-top: 135px">
		<%@include file="component/footer.jsp"%>
	</div>


</body>
</html>