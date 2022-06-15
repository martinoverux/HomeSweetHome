<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@page import="community.model.dto.KnowhowExt"%>
<%List<KnowhowExt> list = (List<KnowhowExt>) request.getAttribute("list"); %>
<style>
body{font-family: 'Noto Sans KR', sans-serif;}
p{color:#494646; font-size:14px;}
.btn-write{background-color: #00B8F0; border:none;height:40px;width: 134.65px;border:0;outline: none; 
text-align :center;font-size: 16px;color:white;font-weight: bold;border-radius: 8px; margin-bottom: 1.8rem;}
.write-btn{margin-left:72rem;}
a{text-decoration: none; color:#191818; font-size:17px;}
.btn-go{color:#757575; font-weight:bold; font-size:16.5px; background-color: #F5F5F5; border:none; 
border-radius:8%; margin-left:10px; padding:10px;}
#board_top{margin-top:6rem; margin-left:15.9rem;}
.category{ margin-left:25rem; margin-bottom: 50rem; margin-right:2rem;}
.thumbnail:hover{transform: scale(1.03);-webkit-transform: scale(1.03);
-moz-transform: scale(1.03);
  -ms-transform: scale(1.03);
  -o-transform: scale(1.03);
/*   overflow:hidden; */
  }
 .thumbnail{width:225px; display: block; float:left; margin-left:1rem; margin-right: 3rem; border-radius: 8%;}
.thumb_nail{border-radius: 8%;  width:260px; height:242px;}

</style>

<nav id="board_top">
<h2>테마별 노하우</h2>

<input type="button" value="수납" id="btn-go" name="btn-go" class="btn-go"
		onclick="location.href='<%=request.getContextPath()%>/knowhow/knowhowListView?theme=1';"/>
		<input type="button" value="꾸미기팁" id="btn-go" name="btn-go" class="btn-go"
		onclick="location.href='<%=request.getContextPath()%>/knowhow/knowhowListView?theme=2';"/>
		<input type="button" value="생활정보" id="btn-go" name="btn-go" class="btn-go"
		onclick="location.href='<%=request.getContextPath()%>/knowhow/knowhowListView?theme=3';"/>
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
<%@ include file="/WEB-INF/views/common/footer.jsp" %>