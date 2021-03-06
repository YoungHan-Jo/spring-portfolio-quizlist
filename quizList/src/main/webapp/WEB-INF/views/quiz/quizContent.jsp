<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/include/head.jsp" />
<link rel="stylesheet" type="text/css" href="/resources/css/quiz.css">
</head>
<body>
	<!-- Header -->
	<jsp:include page="/WEB-INF/views/include/topMenu.jsp"/>
	<!-- End Header -->

	<main id="main">
		<div id="head">
			<div class="container">
				<h1 id="title">QUIZ 풀기</h1>
				<div id="btn-return-form">
					<button class="btn-quiz return" onclick="location.href='/quiz/list'">목록으로 돌아가기</button>
					
					<c:if test="${ id eq bunch.memberId || id eq 'admin' }">
						<button class="btn-quiz modify" onclick="location.href='/quiz/modify?bunchNum=${ bunch.num }'">수정</button>
						<button class="btn-quiz delete" id="btn-delete" onclick="location.href='/quiz/delete?bunchNum=${ bunch.num }'">삭제</button>					
					</c:if>
				</div>	
			</div>
		</div>
		<div id="body">
			<div class="container">
				<h2 class="quiz-title">${ bunch.title }</h2>
				<form action="/quiz/submit?bunchNum=${ bunch.num }" method="POST">
					<c:forEach var="quiz" items="${ quizList }">
						<div style="border : 1px soild black">
							<h4 class="question">${ quiz.questionNum }. ${ quiz.question }</h4>
							<p><input type="radio" name="reply${ quiz.questionNum }" value="1" required>1번 ${ quiz.numOne }</p>
							<p><input type="radio" name="reply${ quiz.questionNum }" value="2" required>2번 ${ quiz.numTwo }</p>
							<p><input type="radio" name="reply${ quiz.questionNum }" value="3" required>3번 ${ quiz.numThree }</p>
							<p><input type="radio" name="reply${ quiz.questionNum }" value="4" required>4번 ${ quiz.numFour }</p>
						</div>
						<br>
					</c:forEach>
					<div id="btn-submit-form">
						<button class="btn-quiz submit">제출하기</button>
					</div>
				</form>
			</div>
		</div>
	</main>

	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- End Footer -->


	<script>
		
	</script>

</body>
</html>