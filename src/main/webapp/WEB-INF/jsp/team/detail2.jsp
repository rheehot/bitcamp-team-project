<%@page import="com.eomcs.lms.domain.Team"%>
<%@page import="com.eomcs.lms.domain.Member"%>
<%@page import="com.eomcs.lms.domain.TeamMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
  trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>팀 상세조회</title>
<jsp:include page="../commonCss.jsp" />
<link rel="stylesheet" href="${contextRootPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="${contextRootPath}/css/team2.css">
</head>
<body>

  <%-- <jsp:include page="../header.jsp" /> --%>

<!-- 팝업용이라서 정상적인 페이지 크기가 필요없음. container 제외 -->
<div class="revise">
    <c:choose>
      <c:when test="${empty teamMembers}">
        <p>해당하는 팀이 없습니다.</p>
      </c:when>

      <c:otherwise>  


 <div class="suvdetail" style="width:800px; right:65px; position:relative; "><h1 class="detailText" style="position: relative; left:150px;"><b>팀 상세 정보</b></h1></div> 
       <div class="row" style="border:1px solid gray; width: 800px; height:700px; padding: 25px; position:relative; right:50px;">
          <div class="bit-pro col-7">
            <div class="form-group row" style="display:none;">
              <label for="no" class="col-sm-3 col-form-label">번호</label>
              <div class="col-sm-10">
                <input type="number" class="form-control-plaintext" name="teamId" id="no" value="${team.teamId}" readonly/>
              </div>
            </div> 
            
            <div> <img src='${team.teamEmblemPhoto}'
                  onerror="this.src='${contextRootPath}/upload/emblem/vs.jpg'" class="photo"  style="width:250px; height: 250px;"></div>  
           
          <div class="tmInfo" style="left:30px; top:20px;"> 
        <div style='position:relative; right:30px; bottom:10px;'>   
        <div style='margin:10px;'> <b style='font-size:30px; color:darkred;'>팀명</b><br>${team.teamName}</div> 
        <div class='area' style='margin:10px;'> <b style='font-size:30px; color:darkred;'>지역</b><br>${team.teamArea}</div>    
        <div class='lev' style='margin:10px;'> <b  style='font-size:30px; color:darkred'>팀실력 </b><br>
          <c:choose>
                <c:when test="${team.teamLevel.teamLevel eq 'high'}">
                  상
                </c:when>
                <c:when test="${team.teamLevel.teamLevel eq 'mid'}">
                  중
                </c:when>
                <c:when test="${team.teamLevel.teamLevel eq 'low'}">
                  하
                </c:when>
         </c:choose>
        </div>  
        </div>
        <div style='position:relative; left:120px; bottom:248px;'>   
        <div class='sportsTypes' style='margin:10px;'> <b  style='font-size:30px; color:darkred'>종목</b><br>
         <c:choose>
                <c:when test="${team.teamTypeSports.teamSportsType eq 'soccer'}">
                  축구
                </c:when>
                <c:when test="${team.teamTypeSports.teamSportsType eq 'basketball'}">
                  농구
                </c:when>
                <c:when test="${team.teamTypeSports.teamSportsType eq 'baseball'}">
                  야구
                </c:when>
                <c:when test="${team.teamTypeSports.teamSportsType eq 'pingpong'}">
                  탁구
                </c:when>
        </c:choose>
        </div> 
        <div style='margin:10px;'> <b  style='font-size:30px; color:darkred'>연령대</b><br>${team.teamAges.teamAges}</div>
        <div style='margin:10px;'> <b  style='font-size:30px; color:darkred'>창단일</b><br>${team.teamCreateDate}</div>  
        </div>
        <div style='position:relative; margin:10px; margin-top:20px; right:30px; bottom: 260px; width:300px; overflow:auto;'> <b  style='font-size:30px; color:darkred'>팀소개 </b><br>${team.teamInfo}</div>
            </div>
            
       
  </div>
  </div>  
  </c:otherwise>
  </c:choose>
 
<div class="mbrList" style="position:relative; float:left; left:330px; bottom:670px;">
<div class="mbrInfo" style="font-size:30px; margin-bottom:30px;"> 
 <span style="margin-right:140px; position:relative; left:30px;"><b>팀원</b></span>         
 <span><b>포지션</b></span><br> 
 </div> 
  <c:forEach items="${teamMembers}" var="teamMember"> 

     <c:if test="${teamMember.teamLeader eq true}">
      <span><img src="${contextRootPath}/images/crown.jpg" class="jpg"></span>
      </c:if>
     <c:if test="${teamMember.teamLeader eq false}">
     <span><img src="${contextRootPath}/images/player.png" class="png"></span>
       </c:if>
     <span style='padding:10px; display:inline-block; width:100px; margin-right:20px; height:50px;'> ${teamMember.member.name} </span> 
     <span style='padding:10px; display:inline-block; width:170px; height:50px; text-align:center;'> ${teamMember.position} </span><br>  
       </c:forEach>
  </div>
  </div>
  <jsp:include page="../javascript.jsp" />

</body>
</html>
