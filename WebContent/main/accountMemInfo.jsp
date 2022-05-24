<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/accountMemInfo.css">
</head>
<body>
	<div class="col-md-9 col-lg-9 col-sm-9 main-section">
		<div>
			<div class="">
				<div>
					<div class="personal-view">
						<form>
							<div>
								<div class="">
									<div class="load-root-container">
										<div class="main-container personal-info-container">
											<div class="row">
												<div class="col-md-12 form-column">
													<div class="form-container">
														<div class="form--body">
															<div class="form--body-column">
																<div>
																	<div class="">
																		<div class="general-settings-ref">
																			<div class="row general-settings-container">
																				<div class="col-md-12 title-section">
																					<div class="title-section">
																						<p class="title">일반 설정</p>
																						<p class="description">이름, 이메일 등 투픽게임즈에 공유된
																							계정 정보를 확인하고 관리할 수 있습니다.</p>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="form-fields username-field account-info-fields ko">
																	<div class="form-field--section clearfix">
																		<div class="title-section sub-title">
																			<p class="title">계정 정보</p>
																		</div>
																		<div class="col-md-12 account-id-section">
																			<div class="paragraph-container">
																				<p class="paragraph p-body">
																					<span class="bold account-id-label">ID: </span>2edb83bfcf954cac845ba9dd7d67dacc
																				</p>
																			</div>
																		</div>
																		<div class="form-fields name-fields">
																	<div class="form-field--section clearfix">
																		<div>
																			<div
																				class="form-field form-field--custom col-md-6 col-xs-12 full-name">
																				<input class="input firstName" type="text"
																					maxlength="30" minlength="0" autocomplete="on"
																					name="mem_name" placeholder="이름 " value="">
																				<!-- 미입력시 출력할 영역 -->
																				<div class="input-message">이름을 입력하세요.</div>
																			</div>
																			<div
																				class="form-field form-field--custom col-md-6 col-xs-12 full-name">
																				<input class="input firstName" type="text"
																					maxlength="30" minlength="0" autocomplete="on"
																					name="mem_mail" placeholder="이메일 " value="">
																				<div class="input-message">이메일을 입력하세요.</div>
																			</div>
																		</div>
																	</div>
																</div>
																	</div>
																</div>
																<div class="title-section sub-title personal-info">
																	<p class="title">개인 세부 정보</p>
																	<p class="description">
																		<span>전화번호, 주민번호 앞자리 등 투픽게임즈에 공유된 정보를 관리합니다. 개인 정보는
																			비공개로 설정되어 다른 사용자에게 표시되지 않습니다.
																		</span>
																	</p>
																</div>
																<div class="form-fields name-fields">
																	<div class="form-field--section clearfix">
																		<div>
																			<div
																				class="form-field form-field--custom col-md-6 col-xs-12 full-name">
																				<input class="input firstName" type="text"
																					maxlength="30" minlength="0" autocomplete="on"
																					name="mem_ph" placeholder="전화번호" value="">
																				<div class="input-message">전화번호를 입력하세요.</div>
																			</div>
																			<div
																				class="form-field form-field--custom col-md-6 col-xs-12 full-name">
																				<input class="input firstName" type="text"
																					maxlength="30" minlength="0" autocomplete="on"
																					name="firstName" placeholder="주민번호 앞자리" value="">
																				<div class="input-message">주민번호를 입력하세요.</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="form--body">
															<div class="form--body-column">
																<div class="submit-section">
																	<div class="submit-btns hidden-mobile desktop ">
																		<div>
																			<button type="button"
																				class="btn btn-default btn-custom ">변경사항 버림</button>
																			<button type="submit"
																				class="btn btn-submit btn-custom undefined">변경사항
																				저장</button>
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
								</div>
							</div>
						</form>
					</div>
					<div>
						<div class=""></div>
					</div>
					<div>
						<div class="">
							<div class="account-deletion-ref">
								<div class="main-container account-deletion-container row">
									<div class="row">
										<div class="col-md-12 form-column">
											<div class="form-container">
												<div class="col-md-12 title-section">
													<div class="title-section">
														<p class="title">계정 삭제</p>
													</div>
												</div>
												<div class="col-md-8 description-section">
													<div class="title-section">
														<p class="title"></p>
														<p class="description"><span class="bold error">계정 삭제 요청을 클릭하여 모든 개인 정보, 구매 내역, 게임 진행 상황을 포함하여
														 투픽게임즈 계정을 영구 삭제하는 절차를 시작합니다.</span>
															</span>
														</p>
													</div>
												</div>
												<div class="col-md-4 button-section">
													<div class="btn-container">
														<button id="" type="submit"
															class="btn btn-custom btn-submit-custom btn-submit-custom"
															data-tip="">계정 삭제 요청</button>
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
			</div>
		</div>
	</div>
</body>
</html>