<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Full-width images with number text -->

	<div class="slidecontainer">

		<c:forEach items="${list}" var="one" varStatus="status">
			<c:forTokens var="one2" items="${one.itinerary_places}" delims=",">
				<c:choose>
					<c:when test="${status.count eq 1 or n eq 4 or n eq 7}">
						<div class="mySlides" style="display: block;">
							<img src="resources/images/our-work/img-${one2}.jpg"
								style="width: 100%">
						</div>
					</c:when>
					<c:otherwise>
						<div class="mySlides">
							<img src="resources/images/our-work/img-${one2}.jpg"
								style="width: 100%">
						</div>
					</c:otherwise>
				</c:choose>
			</c:forTokens>
		</c:forEach>

		<!-- Next and previous buttons -->
		<a class="prev" onclick="plusSlides(-1)" id="">&#10094;</a> <a
			class="next" onclick="plusSlides(1)">&#10095;</a>

		<!-- Image text -->
		<div class="caption-container">
			<p id="caption"></p>
		</div>

		<!-- Thumbnail images -->
		<div class="slidrow">
			<c:forEach items="${list}" var="one" varStatus="status">
				<c:forTokens var="one2" items="${one.itinerary_places}" delims=",">
					<div class="column">
						<img class="demo cursor"
							src="resources/images/our-work/img-${one2}.jpg"
							style="width: 100%" onclick="currentSlide(${status.count})"
							alt="${one.itinerary_title}">
					</div>
				</c:forTokens>
			</c:forEach>
		</div>
	</div>
	<br>
	<br>
<c:forEach items="${list}" var="one">

</c:forEach>