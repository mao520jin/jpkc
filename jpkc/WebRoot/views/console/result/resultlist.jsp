<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/views/include/base.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>用户列表 - ${APP_CONSOLE_NAME_CN} - ${APP_NAME_CN}</title>

<jsp:include page="/views/console/include/style.jsp"></jsp:include>
<script type="text/javascript" src="${basePath}/js/result.js"></script>

</head>

<body class="hidecol2">

<jsp:include page="/views/console/include/skiplinks.jsp"></jsp:include>
<jsp:include page="/views/console/include/header.jsp"></jsp:include>
<jsp:include page="/views/console/include/nav.jsp"><jsp:param name="hListActive" value="OperationsManagement" /></jsp:include>

<!-- begin: main content area #main -->
<div id="main"><div class="page_margins"><div class="page">

<!-- begin: #col1 - first float column -->
<div id="col1" role="complementary">
<div id="col1_content" class="clearfix">
<jsp:include page="/views/console/include/vlist.jsp">
	<jsp:param name="vListActive" value="resultList" />
	<jsp:param name="hListActive" value="OperationsManagement" />
</jsp:include>

	</div>
</div>
<!-- end: #col1 -->

<!-- begin: #col2 second float column -->
<div id="col2" role="complementary"><div id="col2_content" class="clearfix">&nbsp;</div></div>
<!-- end: #col2 -->

<!-- begin: #col3 static column -->
<div id="col3" role="main">
	<div id="col3_content" class="clearfix">
		<form method="post" action="${basePath}/result/list" class="yform columnar" role="application">
			<fieldset>
				<div class="subcolumns">
					<div class="c25l">
						<div class="subcl type-text">
							<label for="memberName">用户名：</label><input type="text" name="memberName" id="memberName" size="15" value="${memberName }"/>
						</div>
					</div>
					<div class="c25r">
							<div class="subcr type-button">
									<input type="submit" value="提交查询" class="submit"  />
							</div>
										</div>
					</div>
			</fieldset>
		</form>
		
		
		<table border="0" cellpadding="0" cellspacing="0" class="full">
			<thead><tr><th scope="col" colspan="13">
				<div>
					<jsp:include page="/views/page/page.jsp"/>				
				</div>
			</th></tr></thead>
			<tbody>
				<tr><th scope="col">序号</th><th scope="col">成果者</th><th scope="col">作品简介</th><th scope="col">类型</th><th scope="col">时间</th><th scope="col">操作</th></tr>
				<c:forEach items="${page.content}" var="o" varStatus="status">
				<tr>
				<td>${status.index +1}</td>
				<td>${o.member_name}</td>
				<td>${o.content}</td>
				<td>  
					<c:choose> 
						<c:when test="${o.type eq 1}">主持项目   
						</c:when> 
						<c:when test="${o.type eq 2}">发表论文   
						</c:when> 
						<c:when test="${o.type eq 3}">出版教材   
						</c:when>
						<c:when test="${o.type eq 4}">奖励情况   
						</c:when>
					</c:choose> 
				</td>
				<td>${o.create_time}</td>
				<td>
					<a href="${basePath}/result/edit/${o.id}">编辑</a>         
					<a href="${basePath}/result/del/${o.id}">删除</a>         
				</td>
				 </tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	<div id="ie_clearing">&nbsp;</div>
	<!-- End: IE Column Clearing -->
</div>
<!-- end: #col3 -->

</div></div></div>
<!-- end: #main -->

<jsp:include page="/views/console/include/footer.jsp"></jsp:include>
<jsp:include page="/views/console/include/yamlfocusfix.jsp"></jsp:include>

</body>
</html>

