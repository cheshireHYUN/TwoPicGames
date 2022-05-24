<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/account.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
	<div class="col-md-9 col-lg-9 col-sm-9 main-section">
		<div>
			<div class="">
				<div>
					<div class="">
						<div>
							<div class="main-container password-container">
								<div>
									<form>
										<div class="row">
											<div class="col-md-12 password-form-column">
												<div
													class="container form-container password-form-container">
													<div>
														<div class="title-section">
															<p class="title">게임 등록</p>
															<p class="description">새로운 게임을 등록합니다.</p>
														</div>
														<div class="form--body">
															<div class="form--body-column">
																<div class="password-inner-container">
																	<div class="password-fields form-fields">
																		<div class="form-field--section clearfix">
																			<div class="form-group clearfix">
																				<div>
																					<div
																						class="form-field form-field--custom password-field">
																						<input class="input confirmPassword" type="text"
																							maxlength="60" minlength="0" autocomplete="off"
																							name="name" placeholder="NAME" value="">
																					</div>
																					<div class="file-container"> <label style="margin-right:10px">COVER</label>
																						<input type="file" id="inputfile" name="cover">
																					</div>
																					<div class="file-container"><label>TRAILER</label>
																						<input type="file" id="inputfile" name="trailer">
																					</div>
																					<div
																						class="form-field form-field--custom password-field">
																						<input class="input confirmPassword" type="text"
																							maxlength="100" minlength="0" autocomplete="off"
																							name="price" placeholder="PRICE" value="">
																					</div>
																					<div
																						class="form-field form-field--custom password-field">
																						<input class="input confirmPassword" type="text"
																							maxlength="100" minlength="0" autocomplete="off"
																							name="developer" placeholder="AGE" value="">
																					</div>
																					<!-- 달력 영역 -->
																					<laebl>RELDATE</laebl>
																					<input type="date" name="date" />
																					<div style="margin-top: 10px">
																						<label>PUBLISHER</label><br> <select
																							class="selectpicker" multiple
																							data-live-search="true" name="publisher">
																							<option value="kakao">카카오</option>
																							<option value="naver">네이버</option>
																							<option value="daum">다음</option>
																							<option value="mihoyo">mihoyo</option>
																						</select>
																					</div>
																					<div style="margin-top: 10px">
																						<label>JENRE</label><br> <select
																							class="selectpicker" multiple
																							data-live-search="true" name="janre">
																							<option value="detail11">액션</option>
																						</select>
																					</div>
																					<div style="margin-top: 10px">
																						<label>FUNCTION</label><br> <select
																							class="selectpicker" multiple
																							data-live-search="true" name="janre">
																							<option value="detail33">싱글플레이어</option>
																						</select>
																					</div>
																					<div style="margin-top: 10px">
																						<label>PLATFORM</label><br> <select
																							class="selectpicker" multiple name="platform">
																							<option value="detail39">Window</option>
																							<option value="detail39">MAC</option>
																						</select>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="submit-section col-md-12">
																	<div class="submit-btns hidden-mobile password-submit ">
																		<div>
																			<button type="button"
																				class="btn btn-default btn-custom ">취소</button>
																			<button type="submit"
																				class="btn btn-submit btn-custom undefined">저장</button>
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example-includeSelectAllOption').multiselect({
				includeSelectAllOption : true
			});
		});

		var fileTarget = $('.filebox .upload-hidden');
		fileTarget.on('change',
				function() {
					// 값이 변경되면 
					if (window.FileReader) { // modern browser 
						var filename = $(this)[0].files[0].name;
					} else { // old IE 
						var filename = $(this).val().split('/').pop().split(
								'\\').pop(); // 파일명만 추출 
					} // 추출한 파일명 삽입 
					$(this).siblings('.upload-name').val(filename);
				});
	</script>
</body>
</html>