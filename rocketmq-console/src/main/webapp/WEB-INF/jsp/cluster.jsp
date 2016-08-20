<%@page import="java.util.List"%>
<%@page import="com.lucky.rocketmq.common.Table"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@  import="java.util.ArrayList"%>
<%@ import="com.lucky.rocketmq.common.Table" %>
<%
	Table table = (Table) request.getAttribute("table");
	List<Object[]>  objs=table.getTbodyData();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="../../assets/ico/favicon.ico">

<title>Cluster:list</title>

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/theme.css"
	rel="stylesheet">

</head>
<body role="document">
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/">RocketMQ Console</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/rocketmq_console/cluster/list.do">Cluster</a></li>
					<li><a href="/rocketmq_console/topic/list.do">Topic</a></li>
					<li class="dropdown "><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Connection<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a
								href="/rocketmq_console/connection/consumerConnection.do">ConsumerConnection</a></li>
							<li><a
								href="/rocketmq_console/connection/producerConnection.do">ProducerConnection</a></li>
						</ul></li>
					<li class="dropdown "><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Nameserv<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/rocketmq_console/namesrv/updateKvConfig.do">UpdateKvConfig</a></li>
							<li><a href="/rocketmq_console/namesrv/deleteKvConfig.do">DeleteKvConfig</a></li>
							<li><a href="/rocketmq_console/namesrv/getProjectGroup.do">GetProjectGroup</a></li>
							<li><a
								href="/rocketmq_console/namesrv/updateProjectGroup.do">UpdateProjectGroup</a></li>
							<li><a
								href="/rocketmq_console/namesrv/deleteProjectGroup.do">DeleteProjectGroup</a></li>
							<li><a href="/rocketmq_console/namesrv/wipeWritePerm.do">WipeWritePerm</a></li>
						</ul></li>

					<li class="dropdown "><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Message<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/rocketmq_console/message/queryMsgById.do">QueryMsgById</a></li>
							<li><a href="/rocketmq_console/message/queryMsgByKey.do">QueryMsgByKey</a></li>
							<li><a href="/rocketmq_console/message/queryMsgByOffset.do">QueryMsgByOffset</a></li>
						</ul></li>
					<li class="dropdown "><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Broker <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/rocketmq_console/broker/brokerStats.do">BrokerStats</a></li>
							<li><a href="/rocketmq_console/broker/updateBrokerConfig.do">UpdateBrokerConfig</a></li>
						</ul></li>
					<li class="dropdown "><a
						href="/rocketmq_console/offset/resetOffsetByTime.do">Offset</a></li>
					<li class="dropdown "><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Consumer <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/rocketmq_console/consumer/consumerProgress.do">ConsumerProgress</a></li>
							<li><a href="/rocketmq_console/consumer/deleteSubGroup.do">DeleteSubGroup</a></li>
							<li><a href="/rocketmq_console/consumer/updateSubGroup.do">UpdateSubGroup</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<div class="container theme-showcase" role="main">

		<!--changed part begin-->
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>#Cluster Name</th>
					<th>#Broker Detail</th>
				</tr>
			</thead>

			<% 
		 for(int i=0;i<objs.size();i++){
		%>
			<tbody>
				<tr>
					<td><%=objs.get(i)[0]%></td>
					<td>
						<!-- recursive -->
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>#Broker Name</th>
									<th>#Broker Instance</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>broker-a</td>
									<td>
										<!-- recursive -->
										<table class="table table-bordered table-hover">
											<thead>
												<tr>
													<th>#BID</th>
													<th>#Addr</th>
													<th>#Version</th>
													<th>#InTPS</th>
													<th>#OutTPS</th>
													<th>#InTotalYest</th>
													<th>#OutTotalYest</th>
													<th>#InTotalToday</th>
													<th>#OutTotalToday</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>0</td>
													<td>10.200.0.125:10911</td>
													<td>V3_4_6</td>
													<td>0.0</td>
													<td>0.0</td>
													<td>0</td>
													<td>0</td>
													<td>0</td>
													<td>0</td>
												</tr>
											</tbody>
										</table> <!-- properties-->
									</td>
								</tr>
							</tbody>
						</table> <!-- properties-->
					</td>
				</tr>
			</tbody>
		}
		</table>
		<!-- properties-->
		<!--changed part end -->
		<p>
			Powered by <a href="http://getbootstrap.com/" target="_blank">Bootstrap</a>,
			<a href="http://velocity.apache.org/" target="_blank">Velocity</a>, <a
				href="http://www.springsource.org/" target="_blank">Spring</a> etc.
		</p>
	</div>
	<script
		src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/docs.min.js"></script>
</body>
</html>

