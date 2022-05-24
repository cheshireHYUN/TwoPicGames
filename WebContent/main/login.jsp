<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/login.css">
</head>
<body style="background: rgba(0, 0, 0, 0.93); overflow: hidden;">
	<div role="presentation" class="MuiDialog-root" header="header.signIn"
		style="position: fixed; z-index: 1300; inset: 0px;">
		<div tabindex="0" data-test="sentinelStart"></div>
		<div class="MuiDialog-container MuiDialog-scrollBody"
			role="none presentation" tabindex="-1"
			style="opacity: 1; transition: opacity 225ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;">
			<div
				class="MuiPaper-root MuiDialog-paper MuiDialog-paperScrollBody MuiDialog-paperWidthSm MuiPaper-elevation0 MuiPaper-rounded"
				role="dialog">
				<div class="MuiDialogContent-root sc-jJEKmz eoYCft"
					id="modal-content">
					<div class="sc-hiSbEG yeDSp"></div>
					<div class="sc-gWHigU iCPaAK">
						<div style="opacity: 1; transform: none;">
							<!-- <span name="epic-logo" class="sc-iBPTik jUHlxN sc-bkzYnD bEiEtT"></span> -->
							
							
							<div class="sc-bdfBQB OcXLO">
								<h6
									class="MuiTypography-root sc-dmlqKv gKbqoA sc-hHfuMS epIHKZ MuiTypography-subtitle2 MuiTypography-colorTextPrimary MuiTypography-alignCenter">에픽게임즈
									계정으로 로그인하세요</h6>
							</div>
							<!-- 로그인 폼 영역 -->
							<form class="sc-eCstlR iMhQAk">
								<div
									class="MuiFormControl-root MuiTextField-root MuiFormControl-fullWidth">
									<label
										class="MuiFormLabel-root MuiInputLabel-root MuiInputLabel-formControl MuiInputLabel-animated MuiInputLabel-shrink MuiInputLabel-outlined MuiFormLabel-filled"
										data-shrink="true" for="email" id="email-label">이메일 주소</label>
									<div
										class="MuiInputBase-root MuiOutlinedInput-root MuiInputBase-fullWidth MuiInputBase-formControl">
										<input autocomplete="username" id="email" name="email"
											type="email" inputmode="email" aria-label="이메일 주소"
											aria-errormessage="email-error" autocorrect="off"
											autocapitalize="none" spellcheck="false"
											class="MuiInputBase-input MuiOutlinedInput-input"
											value="wonspirit0113@naver.com">
										<fieldset aria-hidden="true"
											class="jss3 MuiOutlinedInput-notchedOutline">
											<legend class="jss5 jss6">
												<span>아이디</span>
											</legend>
										</fieldset>
									</div>
								</div>
								<div
									class="MuiFormControl-root MuiTextField-root MuiFormControl-fullWidth">
									<label
										class="MuiFormLabel-root MuiInputLabel-root MuiInputLabel-formControl MuiInputLabel-animated MuiInputLabel-shrink MuiInputLabel-outlined MuiFormLabel-filled"
										data-shrink="true" for="password" id="password-label">비밀번호</label>
									<div
										class="MuiInputBase-root MuiOutlinedInput-root MuiInputBase-fullWidth MuiInputBase-formControl MuiInputBase-adornedEnd MuiOutlinedInput-adornedEnd">
										<input autocomplete="current-password" id="password"
											name="password" type="password" inputmode="text"
											aria-label="비밀번호" aria-errormessage="password-error"
											class="MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputAdornedEnd MuiOutlinedInput-inputAdornedEnd"
											value="tjdrb0113~">
										<fieldset aria-hidden="true"
											class="jss3 MuiOutlinedInput-notchedOutline">
											<legend class="jss5 jss6">
												<span>비밀번호</span>
											</legend>
										</fieldset>
									</div>
								</div>
								<!-- 입력 안했을 때 보여줄 영역 -->
								<!-- <p
									class="MuiFormHelperText-root MuiFormHelperText-contained Mui-error"
									id="password-helper-text">
									<span
										class="MuiTypography-root sc-dmlqKv gKbqoA sc-laRQdt gVmJYd MuiTypography-body2"
										aria-live="polite" role="status">필수</span>
								</p> -->
								<!-- 비밀번호 찾기 이동 영역 -->
								<div spacing="0" class="sc-jSgvzq cZwfJW">
									<a
										class="MuiTypography-root MuiLink-root MuiLink-underlineAlways sc-bBrNTY dPLqrm MuiTypography-colorTextPrimary"
										href="#" id="to-forgot-password" aria-label="비밀번호를 잊으셨나요?"><span
										class="MuiTypography-root sc-dmlqKv gKbqoA sc-cOajNj jsMVcl MuiTypography-body2">비밀번호를
											잊으셨나요?</span></a>
								</div>
								<div></div>
								<!-- 로그인 버튼 영역 -->
								<div spacing="6" class="sc-bdfBQB sc-dlfnuX hLrQQY bdzcew">
									<button
										class="MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedPrimary jss15 MuiButton-disableElevation MuiButton-fullWidth"
										tabindex="0" type="submit" id="sign-in" aria-label="지금 로그인">
										<span class="MuiButton-label"><span class="jss19">지금
												로그인</span></span>
									</button>
								</div>
							</form>
							<!-- 회원가입 이동 링크 영역 -->
							<div class="sc-gKseQn bnjmag">
								<span
									class="MuiTypography-root sc-dmlqKv gKbqoA MuiTypography-body2">에픽게임즈
									계정이 없으신가요?&nbsp;</span><a
									class="MuiTypography-root MuiLink-root MuiLink-underlineAlways sc-bBrNTY dPLqrm MuiTypography-colorTextPrimary"
									href="#" id="to-register" aria-label="가입"><span
									class="MuiTypography-root sc-dmlqKv gKbqoA sc-cOajNj jsMVcl MuiTypography-body2">가입</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div tabindex="0" data-test="sentinelEnd"></div>
	</div>
</body>
</html>