<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cube.jsp</title>
<style type="text/css">
@font-face{
font-family:'DNFBitBitv2';
font-style:normal;font-weight:400;src:url('//cdn.df.nexon.com/img/common/font/DNFBitBitv2.otf')format('opentype')}
body {
	margin: 100px;
	background-color: #FCDEAB;
	display: flex;
 	flex-direction: column;
    justify-content: center;
	justify-content: center;
    align-items: center;
}


</style>
</head>
<body>
<hr>
<h1 id="heading">문의게시판</h1>

<div class="container">
		<div class="row">
		<form method="post" action="writeAction.jsp">
			<table class="table_striped" style="text-align: center; border: 1px solid #00000; ">
				<thead>
					<tr>
						<th  colspan="2" style="background-color: #eeeeee; text-align: center;">번호</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="글 제목" name="dbsTitle" maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="글 내용" name="dbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
					</tr>
				</tbody>
			</table>
				<input type="submit" class="btn-primary" value="글쓰기">
		</form>
		</div>
	</div>
</body>
</html>