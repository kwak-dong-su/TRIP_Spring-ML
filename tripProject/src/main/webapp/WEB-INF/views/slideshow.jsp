<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="resources/js/slideshow.js"></script>

<!-- Full-width images with number text -->

<c:forEach items="${list}" var="one" varStatus="status">

		<div class="slidecontainer${status.count}">
			<c:forTokens var="one2" items="${one.itinerary_places}" delims=",">
				<div class="mySlides${status.count}" id="mySlides${status.count}">
					<img src="resources/images/our-work/img-${one2}.jpg"
						style="width: 100%">
				</div>
			</c:forTokens>

			<!-- Next and previous buttons -->
			<a class="prev" onclick="plusSlides(-1,'c${status.count}')" id="">&#10094;</a> <a
				class="next" onclick="plusSlides(1,'c${status.count}')">&#10095;</a>

			<!-- Image text -->
			<div class="caption-container${status.count}">
				<p id="caption${status.count}"></p>
			</div>

			<!-- Thumbnail images -->
			<div class="slidrow">
				<c:forTokens var="one2" items="${one.itinerary_places}" delims="," varStatus="status2">
					<div class="column">
						<img class="demo${status.count} cursor${status.count}"
							src="resources/images/our-work/img-${one2}.jpg"
							style="width: 100%" onclick="currentSlide(${status2.count}, 'c${status.count}')"
							alt="${one.itinerary_title}">
					</div>
				</c:forTokens>
			</div>
		</div>
<br>
<br>
</c:forEach>


