<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write.jsp</title>
<style type="text/css">
@font-face{
font-family:'DNFBitBitv2';
font-style:normal;font-weight:400;src:url('//cdn.df.nexon.com/img/common/font/DNFBitBitv2.otf')format('opentype')}
@font-face {
font-family: 'UhBeeRami';
src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_five@.2.0/UhBeeRami.woff') format('woff');
font-weight: normal;
font-style: normal;
}
body {
	height: 900px;
	background-color: #FCDEAB;
	display: flex;
 	flex-direction: column;
    justify-content: center;
	justify-content: center;
    align-items: center;
}
#heading{
	margin-top:30px;
	font-family: 'UhBeeRami';
	color: white;
    font-size: 80px;
    text-shadow: 2px 2px #faa821;
}
hr {
  border: none; /* 기본 테두리 제거 */
  border-top: 3px dotted #ffffff; 
  width: 81%; /* 가로 너비 */
  margin: 5px 0; /* 위아래 여백 추가 (선택적) */
  margin-bottom: 30px;
}
#header {
	padding-top: 0px;
	width: 110%;
	padding-left: 17%;
	margin-bottom: 20px;
}
.container {
	margin-bottom: 100px;
}
.btn-primary {
	height: 30px;
	margin-left: -65px;
	background-color:#ffffff; 
	color: #faa821;
	font-weight: bold;
	border: 1px solid #faa821;
	font-size: 15px;
	cursor: pointer;
}
.btn-primary:hover {
	background-color: #faa821;
	color:#ffffff; 
	font-weight: bold;
	border: 1px solid #ffffff;
}
</style>
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("userID") != null) {
	userID = (String)session.getAttribute("userID");
	}
%>

<h1 id="heading">Review</h1>

<div class="container">
		<div class="row">
		<form method="post" action="/board/writeAction">
			<table class="table_striped" style="text-align: center; border: 1px solid #00000; ">
				<tbody style="margin-left: -160px;">
					<tr>
						<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" style=" border: 1px solid #faa821; width: 800px; height: 25px; font-size: 15px;"></td>
						<td><input type="submit" class="btn-primary" value="글쓰기" ></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="border: 1px solid #faa821; width: 865px; height: 350px; margin-left: 65px; font-size: 15px;"></textarea></td>
					</tr>
				</tbody>
			</table>
				
		</form>
		</div>
	</div>
	
	
	<div id="header">
		<hr>
		<p style="margin-left:10px; font-size: 14px; font-weight: bold; color: white;">가득샵<br>
		<span id="Business" style="font-size: 12px;">
		상호명: 가득샵 | 대표: 이소리<br>
		사업자등록번호: 372-05-02494 | 통신판매업 2022-인천계양-0631<br>
		주소: 인천광역시 계양구 경명대로 1058, 302-1336호(계산동)
		</span>
			</p>
	</div>
</body>
</html>