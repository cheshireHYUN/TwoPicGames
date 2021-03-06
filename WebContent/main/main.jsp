<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String msg = (String) request.getAttribute("msg");
request.removeAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/main.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="../js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
		rel="stylesheet">
	<header id="header-container-fluid">
		<jsp:include page="header.jsp" />
		<jsp:include page="headerNav.jsp" />
	</header>

	<%
		if (msg != null) {
	%>
	<script>
		alert("<%=msg%>");
	</script>
	<%
		}
	%>
	<div class="css-1ktypff" data-component="Page">
		<div class="css-1n8met0">
			<div class="css-lai20k" data-component="DiscoverPage">
				<div class="css-1knv3fd">
					<script id="_schemaOrgMarkup-WebApplication"
						type="application/ld+json" data-component="SchemaMarkup">{"@type":"WebApplication","@context":"https://schema.org","@id":"http://store.epicgames.com/en-US","name":"Epic Games Store","applicationCategory":"ShoppingApplication","url":"http://store.epicgames.com/en-US","isAccessibleForFree":true,"image":"https://static-assets-prod.epicgames.com/epic-store/static/webpack/25c285e020572b4f76b770d6cca272ec.png","offers":[{"@type":"Offer","@context":"https://schema.org","price":0,"availableDeliveryMethod":"http://purl.org/goodrelations/v1#DeliveryModeDirectDownload","priceCurrency":"KRW","category":"WebApplication","name":"Epic Games Store"}],"potentialAction":{"@type":"SearchAction","target":"http://store.epicgames.com/en-US/browse?q={query}","query":"required"}}</script>
					<div class="meta-schema" data-component="DocumentHead"></div>
					<h1 class="css-1qwdmuy">탐색</h1>
					<span data-component="WithIntersectionTracking"><div
							class="css-1xdp7yz" data-component="DiscoverContainerDesktop">
							<div>
								<h2 class="css-hchust">New Featured Carousel</h2>
								<div data-component="SaleCarousel" class="carousel slide"
									data-bs-ride="carousel" id="myCarousel">
									<div aria-roledescription="carousel"
										data-testid="SaleCarouselDesktop"
										class="css-1mgolpb carousel-inner" tabindex="-1"
										data-component="SaleCarouselDesktop">
										<div class="css-1hh15gj" data-component="SliderDesktop">
											<div class="css-u421q6" data-component="AspectRatioContainer">
												<div class="css-han5dv">
												<!-- 슬라이드 시작 -->
													<div aria-label="현재 항목"
														class="css-vdsjqy carousel-item active">
														<div class="css-ark9g" tabindex="-1">
															<a role="link" href="/ko/sales-and-specials/mega-sale"><div
																	data-testid="slide-media-asset">
																	<div class="css-1v4yu1y" data-component="CarouselVideo">
																		<div class="css-10lsqjv">
																			<div class="css-122y91a"
																				data-component="HtmlPlayerComponent">
																				<video class="css-yxalrd" crossorigin="anonymous"
																					poster="https://cdn2.unrealengine.com/epic-mega-sale-carousel-desktop-1920x1080-689ef2c7be3a.jpg"
																					preload="auto"
																					src="blob:https://store.epicgames.com/9bd65b6a-493b-4e45-afb5-44aaae14d1f7"
																					autoplay="">
																					<span data-component="Message">사용 중인 브라우저에서
																						비디오 태그를 지원하지 않습니다.</span>
																				</video>
																				<div aria-label="플레이" class="css-rylixz"
																					role="status" data-testid="status-icon">
																					<span class="css-15wl14t" aria-hidden="true"
																						data-testid="icon" data-component="Icon"
																						style="margin-left: 6px;"><svg
																							xmlns="http://www.w3.org/2000/svg"
																							class="svg css-w1atjl" viewBox="0 0 11 14">
																							<path d="M0 0v14l11-7z" fill="currentColor"
																								fill-rule="nonzero"></path></svg></span>
																				</div>
																				<button class="css-cn2j41"></button>
																			</div>
																		</div>
																	</div>
																	<div class="css-1tnujoq" data-component="CarouselVideo"></div>
																	<img
																		src="https://cdn2.unrealengine.com/epic-mega-sale-carousel-desktop-1920x1080-689ef2c7be3a.jpg"
																		alt="Epic Games Store MEGA Sale" class="css-p2otpw"
																		data-component="CarouselVideo">
																	<div class="css-1qpzmhj" data-component="Skrim"></div>
																</div></a>
															<div class="css-3pmzyf">
																<div data-testid="slide-description-section">
																	<div class="css-2jklkt"></div>
																	<h3 class="css-1qwdmuy">메가 세일 2022</h3>
																	<div class="css-1bznwnc">
																		<span class="css-1v7dpmq">5월 20일 - 6월 16일(한국
																			시간)</span><span class="css-hk4gpv"><div
																				class="css-vetbs0" data-component="LineClamp">
																				<div class="css-1h3di0n">메가 세일! 매주 드리는 대작 무료
																					게임, 대박 찬스가 기다리고 있습니다</div>
																			</div></span>
																	</div>
																</div>
																<div data-testid="CarouselOffer" tabindex="-1">
																	<div class="css-14zgbwr" data-component="CarouselOffer">
																		<div class="css-9mhi7u">
																			<div class="css-1owogvj">
																				<a class="css-ickv6u" role="link"
																					href="/ko/sales-and-specials/mega-sale">할인 보기</a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- 슬라이드 시작 -->
													<div data-testid="SliderDesktop-slide-1"
														class="css-vdsjqy carousel-item"
														data-component="SliderDesktop">
														<div class="css-ark9g" tabindex="-1"
															data-component="CarouselContentDesktop">
															<a role="link"
																href="/ko/p/vampire-the-masquerade-swansong"><div
																	data-testid="slide-media-asset">
																	<div data-testid="picture" data-component="Picture">
																		<picture class="css-e4bau3"
																			data-component="PictureImage">
																		<source media="(min-width: 1280px)"
																			srcset="https://cdn2.unrealengine.com/egs-vampire-swansong-desktop-1280x702-1248x702-8012b0b6b779.jpg?h=1080&amp;resize=1&amp;w=1920"
																			data-image="https://cdn2.unrealengine.com/egs-vampire-swansong-desktop-1280x702-1248x702-8012b0b6b779.jpg?h=1080&amp;resize=1&amp;w=1920"
																			data-component="PictureImage">
																		<source media="(min-width: 768px)"
																			srcset="https://cdn2.unrealengine.com/egs-vampire-swansong-desktop-1280x702-1248x702-8012b0b6b779.jpg?h=720&amp;resize=1&amp;w=1280"
																			data-image="https://cdn2.unrealengine.com/egs-vampire-swansong-desktop-1280x702-1248x702-8012b0b6b779.jpg?h=720&amp;resize=1&amp;w=1280"
																			data-component="PictureImage">
																		<img
																			alt="Play Vampire: The Masquerade - Swansong on Epic Games Store"
																			src="https://cdn2.unrealengine.com/egs-vampire-swansong-desktop-1280x702-1248x702-8012b0b6b779.jpg?h=1080&amp;resize=1&amp;w=1920"
																			class="css-88fy8u"
																			data-image="https://cdn2.unrealengine.com/egs-vampire-swansong-desktop-1280x702-1248x702-8012b0b6b779.jpg?h=1080&amp;resize=1&amp;w=1920"
																			data-testid="picture-image"
																			data-component="FallbackImage"></picture>
																	</div>
																	<div class="css-1qpzmhj" data-component="Skrim"></div>
																</div></a>
															<div class="css-3pmzyf">
																<div data-testid="slide-description-section">
																	<div class="css-mlhxr9"></div>
																	<h3 class="css-1qwdmuy">Vampire: The Masquerade</h3>
																	<div class="css-1kodzjq">
																		<span class="css-1v7dpmq">스토어 한정 출시작 - 지금 출시</span><span
																			class="css-hk4gpv"><div class="css-vetbs0"
																				data-component="LineClamp">
																				<div class="css-1h3di0n">3명의 뱀파이어로 플레이하면서 이들의
																					힘을 부리고 보스턴의 운명을 결정하세요.</div>
																			</div></span>
																	</div>
																</div>
																<div data-testid="CarouselOffer" tabindex="-1">
																	<div class="css-14zgbwr" data-component="CarouselOffer">
																		<div data-testid="price-wrapper" role="presentation"
																			data-component="CarouselPrice">
																			<span class="css-nc3gnj" data-component="Message"><span
																				class="css-14tsud1" data-testid="price-args"><div
																						class="css-1yc1h40" data-component="PurchasePrice">
																						<div class="css-qccvxc">
																							<span class="css-ovezyj" data-component="Price">₩51,000</span>
																						</div>
																					</div></span>에서 시작</span>
																		</div>
																		<div class="css-9mhi7u">
																			<div class="css-1owogvj">
																				<a class="css-ickv6u" role="link"
																					href="/ko/p/vampire-the-masquerade-swansong">지금
																					구매</a>
																				<button class="css-1hzqnw0"
																					data-component="BaseButton" aria-expanded="false">
																					<span class="css-rfip8z"
																						data-component="WishlistCTALabel"><div
																							class="css-mrbz4w"
																							data-testid="wishbutton-circle"
																							data-component="WishButtonCircle">
																							<div data-testid="spinner" class="css-7valn4"
																								data-component="WishButtonSpinner"></div>
																						</div> <span class="css-15fdr99" data-component="Text"><span
																							data-component="Message">위시리스트에 추가</span></span></span>
																				</button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- 슬라이드 시작 -->
													<div data-testid="SliderDesktop-slide-2"
														class="css-vdsjqy carousel-item"
														data-component="SliderDesktop">
														<div class="css-ark9g" tabindex="-1"
															data-component="CarouselContentDesktop">
															<a role="link" href="/ko/p/tiny-tinas-wonderlands"><div
																	data-testid="slide-media-asset">
																	<div data-testid="picture" data-component="Picture">
																		<picture class="css-e4bau3"
																			data-component="PictureImage">
																		<source media="(min-width: 1280px)"
																			srcset="https://cdn2.unrealengine.com/2kgmkt-ttwl-egs-carousel-desktop-16x9-image-gunstone-1248x702-8d1d7160d230.jpg?h=1080&amp;resize=1&amp;w=1920"
																			data-image="https://cdn2.unrealengine.com/2kgmkt-ttwl-egs-carousel-desktop-16x9-image-gunstone-1248x702-8d1d7160d230.jpg?h=1080&amp;resize=1&amp;w=1920"
																			data-component="PictureImage">
																		<source media="(min-width: 768px)"
																			srcset="https://cdn2.unrealengine.com/2kgmkt-ttwl-egs-carousel-desktop-16x9-image-gunstone-1248x702-8d1d7160d230.jpg?h=720&amp;resize=1&amp;w=1280"
																			data-image="https://cdn2.unrealengine.com/2kgmkt-ttwl-egs-carousel-desktop-16x9-image-gunstone-1248x702-8d1d7160d230.jpg?h=720&amp;resize=1&amp;w=1280"
																			data-component="PictureImage">
																		<img
																			alt="Play Tiny Tina's Wonderlands on Epic Games Store"
																			src="https://cdn2.unrealengine.com/2kgmkt-ttwl-egs-carousel-desktop-16x9-image-gunstone-1248x702-8d1d7160d230.jpg?h=1080&amp;resize=1&amp;w=1920"
																			class="css-88fy8u"
																			data-image="https://cdn2.unrealengine.com/2kgmkt-ttwl-egs-carousel-desktop-16x9-image-gunstone-1248x702-8d1d7160d230.jpg?h=1080&amp;resize=1&amp;w=1920"
																			data-testid="picture-image"
																			data-component="FallbackImage"></picture>
																	</div>
																	<div class="css-1qpzmhj" data-component="Skrim"></div>
																</div></a>
															<div class="css-3pmzyf">
																<div data-testid="slide-description-section">
																	<div class="css-1khxzb6"></div>
																	<h3 class="css-1qwdmuy">타이니 티나의 원더랜드</h3>
																	<div class="css-1kodzjq">
																		<span class="css-1v7dpmq">스토어 한정 출시작 - 지금 출시</span><span
																			class="css-hk4gpv"><div class="css-vetbs0"
																				data-component="LineClamp">
																				<div class="css-1h3di0n">기발하고도, 놀라우며, 초강력 무기로
																					가득한 혼란의 판타지 세계를 체험해 보세요!</div>
																			</div></span>
																	</div>
																</div>
																<div data-testid="CarouselOffer" tabindex="-1">
																	<div class="css-14zgbwr" data-component="CarouselOffer">
																		<div data-testid="price-wrapper" role="presentation"
																			data-component="CarouselPrice">
																			<span class="css-nc3gnj" data-component="Message"><span
																				class="css-14tsud1" data-testid="price-args"><div
																						class="css-1yc1h40" data-component="PurchasePrice">
																						<div class="css-qccvxc">
																							<s class="css-1uubmwy" data-component="Price">₩65,000</s><span
																								class="css-ovezyj" data-component="Price">₩52,000</span>
																						</div>
																					</div></span>에서 시작</span>
																		</div>
																		<div class="css-9mhi7u">
																			<div class="css-1owogvj">
																				<a class="css-ickv6u" role="link"
																					href="/ko/p/tiny-tinas-wonderlands">지금 구매</a>
																				<button class="css-1hzqnw0"
																					data-component="BaseButton" aria-expanded="false">
																					<span class="css-rfip8z"
																						data-component="WishlistCTALabel"><div
																							class="css-mrbz4w"
																							data-testid="wishbutton-circle"
																							data-component="WishButtonCircle">
																							<div data-testid="spinner" class="css-7valn4"
																								data-component="WishButtonSpinner"></div>
																						</div> <span class="css-15fdr99" data-component="Text"><span
																							data-component="Message">위시리스트에 추가</span></span></span>
																				</button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- 슬라이드 시작 -->
													<div data-testid="SliderDesktop-slide-3"
														class="css-vdsjqy carousel-item"
														data-component="SliderDesktop">
														<div class="css-ark9g" tabindex="-1"
															data-component="CarouselContentDesktop">
															<a role="link" href="/ko/p/fall-guys"><div
																	data-testid="slide-media-asset">
																	<div data-testid="picture" data-component="Picture">
																		<picture class="css-e4bau3"
																			data-component="PictureImage">
																		<source media="(min-width: 1280px)"
																			srcset="https://cdn2.unrealengine.com/egs-fallguys-carousel-desktop-5222x2938-d1cf699e652f.jpg?h=1080&amp;resize=1&amp;w=1920"
																			data-image="https://cdn2.unrealengine.com/egs-fallguys-carousel-desktop-5222x2938-d1cf699e652f.jpg?h=1080&amp;resize=1&amp;w=1920"
																			data-component="PictureImage">
																		<source media="(min-width: 768px)"
																			srcset="https://cdn2.unrealengine.com/egs-fallguys-carousel-desktop-5222x2938-d1cf699e652f.jpg?h=720&amp;resize=1&amp;w=1280"
																			data-image="https://cdn2.unrealengine.com/egs-fallguys-carousel-desktop-5222x2938-d1cf699e652f.jpg?h=720&amp;resize=1&amp;w=1280"
																			data-component="PictureImage">
																		<img alt="Wishlist Fall Guys on Epic Games Store"
																			src="https://cdn2.unrealengine.com/egs-fallguys-carousel-desktop-5222x2938-d1cf699e652f.jpg?h=1080&amp;resize=1&amp;w=1920"
																			class="css-88fy8u"
																			data-image="https://cdn2.unrealengine.com/egs-fallguys-carousel-desktop-5222x2938-d1cf699e652f.jpg?h=1080&amp;resize=1&amp;w=1920"
																			data-testid="picture-image"
																			data-component="FallbackImage"></picture>
																	</div>
																	<div class="css-1qpzmhj" data-component="Skrim"></div>
																</div></a>
															<div class="css-3pmzyf">
																<div data-testid="slide-description-section">
																	<div class="css-1nuxj1k"></div>
																	<h3 class="css-1qwdmuy">폴가이즈</h3>
																	<div class="css-1kodzjq">
																		<span class="css-1v7dpmq">출시 예정</span><span
																			class="css-hk4gpv"><div class="css-vetbs0"
																				data-component="LineClamp">
																				<div class="css-1h3di0n">폴가이즈가 무료 플레이로 전환됩니다!
																					6월 21일(영국 시간)부터 Epic Games Store에서 만나보세요!</div>
																			</div></span>
																	</div>
																</div>
																<div data-testid="CarouselOffer" tabindex="-1">
																	<div class="css-14zgbwr" data-component="CarouselOffer">
																		<div class="css-9mhi7u">
																			<div class="css-1owogvj">
																				<a class="css-ickv6u" role="link"
																					href="/ko/p/fall-guys">지금 위시리스트에 추가</a>
																				<button class="css-1hzqnw0"
																					data-component="BaseButton" aria-expanded="false">
																					<span class="css-rfip8z"
																						data-component="WishlistCTALabel"><div
																							class="css-mrbz4w"
																							data-testid="wishbutton-circle"
																							data-component="WishButtonCircle">
																							<div data-testid="spinner" class="css-7valn4"
																								data-component="WishButtonSpinner"></div>
																						</div> <span class="css-15fdr99" data-component="Text"><span
																							data-component="Message">위시리스트에 추가</span></span></span>
																				</button>
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
										<div class="css-eyewj7"
											data-component="CarouselControlDesktop">
											<ul class="css-bn9bcg">
												<div class="css-1br7pcd" data-component="WithClickTracking">
													<li class="css-w1atjl"
														data-component="CarouselControlDesktop"><a
														role="link" href="/ko/sales-and-specials/mega-sale"><div
																data-testid="CarouselThumbnail-0" class="css-1swnkgg"
																tabindex="0" role="button"
																data-component="FeaturedCarouselThumbnail">
																<div class="css-p02mvh">
																	<div class="css-yb58t8"
																		data-component="AspectRatioContainer">
																		<div class="css-han5dv">
																			<img class="css-b4kcmh"
																				src="https://cdn2.unrealengine.com/epic-mega-sale-desktop-thumbnail-1200x1600-86d20f7db332.jpg?h=1280&amp;resize=1&amp;w=960">
																		</div>
																	</div>
																</div>
																<div class="css-1h6tojh">
																	<div class="css-vetbs0" data-component="LineClamp">
																		<div class="css-rgqwpc">메가 세일 2022</div>
																	</div>
																</div>
																<div class="css-1plgqh1" data-component="ProgressLine">
																	<div class="css-it1u5e"></div>
																	<div data-testid="CarouselProgress-0"
																		class="css-8wqmkk"
																		style="animation-play-state: paused;"></div>
																</div>
															</div></a></li>
												</div>
												<div class="css-1br7pcd" data-component="WithClickTracking">
													<li class="css-w1atjl"
														data-component="CarouselControlDesktop"><div
															data-testid="CarouselThumbnail-1" class="css-9objmj"
															tabindex="0" role="button"
															data-component="FeaturedCarouselThumbnail">
															<div class="css-ne46yq">
																<div class="css-yb58t8"
																	data-component="AspectRatioContainer">
																	<div class="css-han5dv">
																		<img class="css-b4kcmh"
																			src="https://cdn2.unrealengine.com/egs-vampire-swansong-mobile-1200x1600-1200x1600-a9307060177d.jpg?h=1280&amp;resize=1&amp;w=960">
																	</div>
																</div>
															</div>
															<div class="css-1h6tojh">
																<div class="css-vetbs0" data-component="LineClamp">
																	<div class="css-rgqwpc">Vampire: The Masquerade</div>
																</div>
															</div>
															<div class="css-1plgqh1" data-component="ProgressLine">
																<div class="css-it1u5e"></div>
																<div data-testid="CarouselProgress-1" class="css-f2nc7u"></div>
															</div>
														</div></li>
												</div>
												<div class="css-1br7pcd" data-component="WithClickTracking">
													<li class="css-w1atjl"
														data-component="CarouselControlDesktop"><div
															data-testid="CarouselThumbnail-2" class="css-9objmj"
															tabindex="0" role="button"
															data-component="FeaturedCarouselThumbnail">
															<div class="css-ne46yq">
																<div class="css-yb58t8"
																	data-component="AspectRatioContainer">
																	<div class="css-han5dv">
																		<img class="css-b4kcmh"
																			src="https://cdn2.unrealengine.com/2kgmkt-ttw-std-epic-mobile-thumb-1200x1600-1200x1600-766333b75c63.jpg?h=1280&amp;resize=1&amp;w=960">
																	</div>
																</div>
															</div>
															<div class="css-1h6tojh">
																<div class="css-vetbs0" data-component="LineClamp">
																	<div class="css-rgqwpc">타이니 티나의 원더랜드</div>
																</div>
															</div>
															<div class="css-1plgqh1" data-component="ProgressLine">
																<div class="css-it1u5e"></div>
																<div data-testid="CarouselProgress-2" class="css-f2nc7u"></div>
															</div>
														</div></li>
												</div>
												<div class="css-1br7pcd" data-component="WithClickTracking">
													<li class="css-w1atjl"
														data-component="CarouselControlDesktop"><div
															data-testid="CarouselThumbnail-3" class="css-9objmj"
															tabindex="0" role="button"
															data-component="FeaturedCarouselThumbnail">
															<div class="css-ne46yq">
																<div class="css-yb58t8"
																	data-component="AspectRatioContainer">
																	<div class="css-han5dv">
																		<img class="css-b4kcmh"
																			src="https://cdn2.unrealengine.com/egs-fallguys-carousel-thumbnail-krko-315x399-d855abb3a392.jpg?h=1280&amp;resize=1&amp;w=960">
																	</div>
																</div>
															</div>
															<div class="css-1h6tojh">
																<div class="css-vetbs0" data-component="LineClamp">
																	<div class="css-8uhtka" data-testid="one-line-text">폴가이즈</div>
																</div>
															</div>
															<div class="css-1plgqh1" data-component="ProgressLine">
																<div class="css-it1u5e"></div>
																<div data-testid="CarouselProgress-3" class="css-f2nc7u"></div>
															</div>
														</div></li>
												</div>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div></span><span data-component="WithIntersectionTracking"><div
							class="css-15u9bv0" data-component="DiscoverContainerHighlighted">
							<div class="css-1vu10h2"
								data-component="CardGroupHighlightDesktop">
								<div class="css-gtkzb6">
									<h2 class="css-1hpozc0">
										<span class="css-d3u5l7" aria-hidden="true" data-testid="icon"
											data-component="Icon"><svg
												xmlns="http://www.w3.org/2000/svg" class="svg css-w1atjl"
												viewBox="0 0 32 32">
												<g fill="currentColor" fill-rule="evenodd">
												<path
													d="M30.443 16.605H19.72v-3.46h10.724v3.46zm-2.075 12.308c0 .397-.576.838-1.402.838h-7.247V17.99h8.648v10.924zm-14.876.838h4.843v-18.68h-4.843v18.68zm-10.033-.838V17.99h8.649v11.762H4.861c-.826 0-1.402-.441-1.402-.838zM1.384 13.146h10.724v3.46H1.384v-3.46zm1.773-4.324c0-1.622 1.319-2.94 2.94-2.94 2.752 0 5.093 3.78 5.575 5.88H6.097a2.944 2.944 0 0 1-2.94-2.94zm22.573-2.94c1.621 0 2.94 1.318 2.94 2.94 0 1.621-1.319 2.94-2.94 2.94h-5.574c.481-2.1 2.822-5.88 5.574-5.88zm5.405 5.88h-2.244a4.304 4.304 0 0 0 1.163-2.94 4.329 4.329 0 0 0-4.324-4.325c-2.89 0-5.227 2.813-6.341 5.294a.686.686 0 0 0-.362-.105H12.8a.686.686 0 0 0-.362.105c-1.114-2.481-3.45-5.294-6.34-5.294a4.329 4.329 0 0 0-4.325 4.325c0 1.136.444 2.168 1.163 2.94H.692a.692.692 0 0 0-.692.692v4.843c0 .382.31.692.692.692h1.384v10.924c0 1.246 1.223 2.222 2.785 2.222h22.105c1.562 0 2.785-.976 2.785-2.222V17.99h1.384c.382 0 .692-.31.692-.692v-4.843a.692.692 0 0 0-.692-.692zM15.914 4.151c.381 0 .691-.31.691-.692V.692a.692.692 0 0 0-1.383 0v2.767c0 .382.31.692.692.692"></path>
												<path
													d="M19.546 5.362a.69.69 0 0 0 .49-.203l1.037-1.037a.692.692 0 1 0-.978-.979l-1.038 1.038a.692.692 0 0 0 .489 1.181M11.792 5.16a.69.69 0 0 0 .978 0 .692.692 0 0 0 0-.979l-1.038-1.038a.692.692 0 1 0-.978.979l1.038 1.037z"></path></g></svg></span>무료
										게임
									</h2>
								</div>
								<section class="css-2u323" data-component="CardGridDesktopBase">
									<div class="css-1myhtyb">
										<div class="css-1ukp34s" data-component="CardGridDesktopBase">
											<div class="css-nq799m">
												<div data-component="WithClickTracking">
													<a role="link" href="/ko/p/borderlands-3"><div
															class="css-shu77l" data-component="OfferCard">
															<div class="css-13ku56z">
																<div class="css-f0xnhl">
																	<div class="css-u421q6"
																		data-component="VaultOfferCardTransition">
																		<div class="css-1ol0jgi"
																			data-component="VaultOfferCardTransition">
																			<div class="css-1ihd7u3"
																				data-testid="offer-card-image-landscape"
																				data-component="OfferCardImageLandscape">
																				<div data-testid="picture" data-component="Picture">
																					<img alt="Borderlands 3"
																						src="https://cdn1.epicgames.com/offer/d5241c76f178492ea1540fce45616757/egs-vault-w1-1920x1080_1920x1080-9bccac92ec0b41b294fc008cea5615c9?h=480&amp;resize=1&amp;w=854"
																						class="css-wqdqy2"
																						data-image="https://cdn1.epicgames.com/offer/d5241c76f178492ea1540fce45616757/egs-vault-w1-1920x1080_1920x1080-9bccac92ec0b41b294fc008cea5615c9?h=480&amp;resize=1&amp;w=854"
																						data-testid="picture-image"
																						data-component="FallbackImage">
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="css-11xvn05" data-component="StatusBar">
																		<span data-component="Message">지금 무료</span>
																	</div>
																</div>
																<div style="width: 100%; height: 1rem;"></div>
																<div class="css-hkjq8i">
																	<span data-testid="offer-title-info-title"
																		class="css-2ucwu" data-component="OfferTitleInfo"><div
																			data-testid="direction-auto" class="css-1h2ruwl"
																			data-component="DirectionAuto">Borderlands 3</div></span><span
																		data-testid="offer-title-info-subtitle"
																		class="css-nf3v9d" data-component="OfferTitleInfo"><div
																			data-testid="direction-auto" class="css-1h2ruwl"
																			data-component="DirectionAuto">
																			<span data-component="Message"><time
																					datetime="2022-05-26T15:00:00.000Z"
																					data-component="Time">5월 27일</time> <time
																					datetime="2022-05-26T15:00:00.000Z"
																					data-component="Time">00:00</time>까지 무료</span>
																		</div></span>
																</div>
															</div>
														</div></a>
												</div>
											</div>
										</div>
										<div class="css-1ukp34s" data-component="CardGridDesktopBase">
											<div class="css-nq799m">
												<div data-component="WithClickTracking">
													<a role="link" href="/ko/free-games"><div
															class="css-shu77l" data-component="OfferCard">
															<div class="css-13ku56z">
																<div class="css-f0xnhl">
																	<div class="css-u421q6"
																		data-component="VaultOfferCardTransition">
																		<div class="css-1ol0jgi"
																			data-component="VaultOfferCardTransition">
																			<div class="css-1ihd7u3"
																				data-testid="offer-card-image-landscape"
																				data-component="OfferCardImageLandscape">
																				<div data-testid="picture" data-component="Picture">
																					<img alt="잠긴 무료 게임"
																						src="https://cdn1.epicgames.com/offer/d5241c76f178492ea1540fce45616757/egs-vault-tease-generic-promo-1920x1080_1920x1080-f7742c265e217510835ed14e04c48b4b?h=480&amp;resize=1&amp;w=854"
																						class="css-wqdqy2"
																						data-image="https://cdn1.epicgames.com/offer/d5241c76f178492ea1540fce45616757/egs-vault-tease-generic-promo-1920x1080_1920x1080-f7742c265e217510835ed14e04c48b4b?h=480&amp;resize=1&amp;w=854"
																						data-testid="picture-image"
																						data-component="FallbackImage">
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="css-gyjcm9" data-component="StatusBar">
																		<span data-component="Message">잠금 해제 시 공개</span>
																	</div>
																</div>
																<div style="width: 100%; height: 1rem;"></div>
																<div class="css-hkjq8i">
																	<span data-testid="offer-title-info-title"
																		class="css-2ucwu" data-component="OfferTitleInfo"><div
																			data-testid="direction-auto" class="css-1h2ruwl"
																			data-component="DirectionAuto">
																			<div class="css-13x6ql2">
																				<span data-component="Message">잠금 해제까지 남은 시간
																					<span class="css-kow0uz"
																					data-testid="timer-remaining-days"
																					data-component="CountdownTimer">D-3</span>
																				</span>
																			</div>
																		</div></span>
																</div>
															</div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div></span><span data-component="WithIntersectionTracking"><div
							class="css-1xdp7yz" data-component="DiscoverContainerDesktop">
							<div>
								<div data-component="DiscoverGroupSliderModule">
									<div data-testid="group-swiper-slider"
										data-component="GroupSwiperSlider">
										<div data-testid="group-swiper-slider-titlebar"
											class="css-1vrszko" data-component="TitleBar">
											<div class="css-idfvfs">
												<h2 class="css-1hpozc0">에디터 선정작</h2>
											</div>
										</div>
										<div
											class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">
											<div class="swiper-wrapper"
												style="transform: translate3d(0px, 0px, 0px);">
												<div
													class="swiper-slide swiper-slide-visible swiper-slide-active"
													style="width: 211.8px; margin-right: 30px;">
													<div data-component="WithClickTracking">
														<div data-component="DiscoverCard">
															<div class="css-bjn8wh"
																data-component="DiscoverCardLayout">
																<a class="css-1jx3eyg" role="link"
																	href="/ko/p/vampire-the-masquerade-swansong"
																	aria-label="에디터 선정작, 1/7, Vampire: The Masquerade – Swansong, Big Bad Wolf | Nacon, ₩51,000"><div
																		class="css-nnav23">
																		<div class="css-13ku56z">
																			<div class="css-f0xnhl">
																				<div class="css-1lozana"
																					data-testid="offer-card-image-portrait"
																					data-component="OfferCardImagePortrait">
																					<div data-testid="picture" data-component="Picture">
																						<img alt="Vampire: The Masquerade – Swansong"
																							src="https://cdn1.epicgames.com/offer/91b9a3ac7cda40718addd961fddfadca/EGS_VampireTheMasqueradeSwansong_BigBadWolf_S2_1200x1600-4b9fbee303df3621dcd280e9591bc2b9?h=854&amp;resize=1&amp;w=640"
																							class="css-doi34z"
																							data-image="https://cdn1.epicgames.com/offer/91b9a3ac7cda40718addd961fddfadca/EGS_VampireTheMasqueradeSwansong_BigBadWolf_S2_1200x1600-4b9fbee303df3621dcd280e9591bc2b9?h=854&amp;resize=1&amp;w=640"
																							data-testid="picture-image"
																							data-component="FallbackImage">
																					</div>
																				</div>
																			</div>
																			<div class="css-hkjq8i">
																				<span data-testid="offer-title-info-title"
																					class="css-2ucwu" data-component="OfferTitleInfo"><div
																						data-testid="direction-auto" class="css-1h2ruwl"
																						data-component="DirectionAuto">Vampire: The
																						Masquerade – Swansong</div></span>
																				<div class="css-1r0yqr6">
																					<div class="css-fhxb3m"
																						data-component="PriceLayout">
																						<span class="css-157lcjk"><div
																								class="css-l24hbj">
																								<span class="css-z3vg5b" data-component="Text">₩51,000</span>
																							</div></span>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div></a>
																<div class="css-xn8oeo">
																	<div data-component="DiscoverCard">
																		<button class="css-138bf6p"
																			data-component="WishlistCTAIconButton">
																			<div class="css-1u0kvap"
																				data-testid="wishbutton-circle"
																				data-component="WishButtonCircle">
																				<div data-testid="spinner" class="css-1vdsq7i"
																					data-component="WishButtonSpinner"></div>
																			</div>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div
													class="swiper-slide swiper-slide-visible swiper-slide-next"
													style="width: 211.8px; margin-right: 30px;">
													<div data-component="WithClickTracking">
														<div data-component="DiscoverCard">
															<div class="css-bjn8wh"
																data-component="DiscoverCardLayout">
																<a class="css-1jx3eyg" role="link"
																	href="/ko/p/lego-star-wars-the-skywalker-saga"
																	aria-label="에디터 선정작, 2/7, LEGO® Star Wars™: The Skywalker Saga, TT Games | Warner Bros., ₩59,000"><div
																		class="css-nnav23">
																		<div class="css-13ku56z">
																			<div class="css-f0xnhl">
																				<div class="css-1lozana"
																					data-testid="offer-card-image-portrait"
																					data-component="OfferCardImagePortrait">
																					<div data-testid="picture" data-component="Picture">
																						<img alt="LEGO® Star Wars™: The Skywalker Saga"
																							src="https://cdn1.epicgames.com/offer/9c59efaabb6a48f19b3485d5d9416032/EGS_LEGOStarWarsTheSkywalkerSaga_TTGames_S2_1200x1600-fba27b1ae598e355c3ad42d04d9025ba?h=854&amp;resize=1&amp;w=640"
																							class="css-doi34z"
																							data-image="https://cdn1.epicgames.com/offer/9c59efaabb6a48f19b3485d5d9416032/EGS_LEGOStarWarsTheSkywalkerSaga_TTGames_S2_1200x1600-fba27b1ae598e355c3ad42d04d9025ba?h=854&amp;resize=1&amp;w=640"
																							data-testid="picture-image"
																							data-component="FallbackImage">
																					</div>
																				</div>
																			</div>
																			<div class="css-hkjq8i">
																				<span data-testid="offer-title-info-title"
																					class="css-2ucwu" data-component="OfferTitleInfo"><div
																						data-testid="direction-auto" class="css-1h2ruwl"
																						data-component="DirectionAuto">LEGO® Star
																						Wars™: The Skywalker Saga</div></span>
																				<div class="css-1r0yqr6">
																					<div class="css-fhxb3m"
																						data-component="PriceLayout">
																						<span class="css-157lcjk"><div
																								class="css-l24hbj">
																								<span class="css-z3vg5b" data-component="Text">₩59,000</span>
																							</div></span>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div></a>
																<div class="css-xn8oeo">
																	<div data-component="DiscoverCard">
																		<button class="css-138bf6p"
																			data-component="WishlistCTAIconButton">
																			<div class="css-1u0kvap"
																				data-testid="wishbutton-circle"
																				data-component="WishButtonCircle">
																				<div data-testid="spinner" class="css-1vdsq7i"
																					data-component="WishButtonSpinner"></div>
																			</div>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide swiper-slide-visible"
													style="width: 211.8px; margin-right: 30px;">
													<div data-component="WithClickTracking">
														<div data-component="DiscoverCard">
															<div class="css-bjn8wh"
																data-component="DiscoverCardLayout">
																<a class="css-1jx3eyg" role="link"
																	href="/ko/p/galactic-civilizations-iv"
																	aria-label="에디터 선정작, 3/7, Galactic Civilizations IV, Stardock Entertainment | Stardock Entertainment, ₩51,000"><div
																		class="css-nnav23">
																		<div class="css-13ku56z">
																			<div class="css-f0xnhl">
																				<div class="css-1lozana"
																					data-testid="offer-card-image-portrait"
																					data-component="OfferCardImagePortrait">
																					<div data-testid="picture" data-component="Picture">
																						<img alt="Galactic Civilizations IV"
																							src="https://cdn1.epicgames.com/offer/fbab831cc1c94385b4e311f47f6fdc4f/EGS_GalacticCivilizationsIV_StardockEntertainment_S2_1200x1600-2de292ea1f5ff3e4cc7c615ea83b3e38?h=854&amp;resize=1&amp;w=640"
																							class="css-doi34z"
																							data-image="https://cdn1.epicgames.com/offer/fbab831cc1c94385b4e311f47f6fdc4f/EGS_GalacticCivilizationsIV_StardockEntertainment_S2_1200x1600-2de292ea1f5ff3e4cc7c615ea83b3e38?h=854&amp;resize=1&amp;w=640"
																							data-testid="picture-image"
																							data-component="FallbackImage">
																					</div>
																				</div>
																			</div>
																			<div class="css-hkjq8i">
																				<span data-testid="offer-title-info-title"
																					class="css-2ucwu" data-component="OfferTitleInfo"><div
																						data-testid="direction-auto" class="css-1h2ruwl"
																						data-component="DirectionAuto">Galactic
																						Civilizations IV</div></span>
																				<div class="css-1r0yqr6">
																					<div class="css-fhxb3m"
																						data-component="PriceLayout">
																						<span class="css-157lcjk"><div
																								class="css-l24hbj">
																								<span class="css-z3vg5b" data-component="Text">₩51,000</span>
																							</div></span>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div></a>
																<div class="css-xn8oeo">
																	<div data-component="DiscoverCard">
																		<button class="css-138bf6p"
																			data-component="WishlistCTAIconButton">
																			<div class="css-1u0kvap"
																				data-testid="wishbutton-circle"
																				data-component="WishButtonCircle">
																				<div data-testid="spinner" class="css-1vdsq7i"
																					data-component="WishButtonSpinner"></div>
																			</div>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide swiper-slide-visible"
													style="width: 211.8px; margin-right: 30px;">
													<div data-component="WithClickTracking">
														<div data-component="DiscoverCard">
															<div class="css-bjn8wh"
																data-component="DiscoverCardLayout">
																<a class="css-1jx3eyg" role="link"
																	href="/ko/p/god-of-war"
																	aria-label="에디터 선정작, 4/7, God of War, Santa Monica Studio | PlayStation PC LLC, ₩45,800"><div
																		class="css-nnav23">
																		<div class="css-13ku56z">
																			<div class="css-f0xnhl">
																				<div class="css-1lozana"
																					data-testid="offer-card-image-portrait"
																					data-component="OfferCardImagePortrait">
																					<div data-testid="picture" data-component="Picture">
																						<img alt="God of War"
																							src="https://cdn1.epicgames.com/offer/3ddd6a590da64e3686042d108968a6b2/EGS_GodofWar_SantaMonicaStudio_S2_1200x1600-fbdf3cbc2980749091d52751ffabb7b7_1200x1600-fbdf3cbc2980749091d52751ffabb7b7?h=854&amp;resize=1&amp;w=640"
																							class="css-doi34z"
																							data-image="https://cdn1.epicgames.com/offer/3ddd6a590da64e3686042d108968a6b2/EGS_GodofWar_SantaMonicaStudio_S2_1200x1600-fbdf3cbc2980749091d52751ffabb7b7_1200x1600-fbdf3cbc2980749091d52751ffabb7b7?h=854&amp;resize=1&amp;w=640"
																							data-testid="picture-image"
																							data-component="FallbackImage">
																					</div>
																				</div>
																			</div>
																			<div class="css-hkjq8i">
																				<span data-testid="offer-title-info-title"
																					class="css-2ucwu" data-component="OfferTitleInfo"><div
																						data-testid="direction-auto" class="css-1h2ruwl"
																						data-component="DirectionAuto">God of War</div></span>
																				<div class="css-1r0yqr6">
																					<div class="css-fhxb3m"
																						data-component="PriceLayout">
																						<span class="css-157lcjk"><div
																								class="css-l24hbj">
																								<span class="css-z3vg5b" data-component="Text">₩45,800</span>
																							</div></span>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div></a>
																<div class="css-xn8oeo">
																	<div data-component="DiscoverCard">
																		<button class="css-138bf6p"
																			data-component="WishlistCTAIconButton">
																			<div class="css-1u0kvap"
																				data-testid="wishbutton-circle"
																				data-component="WishButtonCircle">
																				<div data-testid="spinner" class="css-1vdsq7i"
																					data-component="WishButtonSpinner"></div>
																			</div>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide swiper-slide-visible"
													style="width: 211.8px; margin-right: 30px;">
													<div data-component="WithClickTracking">
														<div data-component="DiscoverCard">
															<div class="css-bjn8wh"
																data-component="DiscoverCardLayout">
																<a class="css-1jx3eyg" role="link"
																	href="/ko/p/kingdom-hearts-hd-1-5-2-5-remix"
																	aria-label="에디터 선정작, 5/7, KINGDOM HEARTS HD 1.5+2.5 ReMIX, Square Enix, ₩54,800"><div
																		class="css-nnav23">
																		<div class="css-13ku56z">
																			<div class="css-f0xnhl">
																				<div class="css-1lozana"
																					data-testid="offer-card-image-portrait"
																					data-component="OfferCardImagePortrait">
																					<div data-testid="picture" data-component="Picture">
																						<img alt="KINGDOM HEARTS HD 1.5+2.5 ReMIX"
																							src="https://cdn1.epicgames.com/4158b699dd70447a981fee752d970a3e/offer/EGS_KINGDOMHEARTSHD1525ReMIX_SquareEnix_S6-1200x1600-132fc1f63bf40a41cddbff3bab7acc52.jpg?h=854&amp;resize=1&amp;w=640"
																							class="css-doi34z"
																							data-image="https://cdn1.epicgames.com/4158b699dd70447a981fee752d970a3e/offer/EGS_KINGDOMHEARTSHD1525ReMIX_SquareEnix_S6-1200x1600-132fc1f63bf40a41cddbff3bab7acc52.jpg?h=854&amp;resize=1&amp;w=640"
																							data-testid="picture-image"
																							data-component="FallbackImage">
																					</div>
																				</div>
																			</div>
																			<div class="css-hkjq8i">
																				<span data-testid="offer-title-info-title"
																					class="css-2ucwu" data-component="OfferTitleInfo"><div
																						data-testid="direction-auto" class="css-1h2ruwl"
																						data-component="DirectionAuto">KINGDOM
																						HEARTS HD 1.5+2.5 ReMIX</div></span>
																				<div class="css-1r0yqr6">
																					<div class="css-fhxb3m"
																						data-component="PriceLayout">
																						<span class="css-157lcjk"><div
																								class="css-l24hbj">
																								<span class="css-z3vg5b" data-component="Text">₩54,800</span>
																							</div></span>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div></a>
																<div class="css-xn8oeo">
																	<div data-component="DiscoverCard">
																		<button class="css-138bf6p"
																			data-component="WishlistCTAIconButton">
																			<div class="css-1u0kvap"
																				data-testid="wishbutton-circle"
																				data-component="WishButtonCircle">
																				<div data-testid="spinner" class="css-1vdsq7i"
																					data-component="WishButtonSpinner"></div>
																			</div>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide"
													style="width: 211.8px; margin-right: 30px;">
													<div data-component="WithClickTracking">
														<div data-component="DiscoverCard">
															<div class="css-bjn8wh"
																data-component="DiscoverCardLayout">
																<a class="css-1jx3eyg" tabindex="-1" aria-hidden="true"
																	role="link" href="/ko/p/kingdom-hearts-iii"><div
																		class="css-nnav23">
																		<div class="css-13ku56z">
																			<div class="css-f0xnhl">
																				<div class="css-1lozana"
																					data-testid="offer-card-image-portrait"
																					data-component="OfferCardImagePortrait">
																					<div data-testid="picture" data-component="Picture">
																						<img alt="KINGDOM HEARTS III + Re Mind (DLC)"
																							src="https://cdn1.epicgames.com/0712176b5e3e49bfa8866c0ee1359f2d/offer/EGS_KINGDOMHEARTSIIIReMindDLC_SquareEnix_S6-1200x1600-54d8b062dc7488c71874fe2455d6c2bd.jpg?h=854&amp;resize=1&amp;w=640"
																							class="css-doi34z"
																							data-image="https://cdn1.epicgames.com/0712176b5e3e49bfa8866c0ee1359f2d/offer/EGS_KINGDOMHEARTSIIIReMindDLC_SquareEnix_S6-1200x1600-54d8b062dc7488c71874fe2455d6c2bd.jpg?h=854&amp;resize=1&amp;w=640"
																							data-testid="picture-image"
																							data-component="FallbackImage">
																					</div>
																				</div>
																			</div>
																			<div class="css-hkjq8i">
																				<span data-testid="offer-title-info-title"
																					class="css-2ucwu" data-component="OfferTitleInfo"><div
																						data-testid="direction-auto" class="css-1h2ruwl"
																						data-component="DirectionAuto">KINGDOM
																						HEARTS III + Re Mind (DLC)</div></span>
																				<div class="css-1r0yqr6">
																					<div class="css-fhxb3m"
																						data-component="PriceLayout">
																						<span class="css-157lcjk"><div
																								class="css-l24hbj">
																								<span class="css-z3vg5b" data-component="Text">₩64,400</span>
																							</div></span>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div></span>
				</div>
			</div>
		</div>
	</div>

<script>
const myCarouselElement = document.querySelector('#myCarousel')
const carousel = new bootstrap.Carousel(myCarouselElement, {
  interval: 1500,
  wrap: true,
  touch: false,
  keyboard: false
})

const myCarousel = document.getElementById('myCarousel')
var count = 0;
myCarousel.addEventListener('slide.bs.carousel', event => {
	let elements = document.getElementsByClassName('css-1plgqh1');
	  let len = elements.length;
  count++;
  console.log(count);
  switch(count % 4) {
  case 0:
	    for (let i = 0; i < len; i++){
			if(i == (count % 4)) {elements.item(i).style.opacity="1";}
			else {elements.item(i).style.opacity="0";}
	    }
	  break;
  case 1:
	    for (let i = 0; i < len; i++){
			if(i == (count % 4)) {elements.item(i).style.opacity="1";}
			else {elements.item(i).style.opacity="0";}
	    }
	  break;
  case 2:
	    for (let i = 0; i < len; i++){
			if(i == (count % 4)) {elements.item(i).style.opacity="1";}
			else {elements.item(i).style.opacity="0";}
	    }
	  break;
  case 3:
	    for (let i = 0; i < len; i++){
			if(i == (count % 4)) {elements.item(i).style.opacity="1";}
			else {elements.item(i).style.opacity="0";}
	    }
	  break;
	  
  }
})
</script>
</body>
</html>