<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid"%>

<rapid:override name="content">
	<div class="content">
		<div class="width1190">
			<div class="contleft">
				<ul class="leftNav">
					<li><a href="about.jsp">关于我们</a></li>
					<li class="leftNavCur"><a href="contact.jsp">联系我们</a></li>
				</ul>
				<!--leftNav/-->
			</div>
			<!--contleft/-->
			<div class="contright">
				<h2 class="rightat">联系我们</h2>
				<div class="about">
					<img src="${pageContext.request.contextPath}/images/about.jpg" /><br />
				</div>
			</div>
			<!--contright/-->
			<div class="clears"></div>
		</div>
		<!--width1190/-->
	</div>
	<!--content/-->
</rapid:override>
<jsp:include page="index.jsp" />
