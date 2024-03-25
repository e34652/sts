<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<title>top page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style>
h1 {
	font-size: 18pt;
	font-weight: bold;
	color: gray;
}

body {
	font-size: 13pt;
	color: gray;
	margin: 5px 25px;
}

tr {
	margin: 5px;
}

th {
	padding: 5px;
	color: white;
	background: darkgray;
}

td {
	padding: 5px;
	color: black;
	background: #e0e0ff;
}

.err {
	color: red;
}
</style>
</head>
<body>
	<h1>
		<a href="/">부서-사원</a>
	</h1>
	<hr />
	<table>
		<tr>
			<th>부서번호</th>
			<th>부서이름</th>
			<th>부서위치</th>
		</tr>
		<c:forEach var="dept" items="${DeptList}">
			<tr>
				<td><a href="pressDeptno?deptno=${dept.deptno}">${dept.deptno}</a></td>
				<td>${dept.dname}</td>
				<td>${dept.loc}</td>
			</tr>
		</c:forEach>
	</table>
	<hr />
	<c:if test="${eListByDeptno != null}">
		<table>
			<tr>
				<th>사번</th>
				<th>이름</th>
				<th>직무</th>
				<th>상급자사번</th>
				<th>입사일</th>
				<th>급여</th>
				<th>보너스</th>
				<th>편집</th>
			</tr>
			<c:forEach var="lbd" items="${eListByDeptno}">
				<tr>
					<td>${lbd.empno}</td>
					<td>${lbd.ename}</td>
					<td>${lbd.job}</td>
					<td>${lbd.mgr}</td>
					<td>${lbd.hireDate}</td>
					<td>${lbd.sal}</td>
					<td>${lbd.comm}</td>
					<td>
						<button
							onclick="window.location.href='pressEdit?empno=${lbd.empno}'">수정</button>
						<button
							onclick="window.location.href='pressDelete?empno=${lbd.empno}'">삭제</button>
					</td>
				</tr>

			</c:forEach>
		</table>
	</c:if>
	<hr />
	<c:choose>
		<c:when test="${Emp != null}">
			<form method="post" action="pressUpdate">
				<table>
					<tr>
						<td><label for="empno">사번</label></td>
						<td><input readonly type="text" name="newEmpno"
							value="${Emp.empno}" /></td>
					</tr>
					<tr>
						<td><label for="ename">이름</label></td>
						<td><input type="text" name="newEname" value="${Emp.ename}" /></td>
					</tr>
					<tr>
						<td><label for="job">직무</label></td>
						<td><select name="job">
								<option selected value="${Emp.job}">${Emp.job}</option>
								<option value="Accounting">ACCOUNTING</option>
								<option value="Research">RESEARCH</option>
								<option value="Sales">SALES</option>
								<option value="Operations">OPERATIONS</option>
								<option value="Operations">PRESIDENT</option>
						</select></td>
					</tr>
					<tr>
						<td><label for="mgr">상급자 사번</label></td>
						<td><input type="text" name="newMgr" value="${Emp.mgr}" /></td>
					</tr>
					<tr>
						<td><label for="sal">월급</label></td>
						<td><input type="text" name="newSal" value="${Emp.sal}" /></td>
					</tr>
					<tr>
						<td><label for="comm">보너스</label></td>
						<td><input type="text" name="newComm" value="${Emp.comm}" /></td>
					</tr>
					<tr>
						<td><label for="deptno">부서번호</label></td>
						<td><select name="deptno">
								<option selected value="${Emp.deptno}">${Emp.deptno}</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="수정" /></td>
					</tr>
				</table>
			</form>
		</c:when>

		<c:otherwise>
			<form method="post" action="pressInsert">
				<table>
					<tr>
						<td><label for="empno">사번</label></td>
						<td><input type="text" name="empno" /></td>
					</tr>
					<tr>
						<td><label for="ename">이름</label></td>
						<td><input type="text" name="ename" /></td>
					</tr>
					<tr>
						<td><label for="job">직무</label></td>
						<td><select name="job">
								<option selected value="Accounting">Accounting</option>
								<option value="Research">Research</option>
								<option value="Sales">Sales</option>
								<option value="Operations">Operations</option>
						</select></td>
					</tr>
					<tr>
						<td><label for="mgr">상급자 사번</label></td>
						<td><input type="text" name="mgr" /></td>
					</tr>
					<tr>
						<td><label for="sal">월급</label></td>
						<td><input type="text" name="sal" /></td>
					</tr>
					<tr>
						<td><label for="comm">보너스</label></td>
						<td><input type="text" name="comm" /></td>
					</tr>
					<tr>

						<td><label for="deptno">부서번호</label></td>
						<td><select name="deptno">
								<option selected value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="입력" /></td>
					</tr>
				</table>
			</form>
		</c:otherwise>
	</c:choose>
</body>
</html>