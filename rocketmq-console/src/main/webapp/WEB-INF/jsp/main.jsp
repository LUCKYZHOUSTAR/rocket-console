<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<title>Cluster:list</title>
</head>
<body role="document">
	<%@ include file="main.jsp"%>
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
</body>
</html>
