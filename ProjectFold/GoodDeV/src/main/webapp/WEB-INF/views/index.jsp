<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<title>Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">
<link rel="stylesheet" href="/cloud/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/cloud/resources/css/animate.css">
<link rel="stylesheet" href="/cloud/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/cloud/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/cloud/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/cloud/resources/css/aos.css">
<link rel="stylesheet" href="/cloud/resources/css/ionicons.min.css">
<link rel="stylesheet" href="/cloud/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/cloud/resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="/cloud/resources/css/flaticon.css">
<link rel="stylesheet" href="/cloud/resources/css/icomoon.css">
<link rel="stylesheet" href="/cloud/resources/css/style.css">

<!-- script -->
<script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
<script src="/cloud/resources/js/jquery-ui.min.js"></script>
<script>
	function board(){
		window.location.href="/board/Board_list";
	}

</script>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="/cloud/home">MainLogo</a>
		<button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle"
			type="button" data-toggle="collapse" data-target="#ftco-nav"
			aria-controls="ftco-nav" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav nav ml-auto">
				<li class="nav-item" ><a href="/cloud/home" class="nav-link"><span>Home</span></a></li>
				<li class="nav-item"><a href="#about-section" class="nav-link"><span>소개글</span></a></li>
				<li class="nav-item"><a href="/cloud/board/boardListForm" class="nav-link"><span>특허 FAQ</span></a></li>
				<li class="nav-item"><a href="#blog-section" class="nav-link"><span>크라우드
							펀딩</span></a></li>
				<li class="nav-item"><a href="#contact-section"
					class="nav-link"><span>공식 연락처</span></a></li>
				<c:if test="${sessionScope.loginId==null}">
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/gologin" class="nav-link">로그인</a></li>
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/gosign" class="nav-link">회원가입</a></li>
				</c:if>
				<c:if test="${sessionScope.loginId!=null}">
					<li style="margin-left: 20px;" class="nav-item cta"><a
							 class="nav-link">${sessionScope.loginName} ${sessionScope.loginType}님 </a></li>
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/logout" class="nav-link">로그아웃</a></li>
				</c:if>
				
				
			</ul>
		</div>
	</div>
	</nav>

	<section class="hero-wrap js-fullheight"
		style="background-image: url('/cloud/resources/images/bg_1.jpg');"
		data-section="home">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text js-fullheight align-items-center justify-content-end"
			data-scrollax-parent="true">
			<div class="col-md-6 ftco-animate"
				data-scrollax=" properties: { translateY: '70%' }">
				<h1 class="mb-4"
					data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Of
					the CEO, By the CEO, For the CEO.</h1>
				<p class="mb-4"
					data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
					창업자들을 위한 모든 지원이 여기 있습니다.<br>지금 바로 검색해보세요!
				</p>
				<p>
					<a href="#" class="btn btn-primary py-3 px-4">특허 검색하기</a>
				</p>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section ftco-counter ftco-no-pt ftco-no-pb img"
		id="section-counter">
	<div class="container">
		<div class="row d-md-flex align-items-center justify-content-end">
			<div class="col-lg-12">
				<div class="ftco-counter-wrap">
					<div
						class="row no-gutters d-md-flex align-items-center align-items-stretch">
						<div
							class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="flaticon-house"></span>
									</div>
									<strong class="number" data-number="158">0</strong> <span>실제
										창업 성공 건수</span>
								</div>
							</div>
						</div>
						<div
							class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="flaticon-handshake"></span>
									</div>
									<strong class="number" data-number="1087">0</strong> <span>특허
										출원 및 <br>사용 허가 합의 건수
									</span>
								</div>
							</div>
						</div>
						<div
							class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="flaticon-lawyer"></span>
									</div>
									<strong class="number" data-number="564">0</strong> <span>특허
										보유 회원 수</span>
								</div>
							</div>
						</div>
						<div
							class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="flaticon-medal"></span>
									</div>
									<strong class="number" data-number="500">0</strong> <span>실제
										출시 된 상품 건수<!--&amp;-->
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section
		class="ftco-about ftco-no-pt ftco-no-pb img ftco-section bg-light"
		id="about-section">
	<div class="container">
		<div class="row d-flex">
			<div class="col-md-6 col-lg-6 d-flex order-md-last">
				<div class="img-about img d-flex align-items-stretch">
					<div class="img d-flex align-self-stretch align-items-end"
						style="background-image: url(/cloud/resources/images/about.jpg);">
						<a href="https://vimeo.com/45830194"
							class="icon-video popup-vimeo d-flex justify-content-center align-items-center mr-3">
							<span class="ion-ios-play play mr-2"></span> <span class="watch">Watch
								Video</span>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-6 pr-lg-5 py-3 py-lg-5">
				<div class="row justify-content-start py-3 py-lg-5">
					<div class="col-md-12 heading-section ftco-animate">
						<span class="subheading">어서오세요!</span>
						<h2 class="mb-4"
							style="font-size: 44px; text-transform: capitalize;">Welcome
							to Neutral A Law Firm</h2>
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia. It is a paradisematic country,
							in which roasted parts of sentences fly into your mouth.</p>
						<p>Even the all-powerful Pointing has no control about the
							blind texts it is an almost unorthographic life One day however a
							small line of blind text by the name of Lorem Ipsum decided to
							leave for the far World of Grammar.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section
		class="ftco-about ftco-no-pt ftco-no-pb img ftco-section bg-light">
	<div class="container">
		<div class="row d-flex">
			<div class="col-md-6 col-lg-6 d-flex">
				<div class="img-about img d-flex align-items-stretch">
					<div class="img d-flex align-self-stretch align-items-end"
						style="background-image: url(/cloud/resources/images/about-1.jpg);">
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-6 pl-lg-5 py-5">
				<div class="row justify-content-start pb-3">
					<div class="col-md-12 heading-section ftco-animate pb-5">
						<span class="subheading">일상생활 속 발상의 전환</span>
						<h2 class="mb-4"
							style="font-size: 44px; text-transform: capitalize;">실제 특허
							출원 사례 모음</h2>
					</div>
					<div class="col-md-12 testimony-section">
						<div class="owl-carousel carousel-testimony">
							<div class="item">
								<div class="testimony-wrap">
									<div class="text mb-5">
										<div class="icon">
											<span class="icon-quote-left"></span>
										</div>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove right at the
											coast of the Semantics, a large language ocean.</p>
									</div>
									<div class="d-flex">
										<div class="user-img img mr-3"
											style="background-image: url(/cloud/resources/images/person_1.jpg);"></div>
										<div>
											<p class="name mb-0">Luis Fox</p>
											<span class="position">Businessman</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap">
									<div class="text mb-5">
										<div class="icon">
											<span class="icon-quote-left"></span>
										</div>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove right at the
											coast of the Semantics, a large language ocean.</p>
									</div>
									<div class="d-flex">
										<div class="user-img img mr-3"
											style="background-image: url(/cloud/resources/images/person_2.jpg);"></div>
										<div>
											<p class="name mb-0">Luis Fox</p>
											<span class="position">Businessman</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap">
									<div class="text mb-5">
										<div class="icon">
											<span class="icon-quote-left"></span>
										</div>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove right at the
											coast of the Semantics, a large language ocean.</p>
									</div>
									<div class="d-flex">
										<div class="user-img img mr-3"
											style="background-image: url(/cloud/resources/images/person_3.jpg);"></div>
										<div>
											<p class="name mb-0">Luis Fox</p>
											<span class="position">Businessman</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section ftco-no-pb ftco-services"
		id="practice-section">
	<div class="container">
		<div class="row justify-content-center pb-5">
			<div class="col-md-10 heading-section text-center ftco-animate">
				<span class="subheading">남녀노소 누구나</span>
				<h2 class="mb-4">특허에 대한 A to z</h2>
				<p>초보자도 쉽게 이해할 수 있는 특허 관련 FAQ를 모았습니다.</p>
			</div>
		</div>
		<div class="row no-gutters">
			<div class="col-md-5 col-lg-3 ftco-animate py-4 nav-link-wrap">
				<div class="nav flex-column nav-pills" id="v-pills-tab"
					role="tablist" aria-orientation="vertical">
					<a class="nav-link px-4 py-1 active" id="v-pills-1-tab"
						data-toggle="pill" href="#v-pills-1" role="tab"
						aria-controls="v-pills-1" aria-selected="true"><span
						class="mr-3 flaticon-ideas"></span> 특허 검색</a> <a
						class="nav-link px-4 py-1" id="v-pills-4-tab" data-toggle="pill"
						href="#v-pills-4" role="tab" aria-controls="v-pills-4"
						aria-selected="false"><span class="mr-3 flaticon-web-design"></span>
						특허의 종류</a> <a class="nav-link px-4 py-1" id="v-pills-2-tab"
						data-toggle="pill" href="#v-pills-2" role="tab"
						aria-controls="v-pills-2" aria-selected="false"><span
						class="mr-3 flaticon-flasks"></span> 특허 등록</a> <a
						class="nav-link px-4 py-1" id="v-pills-3-tab" data-toggle="pill"
						href="#v-pills-3" role="tab" aria-controls="v-pills-3"
						aria-selected="false"><span class="mr-3 flaticon-analysis"></span>
						특허 사용 허가</a> <a class="nav-link px-4 py-1" id="v-pills-6-tab"
						data-toggle="pill" href="#v-pills-6" role="tab"
						aria-controls="v-pills-6" aria-selected="false"><span
						class="mr-3 flaticon-idea"></span> 특허 절차 관련 수수료</a> <a
						class="nav-link px-4 py-1" id="v-pills-8-tab" data-toggle="pill"
						href="#v-pills-8" role="tab" aria-controls="v-pills-8"
						aria-selected="false"><span class="mr-3 flaticon-idea"></span>
						필요 서류 관련</a> <a class="nav-link px-4 py-1" id="v-pills-10-tab"
						data-toggle="pill" href="#v-pills-10" role="tab"
						aria-controls="v-pills-10" aria-selected="false">
						<span class="mr-3 flaticon-ux-design" onclick="board()"></span> 기타 FAQ</a>
				</div>
			</div>
			<div
				class="col-md-7 col-lg-9 ftco-animate p-4 p-md-5 d-flex align-items-center">

				<div class="tab-content pl-lg-4" id="v-pills-tabContent">

					<div class="tab-pane fade show active py-0 py-lg-5" id="v-pills-1"
						role="tabpanel" aria-labelledby="v-pills-1-tab">
						<div class="d-lg-flex">
							<div class="icon-law mr-md-4 mr-lg-5">
								<span class="icon mb-3 d-block flaticon-family"></span>
							</div>
							<div class="text">
								<h2 class="mb-4">특허 검색은 어떻게 하나요?</h2>
								<p>
									처음 접하는 회원을 위한 초보자 검색, <br>상세한 정보를 찾을 수 있는 일반 검색 기능을 지원합니다.
								</p>
								<p>
									초보자 검색은 특허 종류부터 분야, 특정 단어 포함 여부 등을 포함해 간단한 절차로 많은 결과를 포함합니다.<br>
									일반 검색은 특허 설명에 포함되어 있는 문장을 포함해 검색할 수 있으며, 특정 전문 기술이 포함된 특허도 검색하실
									수 있습니다.
								</p>
								<p>
									<a href="#" class="btn btn-primary px-4 py-3">검색하기</a>
								</p>
							</div>
						</div>
					</div>

					<div class="tab-pane fade py-0 py-lg-5" id="v-pills-2"
						role="tabpanel" aria-labelledby="v-pills-2-tab">
						<div class="d-lg-flex">
							<div class="icon-law mr-md-4 mr-lg-5">
								<span class="icon mb-3 d-block flaticon-auction"></span>
							</div>
							<div class="text">
								<h2 class="mb-4">특허 등록</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
								<p>Inventore fugit error iure nisi reiciendis fugiat illo
									pariatur quam sequi quod iusto facilis officiis nobis sit quis
									molestias asperiores rem, blanditiis! Commodi exercitationem
									vitae deserunt qui nihil ea, tempore et quam natus quaerat
									doloremque.</p>
								<p>
									<a href="#" class="btn btn-primary px-4 py-3">더 보기</a>
								</p>
							</div>
						</div>
					</div>

					<div class="tab-pane fade py-0 py-lg-5" id="v-pills-3"
						role="tabpanel" aria-labelledby="v-pills-3-tab">
						<div class="d-lg-flex">
							<div class="icon-law mr-md-4 mr-lg-5">
								<span class="icon mb-3 d-block flaticon-shield"></span>
							</div>
							<div class="text">
								<h2 class="mb-4">특허 사용 허가</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
								<p>Inventore fugit error iure nisi reiciendis fugiat illo
									pariatur quam sequi quod iusto facilis officiis nobis sit quis
									molestias asperiores rem, blanditiis! Commodi exercitationem
									vitae deserunt qui nihil ea, tempore et quam natus quaerat
									doloremque.</p>
								<p>
									<a href="#" class="btn btn-primary px-4 py-3">더 보기</a>
								</p>
							</div>
						</div>
					</div>

					<div class="tab-pane fade py-0 py-lg-5" id="v-pills-4"
						role="tabpanel" aria-labelledby="v-pills-4-tab">
						<div class="d-lg-flex">
							<div class="icon-law mr-md-4 mr-lg-5">
								<span class="icon mb-3 d-block flaticon-shield"></span>
							</div>
							<div class="text">
								<h2 class="mb-4">특허의 종류</h2>
								<p>특허는 크게 발명에 대한 특허, 실용신안권, 디자인권, 상표권 등으로 나뉩니다.</p>
								<p>
									특허란 '어떠한 발명에 대하여 개인이나 단체가 독점적인 권리를 만드는 것'을 의미합니다. 특허의 범위는 물질적인
									여부를 가리지 않고 '발명'에 대한 모든 것이 포함될 수 있습니다. <br> 제품에 대한 특허, 방법 및
									기술에 대한 특허, 디자인 및 상표에 대한 특허 모두가 포함됩니다.
								</p>
								<!--<p><a href="#" class="btn btn-primary px-4 py-3">더 보기</a></p>-->
							</div>
						</div>
					</div>

					<div class="tab-pane fade py-0 py-lg-5" id="v-pills-6"
						role="tabpanel" aria-labelledby="v-pills-6-tab">
						<div class="d-lg-flex">
							<div class="icon-law mr-md-4 mr-lg-5">
								<span class="icon mb-3 d-block flaticon-fire"></span>
							</div>
							<div class="text">
								<h2 class="mb-4">특허 절차 관련 수수료</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
								<p>Inventore fugit error iure nisi reiciendis fugiat illo
									pariatur quam sequi quod iusto facilis officiis nobis sit quis
									molestias asperiores rem, blanditiis! Commodi exercitationem
									vitae deserunt qui nihil ea, tempore et quam natus quaerat
									doloremque.</p>
								<p>
									<a href="#" class="btn btn-primary px-4 py-3">더 보기</a>
								</p>
							</div>
						</div>
					</div>

					<div class="tab-pane fade py-0 py-lg-5" id="v-pills-8"
						role="tabpanel" aria-labelledby="v-pills-8-tab">
						<div class="d-lg-flex">
							<div class="icon-law mr-md-4 mr-lg-5">
								<span class="icon mb-3 d-block flaticon-medicine"></span>
							</div>
							<div class="text">
								<h2 class="mb-4">필요 서류 관련</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
								<p>Inventore fugit error iure nisi reiciendis fugiat illo
									pariatur quam sequi quod iusto facilis officiis nobis sit quis
									molestias asperiores rem, blanditiis! Commodi exercitationem
									vitae deserunt qui nihil ea, tempore et quam natus quaerat
									doloremque.</p>
								<p>
									<a href="#" class="btn btn-primary px-4 py-3">더 보기</a>
								</p>
							</div>
						</div>
					</div>

					<div class="tab-pane fade py-0 py-lg-5" id="v-pills-10"
						role="tabpanel" aria-labelledby="v-pills-10-tab">
						<div class="d-lg-flex">
							<div class="icon-law mr-md-4 mr-lg-5">
								<span class="icon mb-3 d-block flaticon-house"></span>
							</div>
							<div class="text">
								<h2 class="mb-4">기타 FAQ</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
								<p>Inventore fugit error iure nisi reiciendis fugiat illo
									pariatur quam sequi quod iusto facilis officiis nobis sit quis
									molestias asperiores rem, blanditiis! Commodi exercitationem
									vitae deserunt qui nihil ea, tempore et quam natus quaerat
									doloremque.</p>
								<p>
									<a href="#" class="btn btn-primary px-4 py-3">더 보기</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<!--<section class="ftco-section bg-light" id="attorneys-section">
    	<div class="container">
    		<div class="row justify-content-center pb-5">
          <div class="col-md-10 heading-section text-center ftco-animate">
          	<span class="subheading">About Us</span>
            <h2 class="mb-4">Our Legal Attorneys</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>
        <div class="row">
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(images/staff-1.jpg);"></div>
							</div>
							<div class="text d-flex align-items-center pt-3 text-center">
								<div>
									<h3 class="mb-2">Lloyd Wilson</h3>
									<span class="position mb-4">CEO, Founder</span>
									<div class="faded">
										<ul class="ftco-social text-center">
			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              </ul>
		              </div>
		            </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(images/staff-2.jpg);"></div>
							</div>
							<div class="text d-flex align-items-center pt-3 text-center">
								<div>
									<h3 class="mb-2">Rachel Parker</h3>
									<span class="position mb-4">Business Lawyer</span>
									<div class="faded">
										<ul class="ftco-social text-center">
			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              </ul>
		              </div>
		            </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(images/staff-3.jpg);"></div>
							</div>
							<div class="text d-flex align-items-center pt-3 text-center">
								<div>
									<h3 class="mb-2">Ian Smith</h3>
									<span class="position mb-4">Insurance Lawyer</span>
									<div class="faded">
										<ul class="ftco-social text-center">
			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              </ul>
		              </div>
		            </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(images/staff-4.jpg);"></div>
							</div>
							<div class="text d-flex align-items-center pt-3 text-center">
								<div>
									<h3 class="mb-2">Alicia Henderson</h3>
									<span class="position mb-4">Criminal Law</span>
									<div class="faded">
										<ul class="ftco-social text-center">
			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              </ul>
		              </div>
		            </div>
							</div>
						</div>
					</div>
				</div>
    	</div>
    </section>-->

	<section class="ftco-section" id="blog-section">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-5">
			<div class="col-md-10 heading-section text-center ftco-animate">
				<span class="subheading">새로운 시작</span>
				<h2 class="mb-4">블라인드 테스트 & 크라우드 펀딩</h2>
				<p>시제품에 대한 연구와 소비자와 함께 사업을 시작할 수 있습니다.</p>
			</div>
		</div>
		<div class="row d-flex">
			<div class="col-md-4 d-flex ftco-animate">
				<div class="blog-entry justify-content-end">
					<div class="text">
						<h3 class="heading">
							<a href="single.html">All you want to know about industrial
								laws</a>
						</h3>
					</div>
					<a href="#" class="block-20"
						style="background-image: url('/cloud/resources/images/image_1.jpg');">
					</a>
					<div class="text mt-3 float-right d-block">
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia.</p>
						<div class="d-flex align-items-center mt-4 meta">
							<p class="mb-0">
								<a href="list.html" class="btn btn-primary">더 보기 <span
									class="ion-ios-arrow-round-forward"></span></a>
							</p>
							<p class="ml-auto mb-0">
								<a href="#" class="mr-2">comments </a> <a href="#"
									class="meta-chat"><span class="icon-chat"></span> 27</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 d-flex ftco-animate">
				<div class="blog-entry justify-content-end">
					<div class="text">
						<h3 class="heading">
							<a href="single.html">All you want to know about industrial
								laws</a>
						</h3>
					</div>
					<a href="single.html" class="block-20"
						style="background-image: url('/cloud/resources/images/image_2.jpg');">
					</a>
					<div class="text mt-3 float-right d-block">
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia.</p>
						<div class="d-flex align-items-center mt-4 meta">
							<p class="mb-0">
								<a href="list.html" class="btn btn-primary">더 보기 <span
									class="ion-ios-arrow-round-forward"></span></a>
							</p>
							<p class="ml-auto mb-0">
								<a href="#" class="mr-2">comments</a> <a href="#"
									class="meta-chat"><span class="icon-chat"></span> 38</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 d-flex ftco-animate">
				<div class="blog-entry">
					<div class="text">
						<h3 class="heading">
							<a href="single.html">All you want to know about industrial
								laws</a>
						</h3>
					</div>
					<a href="single.html" class="block-20"
						style="background-image: url('/cloud/resources/images/image_3.jpg');">
					</a>
					<div class="text mt-3 float-right d-block">
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia.</p>
						<div class="d-flex align-items-center mt-4 meta">
							<p class="mb-0">
								<a href="list.html" class="btn btn-primary">더 보기 <span
									class="ion-ios-arrow-round-forward"></span></a>
							</p>
							<p class="ml-auto mb-0">
								<a href="#" class="mr-2">comments</a> <a href="#"
									class="meta-chat"><span class="icon-chat"></span> 100+</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section contact-section ftco-no-pb bg-light"
		id="contact-section">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-10 heading-section text-center ftco-animate">
				<span class="subheading">본사 주소 및 연락처</span>
				<h2 class="mb-4">공식 연락처</h2>
				<p>특허 출원 및 사용 허가 관련 최종 절차는 모두 본사에서 진행됩니다.</p>
			</div>
		</div>
		<div class="row d-flex contact-info mb-5">
			<div class="col-md-6 col-lg-3 d-flex ftco-animate">
				<div class="align-self-stretch box p-4 text-center">
					<div class="icon d-flex align-items-center justify-content-center">
						<span class="icon-map-signs"></span>
					</div>
					<h3 class="mb-4">찾아오는 길</h3>
					<p>Class B, 4th floor, 513, Yeongdong-daero, Gangnam-gu, Seoul,
						Republic of Korea</p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex ftco-animate">
				<div class="align-self-stretch box p-4 text-center">
					<div class="icon d-flex align-items-center justify-content-center">
						<span class="icon-phone2"></span>
					</div>
					<h3 class="mb-4">대표 전화번호</h3>
					<p>
						<a href="tel://1234567920">+82 02 6000 0114</a>
					</p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex ftco-animate">
				<div class="align-self-stretch box p-4 text-center">
					<div class="icon d-flex align-items-center justify-content-center">
						<span class="icon-paper-plane"></span>
					</div>
					<h3 class="mb-4">대표 이메일</h3>
					<p>
						<a href="mailto:info@yoursite.com">info@yoursite.com</a>
					</p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex ftco-animate">
				<div class="align-self-stretch box p-4 text-center">
					<div class="icon d-flex align-items-center justify-content-center">
						<span class="icon-globe"></span>
					</div>
					<h3 class="mb-4">공식 사이트</h3>
					<p>
						<a href="#">index.com</a>
					</p>
				</div>
			</div>
		</div>
		<div class="row no-gutters block-9">
			<!--<div class="col-md-6 order-md-last d-flex">
            <form action="#" class="bg-primary p-5 contact-form">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Name">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Email">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject">
              </div>
              <div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="Send Message" class="btn btn-darken py-3 px-5">
              </div>
            </form>-->

		</div>

		<!--<div class="col-md-6 d-flex">
          	<div id="map" class="bg-white"></div>
          </div>-->
	</div>
	</section>


	<footer class="ftco-footer ftco-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">
						About <span>Neutral</span>
					</h2>
					<p>
						창업자가 궁금해하는 것, <br>필요로 하는 것, <br>필요로 할 것들을 최대한 지원하기 위해 만든
						사이트입니다.
					</p>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">바로가기</h2>
					<ul class="list-unstyled">
						<li><a href="#home-section"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
						<li><a href="#about-section"><span
								class="icon-long-arrow-right mr-2"></span>소개글</a></li>
						<li><a href="#practice-section"><span
								class="icon-long-arrow-right mr-2"></span>특허 FAQ</a></li>
						<!--<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Attorneys</a></li>-->
						<li><a href="/cloud/survey/main"><span
								class="icon-long-arrow-right mr-2"></span>설문조사</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>공식
								연락처</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">특허 관련 FAQ</h2>
					<ul class="list-unstyled">
						<li><a href="#"><span class="icon-long-arrow-right mr-2">
									특허 검색</span></a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2">
									특허 출원</span></a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2">
									특허 사용 허가</span></a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2">
									특허의 종류</span></a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2">
									필요 서류 관련</span></a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2">
									특허 절차 관련 수수료</span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">찾아오는 길</h2>
					<div class="block-23 mb-0">
						<ul>
							<li><span class="icon icon-map-marker"></span><span
								class="text">Class B, 4th floor, 513, Yeongdong-daero,
									Gangnam-gu, Seoul, Republic of Korea</span></li>
							<li><a href="#"><span class="icon icon-phone"></span><span
									class="text">+82 02 6000 0114</span></a></li>
							<li><a href="#"><span class="icon icon-envelope"></span><span
									class="text">info@yourdomain.com</span></a></li>
						</ul>
					</div>
					<ul
						class="ftco-footer-social list-unstyled float-md-left float-lft mt-4">
						<li class="ftco-animate"><a href="#"><span
								class="icon-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-instagram"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">

				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="icon-heart color-danger" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke="#eeeeee" />
		<circle class="path" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="modalAppointment" tabindex="-1"
		role="dialog" aria-labelledby="modalAppointmentLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modalAppointmentLabel">Appointment</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="#">
						<div class="form-group">
							<label for="appointment_name" class="text-black">Full
								Name</label> <input type="text" class="form-control"
								id="appointment_name">
						</div>
						<div class="form-group">
							<label for="appointment_email" class="text-black">Email</label> <input
								type="text" class="form-control" id="appointment_email">
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="appointment_date" class="text-black">Date</label> <input
										type="text" class="form-control" id="appointment_date">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="appointment_time" class="text-black">Time</label> <input
										type="text" class="form-control" id="appointment_time">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="appointment_message" class="text-black">Message</label>
							<textarea name="" id="appointment_message" class="form-control"
								cols="30" rows="10"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Send Message" class="btn btn-primary">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="/cloud/resources/js/jquery.min.js"></script>
	<script src="/cloud/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/cloud/resources/js/popper.min.js"></script>
	<script src="/cloud/resources/js/bootstrap.min.js"></script>
	<script src="/cloud/resources/js/jquery.easing.1.3.js"></script>
	<script src="/cloud/resources/js/jquery.waypoints.min.js"></script>
	<script src="/cloud/resources/js/jquery.stellar.min.js"></script>
	<script src="/cloud/resources/js/owl.carousel.min.js"></script>
	<script src="/cloud/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/cloud/resources/js/aos.js"></script>
	<script src="/cloud/resources/js/jquery.animateNumber.min.js"></script>
	<script src="/cloud/resources/js/bootstrap-datepicker.js"></script>
	<script src="/cloud/resources/js/jquery.timepicker.min.js"></script>
	<script src="/cloud/resources/js/scrollax.min.js"></script>
	<script src="/cloud/resources/js/main.js"></script>
</body>
</html>