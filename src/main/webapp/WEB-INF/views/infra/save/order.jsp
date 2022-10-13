<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

				<div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
				  	<div style="margin-top: 3rem;"><h4><b>2022.07.22 주문 상세 내역</b></h4></div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>배송 완료</b></h4></div>
					<div style="margin-top: 2rem;"><span>결제수단</span></div>
					<hr>
					<div id="gray">
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>총 상품금액</span></div>
							<div class="col-2 text-end"><span>1,300,000원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>상품 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 220,000원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>쿠폰 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 40,000원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>배송비</span></div>
							<div class="col-2 text-end"><span> 0원</span></div>
						</div>
					</div>
					<hr style="margin-top: 1rem;">
					<div class="row justify-content-between" style="margin-top: 1rem;">
						<div class="col-2" id="finalPrice"><h5><b>총 결제 금액</b></h5></div>
						<div class="col-2 text-end" id="finalPrice"><span><h5><b>1,040,000원</b></h5></span></div>
					</div>
					<div class="row justify-content-between">
						<div class="col-3"><span>카카오 페이 결제 금액</span></div>
						<div class="col-2 text-end" id="finalPrice"><span>1,040,000원</span></div>
					</div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>구매 물품</b></h4></div>	
					<div class="row">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/27b658a7-53e1-47ca-a1bd-6c9bb5f7f93b/2048xauto.webp" width="200px" height="140px">
						</div>
						<div class="col-9">
							<div><h5>[유랑] 무명 이모티콘 작가가 인기 작가가 된 비결! 경쟁에서 살아...</h5></div>
							<div><span>20주 수강권</span></div>
						</div>
					</div>	
					<div>
						<a type="button" class="btn btn-light" id="button1"><b>환불하기</b></a>
					</div>
					<div style="margin-top: 3rem;"><h4><b>2022.05.17 주문 상세 내역</b></h4></div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>배송 완료</b></h4></div>
					<div style="margin-top: 2rem;"><span>결제수단</span></div>
					<hr>
					<div id="gray">
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>총 상품금액</span></div>
							<div class="col-2 text-end"><span>187,500원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>상품 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 37.500원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>쿠폰 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 0원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>배송비</span></div>
							<div class="col-2 text-end"><span> 0원</span></div>
						</div>
					</div>
					<hr style="margin-top: 1rem;">
					<div class="row justify-content-between" style="margin-top: 1rem;">
						<div class="col-2" id="finalPrice"><h5><b>총 결제 금액</b></h5></div>
						<div class="col-2 text-end" id="finalPrice"><span><h5><b>150,000원</b></h5></span></div>
					</div>
					<div class="row justify-content-between">
						<div class="col-3"><span>카카오 페이 결제 금액</span></div>
						<div class="col-2 text-end" id="finalPrice"><span>150,000원</span></div>
					</div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>구매 물품</b></h4></div>	
					<div class="row">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/dfd02760-c3e2-4ea7-8eb1-a93cf10fa746/375xauto.webp" width="200px" height="140px">
						</div>
						<div class="col-9">
							<div><h5>[드로우 앤드류] 인스타그램으로 세상에 나의 가치를 알려보자. 인스타...</h5></div>
							<div><span>20주 수강권</span></div>
						</div>
					</div>	
					<div>
						<a type="button" class="btn btn-light" id="button1"><b>환불하기</b></a>
					</div>
					<div style="margin-top: 3rem;"><h4><b>2022.01.01 주문 상세 내역</b></h4></div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>배송 완료</b></h4></div>
					<div style="margin-top: 2rem;"><span>결제수단</span></div>
					<hr>
					<div id="gray">
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>총 상품금액</span></div>
							<div class="col-2 text-end"><span>375,000원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>상품 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 112,500원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>쿠폰 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 0원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>배송비</span></div>
							<div class="col-2 text-end"><span> 0원</span></div>
						</div>
					</div>
					<hr style="margin-top: 1rem;">
					<div class="row justify-content-between" style="margin-top: 1rem;">
						<div class="col-2" id="finalPrice"><h5><b>총 결제 금액</b></h5></div>
						<div class="col-2 text-end" id="finalPrice"><span><h5><b>262,500</b></h5></span></div>
					</div>
					<div class="row justify-content-between">
						<div class="col-3"><span>카카오 페이 결제 금액</span></div>
						<div class="col-2 text-end" id="finalPrice"><span>262,500원</span></div>
					</div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>구매 물품</b></h4></div>	
					<div class="row">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/cb2119ec-b977-49e3-a1a4-b674081ed809/750xauto.webp" width="200px" height="140px">
						</div>
						<div class="col-9">
							<div><h5>[콕스] 초보 그림러가 인기 작가가 되는 법, 콕스의 독학비법서</h5></div>
							<div><span>1년 수강권</span></div>
						</div>
					</div>	
					<div>
						<a type="button" class="btn btn-light" id="button1"><b>환불하기</b></a>
					</div>
				  </div>	