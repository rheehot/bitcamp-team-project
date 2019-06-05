<%@ page language="java" 
         contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>BATTLE MATCHING :: 상세정보입력</title>
  <jsp:include page="../commonCss.jsp"/>
  <link rel="stylesheet" href="${contextRootPath}/css/member_optionalform.css">
  
</head>
<body style="background:white">
 
 
<div id="container">
  <div id="content">
            
    <div class="join_step">
      <img src="${contextRootPath}/images/logo.png" class="joinImg">
    </div>

    <div class="join_content">
      <form id="join_form" action="updateOption" method='POST'>
        <input type="hidden" id="birthday" name="birthDay" value="">
        <input type="hidden" id="post" name="post" value="99999">
        <input type="hidden" id="photo" name="photo" value="">
      
        <div class="join_form">
          <div class="join_form_input">
          
            <div class="join_row join_birthday">
                <h3 class="join_title">
                  <label for="yy">생년월일</label>
                </h3>
                <div class="bir_wrap">
                  <div class="bir_yy">
                    <span class="ps_box" id="biryy">
                      <input type="text" id="yy" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
                    </span>
                  </div>
                  <div class="bir_mm">
                    <span class="ps_box" id="birmm">
                      <select id="mm" class="sel" aria-label="월">
                        <option value="">월</option>
                          <option value="01">1</option>
                          <option value="02">2</option>
                          <option value="03">3</option>
                          <option value="04">4</option>
                          <option value="05">5</option>
                          <option value="06">6</option>
                          <option value="07">7</option>
                          <option value="08">8</option>
                          <option value="09">9</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                      </select>
                    </span>
                  </div>
                  <div class="bir_dd">
                    <span class="ps_box" id="birdd">
                      <input type="text" id="dd" placeholder="일" aria-label="일" class="int" maxlength="2">
                      <label for="dd" class="lbl"></label>
                    </span>
                  </div>
                </div>
                <span class="error_next_box" id="birthdayMsg" style="display:none" role="alert"></span>
              </div>
              
              <div class="join_row join_sex">
                <h3 class="join_title">
                  <label for="gender">성별</label>
                </h3>
                <div class="ps_box" id="genderBox">
                  <select id="gender" name="gender" class="sel" aria-label="성별">
                    <option value="" selected>성별</option>
                    <option value="남자">남자</option>
                    <option value="여자">여자</option>
                  </select>
                </div>
                <span class="error_next_box" id="genderMsg" style="display:none" role="alert"></span>
              </div>
              
              <div class="row_group join_photo">
              <div class="join_row join_photo_title">
                <h3 class="join_title" id="photo_title">
                  <label for="fileupload" style="cursor: pointer">프로필 사진<span class="terms_choice">(선택)</span></label>
                  <span class="file_input">
                    <input type="text" readonly="readonly" title="File Route" id="file_route">
                    <label for="fileupload">
                       사진올리기
                      <input type="file" id="fileupload" name="files">
                    </label>
                    <label for="uploadCancel">
                       취소하기
                      <input type="button" id="uploadCancel">
                    </label>
                  </span>
                </h3>
              </div>
              <div class="join_photo_view">
                <span class="photoView">
                  <label for="fileupload" style="cursor: pointer">
                    <img id="images-div" src="../../images/profile.png">
                  </label>
                </span>
              </div>
            </div><!-- .join_photo -->
            <div class="row_group">
              <div class="join_row">
                <h3 class="join_title">
                  <label for="addressBtn">주소/상세주소</label>
                </h3>
                <div class="address_area">
                  <span class="ps_box" id="postBox">
                    <input class="int" placeholder="우편번호" id="addr1" type="text" readonly="readonly" maxlength="6">
                  </span>
                  <input id="addressBtn" type="button" class="btn-sm addressBtn" value="우편번호검색"> 
                </div>
                <div>
                  <span class="ps_box" id="baseAddr">
                    <input class="int" placeholder="도로명 주소" name="baseAddress" id="addr2" type="text" readonly="readonly" />
                  </span>
                </div>
                <div>
                  <span class="ps_box" id="detailAddr">
                    <input class="int" placeholder="상세주소" name="detailAddress" id="addr3" type="text"/>
                  </span>
                </div>
                <span class="error_next_box" id="addressMsg" style="display:none" role="alert"></span>
              </div>
              <div class="join_row">
                <h3 class="join_title">
                  <label for="self_introduce">자기소개<span class="terms_choice">(선택)</span></label>
                </h3>
                <div class="self_introduce_area">
                  <textarea class="ps_box self_introduce" id="self_introduce" name="selfIntroduce" placeholder="간단한 자기소개를 입력해주세요." rows="5" cols="30"></textarea>
                </div>
              </div>
            </div><!-- .row_group -->
            
          </div><!-- .join_form_input -->
          
          
        </div><!-- .join_form -->
        <div class="btn_area">
          <button class="btn btn_type btn-outline-secondary sunext" id="btnJoin" type="button">저장하기</button>
        </div><!-- .btn_area -->
      </form><!-- #join_form-->
    </div><!-- .join_content -->
  </div><!-- .content -->
</div><!-- .container -->

<jsp:include page="../javascript.jsp"/>
<script src="${contextRootPath}/node_modules/blueimp-file-upload/js/vendor/jquery.ui.widget.js"></script>
<script src="${contextRootPath}/node_modules/blueimp-load-image/js/load-image.all.min.js"></script>
<script src="${contextRootPath}/node_modules/blueimp-canvas-to-blob/js/canvas-to-blob.js"></script>
<script src="${contextRootPath}/node_modules/blueimp-file-upload/js/jquery.iframe-transport.js"></script>
<script src="${contextRootPath}/node_modules/blueimp-file-upload/js/jquery.fileupload.js"></script>
<script src="${contextRootPath}/node_modules/blueimp-file-upload/js/jquery.fileupload-process.js"></script> 
<script src="${contextRootPath}/node_modules/blueimp-file-upload/js/jquery.fileupload-image.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>

<script>
"use strict"

$('#fileupload').fileupload({
  autoUpload: false,
  disableImageResize: /Android(?!.*Chrome)|Opera/
        .test(window.navigator && navigator.userAgent),
  previewMaxWidth: 200,
  previewMaxHeight: 200,
  previewCrop: false,
  processalways: function(e, data) {
    var photo;
    for (var i = 0; i < data.files.length; i++) {
      try {
        if (data.files[i].preview.toDataURL) {
          photo = data.files[i].preview.toDataURL();
          $('#images-div')
          .attr('src', data.files[i]
          .preview.toDataURL())
          $('#photo').val(photo);
        }
      } catch (err) {
      }
    }
  }
});

$('.file_input input[type=file]').change(function() {
  var filename = $(this).val().replace(/c:\\fakepath\\/i, '');
  $('.file_input input[type=text]').val(filename);
});

$(document).ready(function() {
  defaultScript();

  $('#yy').keyup(debounce(function() {
    checkBirthday();
  }, 500));

  $('#mm').change(function() {
    checkBirthday();
  });

  $('#dd').keyup(debounce(function() {
   checkBirthday();
  }, 500));

  $('#addressBtn').click(function() {
   execPostCode();
   return false;
  });
  
  $('#uploadCancel').click(function() {
    $('#images-div').attr('src', "../../images/profile.png");
    $('#photo').empty();
    return false;
  });

  $('#btnJoin').click(function(event) {
    checkErrorInput();
    $('#join_form').submit();
  });
  
});

function checkErrorInput() {
  
  if ($('#birthday').val() == "") {
    $('#birthday').val("1000-01-01");
  }
  if ($('#addr1').val() != "") {
    $('#post').val($('#addr1').val());
  }
}

function defaultScript() {
  $('.ps_box').click(function() {
    $(this).children('input').focus();
    $(this).addClass('focus');
  }).focusout(function() {
    var welInputText = $('.ps_box');
    welInputText.removeClass('focus');
  });
};

function showErrorMsg(obj, msg) {
  obj.attr("class", "error_next_box");
  obj.html(msg);
  obj.show();
}

function showDefaultBox(oBox) {
  oBox.attr("class", "ps_box");
}

function showErrorBox(oBox) {
  oBox.attr("class", "ps_box discord");
}

function hideMsg(obj) {
  obj.hide();
}

function execPostCode() {
  
  daum.postcode.load(function(){
    new daum.Postcode({
      oncomplete: function(data) {

        var fullRoadAddr = data.roadAddress;
        var extraRoadAddr = ''; 

        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
          extraRoadAddr += data.bname;
        }
                
        if(data.buildingName !== '' && data.apartment === 'Y'){
          extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
        }
                
        if(extraRoadAddr !== ''){
          extraRoadAddr = ' (' + extraRoadAddr + ')';
        }
                
        if(fullRoadAddr !== ''){
          fullRoadAddr += extraRoadAddr;
        }
                
        $("#addr1").val(data.zonecode);
        $("#addr2").val(fullRoadAddr);
                
      }
    }).open();
  });
}

function checkBirthday() {
  var birthday;
  var birthdaySave;
  var yy = $('#yy').val();
  var mm = $('#mm').val();
  var dd = $('#dd').val();
  var oMsg = $('#birthdayMsg');
  var lang = "ko_KR";
  var biryy = $('#biryy');
  var birmm = $('#birmm');
  var birdd = $('#birdd');

  showDefaultBox(biryy);
  showDefaultBox(birmm);
  showDefaultBox(birdd);

  if (mm.length == 1) {
    mm = "0" + mm;
  }

  if (dd.length == 1) {
    dd = "0" + dd;
  }

  if (yy.length != 4 || yy.indexOf('e') != -1 || yy.indexOf('E') != -1 ) {
    showErrorMsg(oMsg, "출생년도 4자리를 정확하게 입력하세요.");
    showErrorBox(biryy);
    return false;
  }
  
  if (mm == "") {
    showErrorMsg(oMsg, "태어난 월을 선택하세요.");
    showErrorBox(birmm);
    return false;
  }
  
  if (dd == "") {
    showErrorMsg(oMsg, "태어난 날짜를 선택하세요.");
    showErrorBox(birdd);
    return false;
  }
  
  if (dd.length != 2 || dd.indexOf('e') != -1 || dd.indexOf('E') != -1) {
    showErrorMsg(oMsg, "태어난 일(날짜) 2자리를 정확하게 입력하세요.");
    showErrorBox(birdd);
    return false;
  }

  birthday = yy + mm + dd;
  if (!isValidDate(birthday)) {
    showErrorMsg(oMsg, "생년월일을 다시 확인해주세요.");
    showErrorBox(biryy);
    showErrorBox(birmm);
    showErrorBox(birdd);
    return false;
  }
  birthdaySave = yy + "-" + mm + "-" + dd;

  var age = calcAge(birthday);
  if (age < 0) {
    showErrorMsg(oMsg, "생년월일을 다시 확인해주세요.");
    showErrorBox(biryy);
    showErrorBox(birmm);
    showErrorBox(birdd);
    return false;
  } else if (age >= 120) {
    showErrorMsg(oMsg, "생년월일을 다시 확인해주세요.");
    showErrorBox(biryy);
    showErrorBox(birmm);
    showErrorBox(birdd);
    return false;
  } else {
    showDefaultBox(biryy);
    showDefaultBox(birmm);
    showDefaultBox(birdd);
    hideMsg(oMsg);
    $("#birthday").val(birthdaySave);
    return true;
  }
  return true;
}

function isValidDate(param) {
  try {
    param = param.replace(/-/g, '');

    if (isNaN(param) || param.length != 8) {
      return false;
    }

    var year = Number(param.substring(0, 4));
    var month = Number(param.substring(4, 6));
    var day = Number(param.substring(6, 8));

    if (month < 1 || month > 12) {
      return false;
    }

    var maxDaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    var maxDay = maxDaysInMonth[month - 1];

    // 윤년 체크
    if (month == 2 && (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)) {
      maxDay = 29;
    }
    
    if (day <= 0 || day > maxDay) {
      return false;
    }

    return true;
  } catch (err) {
    return false;
  }
}

function calcAge(birth) {
  var date = new Date();
  var year = date.getFullYear();
  var month = (date.getMonth() + 1);
  var day = date.getDate();
  if (month < 10) {
    month = '0' + month;
  }
  if (day < 10) {
    day = '0' + day;
  }
  var monthDay = month + '' + day;

  birth = birth.replace('-', '').replace('-', '');

  var birthdayy = birth.substr(0, 4);
  var birthdaymd = birth.substr(4, 8);
  var age = monthDay < birthdaymd ? year -birthdayy - 1 : year - birthdayy;
  return age;
}


function debounce(func, wait, immediate) {
  var timeout;

  return function executedFunction() {
    var context = this;
    var args = arguments;
      
    var later = function() {
      timeout = null;
      if (!immediate) func.apply(context, args);
    };

    var callNow = immediate && !timeout;
  
    clearTimeout(timeout);

    timeout = setTimeout(later, wait);
  
    if (callNow) func.apply(context, args);
  };
};


</script>
</body>
</html>