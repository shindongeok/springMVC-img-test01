<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<meta charset="UTF-8">
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">

      </button>
      <a class="navbar-brand" href="${root}">스프링</a>
   </div>
       <div class="collapse navbar-collapse" id="myNavbar">
         <ul class="nav navbar-nav">
           <li><a href="boardMain">게시판</a></li>
         </ul>
         <c:if test="${empty memberVo}">
           <ul class="nav navbar-nav navbar-right">
             <li class="dropdown">
             <a class="dropdown-toggle" data-toggle="dropdown" href="#">접속<span class="caret"></span></a>
             <ul class="dropdown-menu">
                <li><a href="${root}/memberLoginForm"><span class="glyphicon glyphicon-log-in"></span>로그인</a></li>
                <li><a href="${root}/memberJoin"><span class="glyphicon glyphicon-user"></span>회원가입</a></li>
            </ul>
            </li>
           </ul>
         </c:if>

           <c:if test="${!empty memberVo}">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">접속<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                <c:if test="${!empty memberVo}">
                       <li><a href="${root}/memberUpdateForm"><span class="glyphicon glyphicon-user"></span>정보수정</a></li>
                       <li><a href="${root}/memberImageForm"><span class="glyphicon glyphicon-paperclip"></span>사진등록</a></li>
                       <li><a href="${root}/memberLogout"><span class="glyphicon glyphicon-log-out"></span>로그아웃</a></li>

                    <c:if test="${!empty memberVo}">
                        <%--memberVo.memberProfile값이     공백이면--%>
                        <c:if test="${memberVo.memberProfile eq ''}">
                            <img src="${root}/resources/image/cat.jpg" style="width: 50px; height: 50px;"/>
                        </c:if>
                        <%----%>
                        <c:if test="${memberVo.memberProfile ne ''}">
                            <img src="${root}/resources/upload/${memberVo.memberProfile}" style="width: 50px; height: 50px;"/>
                        </c:if>
                        ${memberVo.memberName} 님 환영합니다.
                    </c:if>


                </c:if>

                   </ul>
                </li>
            </ul>
           </c:if>
       </div>
       </div>
       </nav>