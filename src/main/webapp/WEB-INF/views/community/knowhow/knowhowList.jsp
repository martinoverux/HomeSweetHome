<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@page import="community.model.dto.KnowhowExt"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/community/knowhowList.css" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%List<KnowhowExt> list = (List<KnowhowExt>) request.getAttribute("list"); %>


<nav id="board_top">
<h2>테마별 노하우</h2>
<input type="button" value="전체" id="btn-storage" name="btn-go" class="btn-go"
		onclick="location.href='<%=request.getContextPath()%>/community/knowhow';"/>
<input type="button" value="수납" id="btn-storage" name="btn-go" class="btn-go"
		onclick="location.href='<%=request.getContextPath()%>/knowhow/knowhowView?theme=15';"/>
		<input type="button" value="꾸미기팁" id="btn-deco" name="btn-go" class="btn-go"
		onclick="location.href='<%=request.getContextPath()%>/knowhow/knowhowView?theme=16';"/>
		<input type="button" value="생활정보" id="btn-tip" name="btn-go" class="btn-go"
		onclick="location.href='<%=request.getContextPath()%>/knowhow/knowhowView?theme=17';"/>
		
	
</nav>
<div class="write-btn">
<input type="button" value="노하우 작성하기" id="btn-write" name="btn-write" class="btn-write"
		onclick="location.href='<%=request.getContextPath()%>/knowhow/knowhowEnroll';"/>
</div>


<div class="category">

			<%
		if (list == null || list.isEmpty()) {
		%>
		<td>등록된 노하우가 없습니다.</td>
		
		<%
		} else {
		for (KnowhowExt kh : list) {
		%>
		<a href="<%=request.getContextPath()%>/knowhow/knowhowListView?no=<%=kh.getNo()%>" class="thumbnail">
		<img src="<%=request.getContextPath()%>/upload/knowhow/<%=kh.getCoverPhoto()%>" class="thumb_nail" >
		<b><%=kh.getTitle()%></b>

		<p><%=kh.getNickName()%> ·
		조회수 <%=kh.getReadCount() %></p>
		</a>
		<%}} %>
</div>

<br>


<script>
/* function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'GET',
		url: "../knowhow/knowhowView",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#knowhow_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
}; */



</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>