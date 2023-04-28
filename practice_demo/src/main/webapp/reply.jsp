<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>


<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3.0">
  <title>Esther--------</title>
  <link rel="stylesheet" href="hc10.css">
  <style type="text/css"></style>
  <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
  <script type="text/javascript" src="h12.js"></script>
  <script type="text/javascript"></script>
  <script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>


<body>

  <article class = "board">
    <h2 class="center">Board</h2>
    <section class="martop50">
      <h4 class="center">글 작성하기</h4>
      <select class="martop50">
        <option>카테고리</option>
        <option>리뷰</option>
        <option>고객의 소리</option>
      </select>
      <div class="padupdw">
        <label><input type="text" placeholder="제목을 입력하세요."></label>
      </div>
      <textarea name="memo" rows="10" cols="40" placeholder="내용을 입력하세요."></textarea>
      <div class="file-upload"> <!--파일업로드 버튼-->
        <label for="ex_file"><img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png"></label>
        <input type="file" id="ex_file">
        <label for="ex_file"><img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png"></label>
        <input type="file" id="ex_file">
        <label for="ex_file"><img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png"></label>
        <input type="file" id="ex_file">
        <label for="ex_file"><img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png"></label>
        <input type="file" id="ex_file">
      </div>
      <div class="spabet">
        <button class="greybtn">임시저장</button>
        <button class="blackbtn">등록하기</button>
      </div>
    </section>
  </article>


  <article>
    <section class="post">
      <h4 class="center">게시글 보기</h4> <!--nth-child(1)-->
      <h4 class="center martop50">비비고 인기 제품 4종 비교</h4> <!--nth-child(2)-->
      <h6 class="grey center">에디터가 엄선한 최애 만두는?</h6> <!--nth-child(3)-->
      <div class="spabet martop50">   <!--nth-child(4)-->
        <h6 class="grey">2022.09.09</h6>
        <div class="flex">
          <h6>좋아요</h6>
          <h6 class="grey">24</h6>
          <h6>조회수</h6>
          <h6 class="grey">312</h6>
        </div>
      </div>
      <div class="postlist martop50">  <!--nth-child5-->
        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189023724-8e1f25a4-010b-4138-a03f-efd230e83dee.jpg">
          </div>
          <h5 class="center">세계 1위 만두 비비고 왕교자</h5>
        </div>
        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189023728-a2d594d0-791b-4b75-adea-7fd8ff4786d9.jpg">
          </div>
          <h5 class="center">뜨끈뜨끈한 전골에 딱! 비비고 새우 왕교자</h5>
        </div>
        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189023731-7dad5cad-ca8d-49f8-a25e-cec92a002e78.jpg">
          </div>
          <h5 class="center">건강한 재료를 듬뿍 비비고 왕만두</h5>
        </div>
        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189023732-a34a17eb-a8bd-4d12-8597-66c5e93456da.png">
          </div>
          <h5 class="center">육즙이 가득 비비고 소고기 한섬만두</h5>
        <div>
      </div>
      <div class="icons flex">  <!--nth-child6-->
        <div>
          <img src="https://user-images.githubusercontent.com/112612653/189023735-4db2f0fb-7f53-4600-8e6b-ab0c27badfd2.png">
        </div>
        <div>
			  	<img src="https://user-images.githubusercontent.com/112612653/189023736-760c8c59-ad26-459a-b051-176591a6b754.png">
        </div>
      </div>
      <div class="reply">   <!--nth-child7-->
        <h5>댓글 2개</h5>
        <div class="flex padupdw">
          <img src="https://user-images.githubusercontent.com/112612653/189023768-c2387f31-2463-4198-9078-3e3eaa56f7a0.png">
          <div class="flex">
            <div>
              <h5>cjlover</h5>
              <p>정말 맛있고 건강한 재료들이 들어가서 좋아요.</p>
              <h6 class="grey">1시간 전</h6>
            </div>
            <img src="https://user-images.githubusercontent.com/112612653/189023767-c8fd2d91-9928-41bd-a758-b94befaafe23.png">
          </div>
        </div>
        <div class="flex padupdw">
          <img src="https://user-images.githubusercontent.com/112612653/189023768-c2387f31-2463-4198-9078-3e3eaa56f7a0.png">
          <div class="flex">
            <div>
              <h5>shrimpmania</h5>
              <p>새우살이 탱글탱글하게 씹혀요!</p>
              <h6 class="grey">1시간 전</h6>
            </div>
            <img src="https://user-images.githubusercontent.com/112612653/189023767-c8fd2d91-9928-41bd-a758-b94befaafe23.png">
          </div>
        </div>
      </div>
      <textarea class= "martop30" type="text" name="memo" cols="" rows="3" placeholder="댓글을 입력하세요."></textarea> <!--nth-child8-->
      <div class="spabet martop30"> <!--nth-child9-->
        <label><input type="checkbox"> 비밀글</label>
        <button class="blackbtn">등록하기</button>
      </div>
      <div class="secret">      <!--nth-child10-->
        <h5>인기 게시글</h5>
        <div class="flex padupdw">
          <p>주변에 한두 명쯤은 유독 면을 좋아하는 사람들이 있지 않나요? 밥보다 면을 더 좋아하는 사람들 말입니다. 길게 뽑은 면을 기호에 맞춰 육수와 고명을 넣고 후루룩 소리를 내며 먹는 면 요리는 전 세계인들이 사랑하는 메뉴입니다. 그렇다면 한국인이 특히나 좋아하는 면 요리는 어떤 종류가 있을까요?</p>
          <img src="https://user-images.githubusercontent.com/112612653/189023765-68d5a9df-e1e4-4fe5-8b87-09634bd8d4b6.png">
        </div>
        <div class="flex padupdw">
          <p>바삭하게 구운 고소한 껍질과 부드럽고 짭조름한 살코기의 생선구이! 특별한 반찬 없이도 밥 한 그릇을 뚝딱 해치울 수 있는 생선구이는 최고의 집밥 메뉴입니다. 그러나 번거로운 생선 손질과 특유의 비린내, 굽는 내내 집안을 연기로 가득히 채워야 하는 불편함 때문에 용기 없이는 못 먹는 음식이기도 한데요.</p>
          <img src="https://user-images.githubusercontent.com/112612653/189023761-2c1a1c3f-a408-4bc6-924f-e2cac7a93ba9.png">
        </div>
        <div class="flex padupdw">
          <p>여름이 시작되면 반년간 열심히 달려온 보상으로 여름휴가를 계획하게 됩니다.최근에는 해외로 휴가를 떠나는 사람들의 비율이 급격히 높아졌는데요. 일상 탈출과 함께 여행지에서의 새로운 경험을 기대하며 출국 날 만을 손꼽아 기다린 적, 다들 있으시죠? 떠나기 전 날 밤에는 체크리스트까지 만들어가며 꼼꼼히 짐을 쌉니다..</p>
          <img src="https://user-images.githubusercontent.com/112612653/189023763-8c8669eb-38fb-439c-9561-c992da79be83.png">
        </div>
      </div>
    </section>
  </article>


  <article>
    <section class="board_list">
      <h4 class="center">게시글 목록</h4>
      <div>
        <div>
          <img src="https://user-images.githubusercontent.com/112612653/189023737-22b71c9b-f80f-4c73-b978-3813ea0e6d14.jpg">
        </div>
        <div>
          <h4>빅데이터를 통해 들여다 본 ‘혼밥’ 문화</h4>
          <p>혼밥(혼자 먹는 밥), 혼술(혼자 먹는 술) 등, 나 혼자 즐기는 식사가 익숙한 문화로 자리잡은 요즘입니다. 빅데이터를 통해 들여다 본 대한민국 혼밥 문화는 어떤 모습일까요?</p>
          <h6 class="grey">cjeditor · 6시간 전</h6>
        </div>
      </div>
      <div>
        <div>
          <img src="https://user-images.githubusercontent.com/112612653/189023740-e332b6a8-f131-4fd4-ae6f-f4789ec1363e.jpg">
        </div>
        <div>
          <h4>19년 상반기 HMR 신제품 출시 트렌드</h4>
          <p>19년 상반기 대한민국에 출시된 HMR 제품들의 특징을 짚어봅니다. 18년, 19년 상반기 국내 출시된 약 1,400여 개의 HMR 신제품 특징을 분석하여 도출한 3가지의 특징입니다.</p>
          <h6 class="grey">cjeditor · 3일 전</h6>
        </div>
      </div>
      <div>
        <div>
          <img src="https://user-images.githubusercontent.com/112612653/189023742-024eac01-fd67-4bfa-a086-8bd019640170.jpg">
        </div>
        <div>
          <h4>대한민국 소비자들의 HMR 경험 변화: 1편 - 밥</h4>
          <p>HMR(Home Meal Replacement), 즉 짧은 시간 안에 간편하게 즐길 수 있는 가정 간편식 제품이 낯설지 않은 요즘이다.</p>
          <h6 class="grey">cjeditor · 10일 전</h6>
        </div>
      </div>
      <div>
        <div>
          <img src="https://user-images.githubusercontent.com/112612653/189023745-847f1343-3d31-487e-8705-99a357c5b5f8.jpg">
        </div>
        <div>
          <h4>글로벌 시장 속의 한식 성장 가능성</h4>
          <p>글로벌 소비자들이 보다 이국적인 맛에 눈길을 돌리고 있다. 글로벌 시장에서 이미 대중화된 Italian, Mexican, Japanese 음식 외에, 더욱 이국적이고 새로운 맛으로 한식이 떠오르고 있다. 한식의 글로벌 성장 가능성을 3가지로 짚어봤다.
cjeditor · 17일 전</p>
          <h6 class="grey">cjeditor · 17일 전</h6>
        </div>
      </div>
      <div>
        <button><a href="#top">더 보기 +</a></button>
      </div>
    </section>
  </article>


  <article class="qna">
    <h2 class="center">QNA</h2>
    <section>
      <h4 class="center">문의하기</h4>   <!--nth-child(1)-->
      <select class="martop50"> <!--nth-child(2)-->
        <option>선택해주세요</option>
        <option>제품</option>
        <option>브랜드</option>
        <option>이벤트</option>
        <option>아이디어 제안</option>
        <option>고객의 소리</option>
        <option>회사일반문의</option>
      </select>
      <div class="spabet martop30"> <!--nth-child(3)-->
        <h5 class="grey">선택해주세요</h5>
        <img src="https://cdn-icons-png.flaticon.com/512/60/60995.png">
      </div>
      <div>                             <!--nth-child(4)-->
        <textarea class="martop30" name="memo" rows="15" cols="40" placeholder="문의 내용을 입력해주세요. (2000자 이내)"></textarea>
        <p>0/2000자</p>
      </div>
      <div class="spabet">              <!--nth-child(5)-->
        <div class="file-upload martop30"> <!--파일업로드 버튼-->
          <label for="ex_file">첨부파일</label>
          <input type="file" id="ex_file">
        </div>
        <h6>5MB이하의 이미지 파일(JPG, PNG, GIF)<br>1개 첨부하실 수 있습니다.</h6>
      </div>
      <div>                                <!--nth-child(6)-->
        <p class="center">문의에 대한 <span>답변 등록 여부</span>를 알려드립니다.</p>
        <label><input type="checkbox"><span class="bold">&nbsp;&nbsp;SMS</span></label>
        <div class="flex">
          <select>
            <option>010</option>
            <option>011</option>
            <option>016</option>
            <option>017</option>
            <option>018</option>
            <option>019</option>
            <option>0130</option>
            <option>0303</option>
            <option>0502</option>
            <option>0503</option>
            <option>0504</option>
            <option>0505</option>
            <option>0506</option>
          </select>
          <span>‑</span>
          <input type="text"></t>
          <span>‑</span>
          <input type="text"></input>
        </div>
        <label><input type="checkbox"><span class="bold">&nbsp;&nbsp;이메일</span></label>      <!--nth-child(7)-->
        <div class="spabet">                          <!--nth-child(8)-->
          <input type="text"></input>
          <select>
            <option>직접입력</option>
            <option abled selected>@naver.com</option>
            <option>@gmail.com</option>
            <option>@daum.com</option>
            <option>@hanmail.com</option>
          </select>
        </div>
        <div class="center"><button class="martop30">등록하기</button></div>    <!--nth-child(9)-->
      </div>
    </section>
  </article>

  <article class="complete">
    <section>
      <h4 class="center">문의 완료</h4>
      <div class="center">
        <img src="https://user-images.githubusercontent.com/112612653/189384009-5851c87e-3945-4384-8252-73943f51bfaa.png">
      </div>
      <h4 class="center">문의가 정상적으로 등록되었습니다.<br>이용해주셔서 감사합니다.</h4>
      <h5 class="center">영업일 기준으로 3일 이내에 답변드립니다.</h5>
      <div class="center">
        <button class="greybtn">홈으로</button>
        <button class="greybtn">나의 문의 목록</button>
      </div>
    </section>
  </article>

  <article class="history">
    <section>
      <h4 class="center">문의 내역</h4>
      <div>
        <h4>1:1 문의 내역이 <span style="color: #F32626;">3</span>건 있습니다.</h4>
      </div>
      <div class="martop30">
        <div>
          <div class="spabet" onclick="dropDown1()">
            <div class="flex">
              <button>답변대기</button>
              <h5>제일제당 SNS 페이지가 궁금..</h5>
            </div>
            <img src="https://user-images.githubusercontent.com/112612653/189383975-fe1d621f-1941-4825-92a4-ae69d5242497.png">
          </div>
          <div id="dd1">
            <div>
              <p class="bold">질문</p>
              <p>제일제당 SNS 페이지가 궁금합니다. 공식 SNS 페이지를 알려주세요.</p>
            </div>
            <div>
              <p class="bold">⤷ 답변</p>
              <p>아직 질문에 답변이 달리지 않았습니다. 영업일 기준 3일 이내로 회신드립니다.</p>
            </div>
          </div>
        </div>
        <div>
          <div class="spabet" onclick="dropDown2()">
            <div class="flex">
              <button>답변완료</button>
              <h5>이벤트 당첨 상품이 아직 도착..</h5>
            </div>
            <img src="https://user-images.githubusercontent.com/112612653/189383975-fe1d621f-1941-4825-92a4-ae69d5242497.png">
          </div>
          <div id="dd2">
            <div>
              <p class="bold">질문</p>
              <p>이벤트 당첨 상품이 아직 도착하지 않았습니다. 언제쯤 수령할 수 있을까요?</p>
            </div>
            <div>
              <p class="bold">⤷ 답변</p>
              <p>아직 질문에 답변이 달리지 않았습니다. 영업일 기준 3일 이내로 회신드립니다.</p>
            </div>
          </div>
        </div>
        <div>
        <div class="spabet" onclick="dropDown3()">
            <div class="flex">
              <button>답변완료</button>
              <h5>이벤트 당첨 여부를 어떻게 알 수..</h5>
            </div>
            <img src="https://user-images.githubusercontent.com/112612653/189383975-fe1d621f-1941-4825-92a4-ae69d5242497.png">
          </div>
          <div id="dd3">
            <div>
              <p class="bold">질문</p>
              <p>이벤트 당첨 여부를 어떻게 알 수 있나요?</p>
            </div>
              <div>
              <p class="bold">⤷ 답변</p>
              <p>이벤트에 당첨되신 고객님의 경우 문자 메시지로 별도 연락을 드리고 있습니다. 감사합니다.</p>
            <div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </article>

  <article class="news">
    <section>
      <h2 class="center">News</h2>
      <h4 class="center">제일제당의 소식을<br>한 눈에 모아보세요.</h4>
      <div class="center"><span>‒</span></div>
      <h5 class="center">미디어 홍보 자료 및 최신 소식을 알려드립니다.</h5>
    </section>
  </article>

  <article class="total">
    <section>
      <div class="flex">   <!--section> :nth-child(1)-->
        <p style="font-weight:bold;">총 <span style="color: #F32626; font-weight: bold; font-size: 1.5rem;">312</span> 건</p>
      </div>
      <div class="center flex">   <!--section> :nth-child(2)-->
        <select>
          <option>전체</option>
          <option>제목</option>
          <option>내용</option>
        </select>
        <div class="spabet">
          <input type="text" placeholder="검색어를 입력하세요.">
          <img src="https://www.freeiconspng.com/thumbs/search-icon-png/search-icon-png-18.png">
        </div>
      </div>
      <div class="digicook">  <!--section> :nth-child(3)-->
        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189786687-d6f3fb7c-0209-4a70-b1d5-a77cc09edde8.jpg">
            <div>
              <img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png">
            </div>
          </div>
          <div>
            <h4>디지털 쿠킹 스튜디오 CJ더키친</h4>
            <p>2021년 새롭게 오픈한 CJ더키친. CJ더키친은 CJ제일제당의 디지털 콘텐츠 제작과 함께 온/오프라인 쿠킹 클래스를 운영하는 스튜디오입니다.</p>
            <h6 class="grey">22.06.01</h6>
          </div>
        </div>

        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189786689-69add717-c165-4281-a6cb-74986118bbd3.png">
            <div>
              <img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png">
            </div>
          </div>
          <div>
            <h4>비비고 플랜테이블 만두… B2B로 확대</h4>
            <p>‘100% 식물성 만두’라는 새로운 시장을 창출하며 인기 몰이 중인‘비비고 플랜테이블 만두’가 고객과의 접점을 더욱 확대하고 있다.</p>
            <h6 class="grey">22.05.23</h6>
          </div>
        </div>

        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189786691-2c9f05aa-41cf-4159-8950-3cceeda1c889.jpg">
            <div>
              <img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png">
            </div>
          </div>
          <div>
            <h4>비비고 만두의 금의환향… 美 1위</h4>
            <p>미국에서‘K-만두’의 위상을 높인 비비고 만두가 국내 소비자들을 만난다.</p>
            <h6 class="grey">22.05.21</h6>
          </div>
        </div>

        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189786694-390af0ea-642e-4da4-a3e1-1d4d49cb92a0.jpg">
            <div>
              <img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png">
            </div>
          </div>
          <div>
            <h4>CJ제일제당, 비닐 라벨 없앤 ‘스팸 라벨프리’ 제품 선보인다</h4>
            <p>CJ제일제당 스팸이 환경을 생각하는 소비 트렌드에 맞춘 새로운 시도로 소비자를 만난다.</p>
            <h6 class="grey">22.05.18</h6>
          </div>
        </div>
        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189786695-a8908204-b0b2-4436-bdb1-98e936f7b8a4.jpg">
            <div>
              <img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png">
            </div>
          </div>
          <div>
            <h4>CJ제일제당, 2022 베이징 동계올림픽 대한민국 선수단 후원</h4>
            <p>CJ제일제당이 2022 베이징 동계올림픽에 출전하는 대한민국 선수단의 적극적인 후원에 나섰다.</p>
            <h6 class="grey">22.01.27</h6>
          </div>
        </div>
        <div>
          <div>
            <img src="https://user-images.githubusercontent.com/112612653/189786697-13738e7c-0015-48ce-b482-6b8b1a029b43.jpg">
            <div>
              <img src="https://images.squarespace-cdn.com/content/v1/56e19ec5e3214084d69d4b7d/1473524254173-BGV5W2Z5FM46F67SYZHJ/PlusIcon_Small_Gray.png">
            </div>
          </div>
          <div>
            <h4>CJ제일제당, 지속가능(ESG)경영 수상 잇따라…</h4>
            <p>2CJ제일제당이 국내외에서 최고 수준의 지속가능(ESG)경영 실천 성과를 인정받고 있다.</p>
            <h6 class="grey">21.12.13</h6>
          </div>
        </div>
      </div>
      <div class="container">
        <ul class="tabs flex">   <!--section> :nth-child(4)-->
          <li class="tab-button2 tab-link tabmenu-color2 current" data-tab="tab-1">1</li>
          <li class="tab-button2 tab-link" data-tab="tab-2">2</li>
          <li class="tab-button2 tab-link" data-tab="tab-3">3</li>
          <li class="tab-button2 tab-link" data-tab="tab-4">4</li>
          <li class="tab-button2 tab-link" data-tab="tab-5">5</li>
        </ul>
      </div>
    </section>
  </article>

  <article class="tabmenu">
    <div class="flex">
      <button class="tab-button tablink tabmenu-color" onclick="openPage(event, 'Product')">제품(1509)</button>
      <button class="tab-button tablink" onclick="openPage(event, 'Recipe')">레시피(3)</button>
      <button class="tab-button tablink" onclick="openPage(event, 'Info')">회원정보(4)</button>
      <button class="tab-button tablink" onclick="openPage(event, 'Etc')">기타(19)</button>
    </div>
    <div>
      <div id="Product" class="page">
        <div id="Accordion_wrap">
          <div class="que spabet">
            <span class="grey">제품</span>
            <span>[쁘띠첼 요거젤리] 쁘띠첼 요거젤리에 하얀 비닐(실) 같은 게 들어있어요.</span>
          </div>
          <div class="anw">
            <span class="grey">답변</span>
            <span>요거젤리에 들어있는 나타드 코코의 섬유질입니다. 나타드 코코는 코코넛 워터를 일정기간 발효시켜 만들며, 99%가 수분이고 1%는 발효과정에서 미생물이 만들어 내는 섬유질입니다. 나타드 코코를 절단하는 과정 중 얇게 잘린 부분이 비닐이나 실처럼 제품 내에서 보일 수 있으며, 나타드 코코를 삼키지 않고 장시간 씹게 되면 수분이 밖으로 빠져나와 남은 섬유질 부분이 비닐이나 실과 같이 보여질 수 있습니다. 이는 인체에는 무해하니 안심하고 드셔도 됩니다.</span>
          </div>
          <div class="que flex">
            <span class="grey">제품</span>
            <span>[비비고 사골 컵만둣국] 야채블럭이 잘 풀리지 않아요.</span>
          </div>
          <div class="anw flex">
            <span class="grey">답변</span>
            <span>전자레인지 조리 후, 야채블럭을 수저로 살살 풀어주시면 손쉽게 푸실 수 있습니다.</span>
          </div>
          <div class="que flex">
            <span class="grey">제품</span>
            <span>[햇반 솥반] 제품의 윗부분에만 원물이 있어요.</span>
          </div>
          <div class="anw flex">
            <span class="grey">답변</span>
            <span>실제 전문점 솥밥도 밥위에 원물을 올려서 밥을 짓듯이 햇반 솥반도 밥 위에 원물을 올리고 밥을 지었습니다. 위아래 골고루 섞어서 드시면 더욱 맛있게 드실 수 있습니다.</span>
          </div>
          <div class="que flex">
            <span class="grey">제품</span>
            <span>[햇반 솥반] 제품의 식이섬유 함량이 어떻게 되나요?</span>
          </div>
          <div class="anw flex">
            <span class="grey">답변</span>
            <span>통곡물밥 5g, 그 외 제품 2.5g의 식이섬유가 함유되어 있습니다. 통곡물밥 한 그릇의 식이섬유는 사과 한 개와 동일합니다. (사과 한 개 270g 기준, 출처: 국가표준식품성분표)</span>
          </div>
          <div class="que flex">
            <span class="grey">제품</span>
            <span>[햇반 솥반 통곡물밥] 같은 제품인데도 제품의 색상 차이가 있습니다.</span>
          </div>
          <div class="anw flex">
            <span class="grey">답변</span>
            <span>재료로 들어간 흑미를 불리는 과정에서 흑미 물 빠짐으로 인해 제품 간, 상하 위치별 차이가 발생할 수 있습니다. 재료로 인해 발생하는 자연스러운 현상으로 안심하고 드셔도 됩니다.</span>
          </div>
          <div class="que flex">
            <span class="grey">제품</span>
            <span>[햇반 솥반 꿀약밥] 중간중간 밥의 색이 검은색을 띱니다.</span>
          </div>
          <div class="anw flex">
            <span class="grey">답변</span>
            <span>재료로 들어간 건포도가 밥을 물들게 할 수 있으나, 제품의 맛과 품질에는 문제가 없으니 안심하고 드셔도 됩니다.</span>
          </div>
        </div>
      </div>

      <div id="Recipe" class="page" style="display:none">
        <div id="Accordion_wrap">
          <div class="que flex">
            <span class="grey">레시피</span>
            <span>[레시피] 내게 필요한 레시피를 찾고 싶어요.</span>
          </div>
          <div class="anw flex">
            <span class="grey">답변</span>
            <span>레시피 > 전체 레시피 메뉴에서 국/탕, 찌개/전골 등 "조리법 별 레시피"와 파티요리, 어린이요리, 명절요리, 캠핑요리 등 "테마 별 레시피"를 확인하실 수 있습니다. 그 외 다양한 옵션에 따라 필요한 레시피를 찾고 싶으시다면 전체 레시피 페이지 상단의 검색박스에 검색어를 입력하신 후 검색해 보세요. 검색 버튼 오른쪽의 "브랜드로 레시피 찾기"를 클릭하시면 해당 브랜드 제품이 사용된 레시피를 검색하실 수 있습니다. 레시피 검색 시 검색박스 하단의 "추천 키워드"와 "많이 검색한 키워드"도 참고하세요!</span>
          </div>
          <div class="que flex">
            <span class="grey">레시피</span>
            <span>[레시피] 레시피에 쓰인 제품이 궁금해요!</span>
          </div>
          <div class="anw flex">
            <span class="grey">답변</span>
            <span>CJ제일제당 레시피 상세 페이지 하단 [연관 제품] 영역에서 해당 레시피에서 사용된 제품들을 확인하실 수 있습니다.</span>
          </div>
          <div class="que flex">
            <span class="grey">레시피</span>
            <span>[레시피] 마음에 드는 레시피를 이웃들과 공유하고 싶어요.</span>
          </div>
          <div class="anw flex">
            <span class="grey">답변</span>
            <span>홈페이지 화면 상단의 공유 아이콘을 선택하여 페이스북, 트위터, URL 중 원하는 공유 방식을 선택하세요. 나의 SNS 계정으로 로그인하시면 레시피를 이웃들과 공유하실 수 있습니다. 모바일웹은 화면 상단의 메뉴에서 공유 방식을 선택할 수 있습니다.</span>
          </div>
        </div>
      </div>

      <div id="Info" class="page" style="display:none;">
        <div id="Accordion_wrap">
          <div class="que flex">
            <span class="grey">회원정보</span>
            <span>[회원정보] 주소와 연락처를 최신 정보로 수정하고 싶어요.</span>
          </div>
          <div class="anw">
            <span>답변</span>
            <span>로그인 하신 후 마이 페이지 상단의 [회원정보 변경] 버튼을 클릭하시면 회원정보를 변경하실 수 있습니다.</span>
          </div>
          <div class="que flex">
            <span class="grey">회원정보</span>
            <span>[회원정보] 아이디/비밀번호를 잊어버렸어요.</span>
          </div>
          <div class="anw">
            <span>답변</span>
            <span>회원 ID 및 웹사이트 비밀번호를 잊어 버렸을 경우 아래의 방식으로 아이디와 비밀번호를 알려드립니다. 로그인 화면에 있는 [아이디 찾기] 또는 [비밀번호 찾기] 버튼을 클릭해 주세요. 1. 고객명과 간편인증(법정생년월일 6자리 + 휴대전화번호 뒤 8자리)을 입력하신 후 [확인] 버튼을 클릭하시면 회원 가입여부 및 ID를 확인할 수 있습니다. 2. 회원정보에 기재된 이메일 혹은 휴대전화번호로 임시비밀번호를 전송해 드립니다. 3. 기존에 입력하신 이메일이나 휴대전화번호를 모를 경우 고객센터로 문의하시면 본인 인증 후 이메일 또는 휴대전화번호를 변경해 드립니다.</span>
          </div>
          <div class="que flex">
            <span class="grey">회원정보</span>
            <span>[회원정보] 회원 가입은 어떻게 하나요?</span>
          </div>
          <div class="anw">
            <span>답변</span>
            <span>
로그인 화면 상단의 회원가입 안내 배너를 선택하시면 CJ ONE 통합 회원가입 페이지로 이동합니다.</span>
          </div>
        </div>
      </div>

      <div id="Etc" class="page" style="display:none">
        <div id="Accordion_wrap">
          <div class="que flex">
            <span class="grey">기타</span>
            <span>[기타] [수화상담] 일반전화기 영상통화로 수화상담을 받을 수 있나요?</span>
          </div>
          <div class="anw">
            <span>답변</span>
            <span>수화 상담 번호는 일반전화기로 발신된 정보는 수신되지 않으며, 씨토크 서비스에 가입된 전화기나 앱(Iseetalk/아이씨톡)을 통해 발신된 번호만 수신됩니다. 가입과 관련된 상세한 내용은 씨토크 홈페이지(www.iseetalk.co.kr)에서 확인 가능합니다.</span>
          </div>
          <div class="que flex">
            <span class="grey">기타</span>
            <span>[기타] [프로세스] 제품 불편사항 응대 프로세스</span>
          </div>
          <div class="anw">
            <span>답변</span>
            <span>고객님, 불편을 드리게 되어 죄송합니다. 불편하신 내용은, 전화/문자/게시판 등을 통해 접수해 주시면, 신속히 응대 해 드리도록 하겠습니다. 고객센터 운영 외 시간에 접수하신 내용은 근무시간 중에 응대 해 드림을 양해 부탁 드립니다. ※ 불편사항 접수 및 피해보상기구 : 고객행복센터</span>
          </div>
          <div class="que flex">
            <span class="grey">기타</span>
            <span>[기타] 이벤트 당첨 경품은 언제 받을 수 있나요?</span>
          </div>
          <div class="anw">
            <span>답변</span>
            <span>쿠킹클래스, 이벤트 등 당첨자 경품은 당첨자 발표일로 부터 3일 안에 배송되며 거주하시는 지역에 따라 차이가 있으나 1주일 이내 수령이 가능하십니다. 예정된 기간 중 수령하지 못하신 경우 고객행복센터로 문의주시면 친절히 안내해 드리겠습니다. 고객행복센터 - 일반식품 : 080-850-1200 - 건강식품 : 080-310-1010</span>
          </div>
          <div class="que flex">
            <span class="grey">기타</span>
            <span>[기타] 이벤트 당첨자 확인은 어디서 하나요?</span>
          </div>
          <div class="anw">
            <span>답변</span>
            <span>이벤트 당첨자는 이벤트 메뉴에서 확인하실 수 있습니다.</span>
          </div>
          <div class="que flex">
            <span class="grey">기타</span>
            <span>[기타] CJ제일제당에는 어떤 브랜드가 있나요?</span>
          </div>
          <div class="anw">
            <span>답변</span>
            <span>설탕 생산으로 시작한 기업 CJ제일제당은 식품 뿐만 아니라 소재식품/ 건강식품/ 제약/ 바이오/ 사료 등으로 분야를 넓혀가고 있습니다. CJ제일제당을 대표하는 브랜드를 브랜드 페이지에서 한 눈에 확인하세요!</span>
          </div>
        </div>
      </div>
    </div>

    <script>
      $(document).ready(function(){
           $('ul.tabs li').click(function(){
               var tab_id = $(this).attr('data-tab');

               $('ul.tabs li').removeClass('current');
               $('.tab-content').removeClass('current');

               $(this).addClass('current');
               $("#"+tab_id).addClass('current');
           });

      });

      $(".que").click(function() {
         $(this).next(".anw").stop().slideToggle(300);
        $(this).toggleClass('on').siblings().removeClass('on');
        $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
      });
    </script>

    <div class="container">
        <ul class="tabs flex">
          <li class="tab-button2 tab-link tabmenu-color2 current" data-tab="tab-1">1</li>
          <li class="tab-button2 tab-link" data-tab="tab-2">2</li>
          <li class="tab-button2 tab-link" data-tab="tab-3">3</li>
          <li class="tab-button2 tab-link" data-tab="tab-4">4</li>
          <li class="tab-button2 tab-link" data-tab="tab-5">5</li>
        </ul>
      </div>
  </article>

</body>
</html>
