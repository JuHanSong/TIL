<%@ page import="com.example.demo.DAO.MemberVO" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous"></link>
</head>
<body>
<%
    MemberVO vo = new MemberVO();
%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- 리스트 : 부트스트랩은 모바일 우선이라 화면이 작으면 아래로 쌓아서 내려온다 -->
    <ul class="navbar-nav navbar-dark">
        <li class="nav-item active">
            <a class="nav-link" onclick="userManagerBtnClick()">회원관리</a></li>
        <li class="nav-item">
            <a class="nav-link" onclick="userBoardBtnClick()">게시판관리</a></li>
        <li class="nav-item">
            <a class="nav-link disabled" onclick="userNotice()">공지사항</a></li>
    </ul>
</nav>
<!-- 게시판 -->
<div class="container">
    검색 조건
    <form action="/test/serchData" method="GET">
        <table>
            <tr>
                <td id="classID">아이디: </td>
                <td>
                    <input type="text" name="userId" maxlength="20">
                </td>
                <td id="className">이름 :</td>
                <td>
                    <input type="text" name="userName" maxlength="20">
                </td>
            </tr>
            <tr>
                <td id="classTelNum">휴대번호: </td>
                <td>
                    <input type="text" name="userTel" maxlength="20">
                </td>
                <td id="classCondition">상태: </td>
                <td>
                    <input type="radio" name="userCon" value="사용 중">사용중</input>
                    <input type="radio" name="userCon" value="정지">정지</input>
                </td>
            </tr>
            <tr>
            </tr>
        </table>
        <button name="btnSerch">검색하기</button>
    </form><br><br>

    <div class = "row">
        <table name = "userInfo" class = "table table-striped" style="text-align:center; border:1px solid #dddddd">
            <thead>
            <tr>
                <th class="UserID" style = "background-color:#eeeeee; text-align:center;">아이디</th>
                <th class="UserName" style = "background-color:#eeeeee; text-align:center;">이름</th>
                <th class="UserGender" style = "background-color:#eeeeee; text-align:center;">성별</th>
                <th class="UserBirth" style = "background-color:#eeeeee; text-align:center;">생일</th>
                <th class="UserTel" style = "background-color:#eeeeee; text-align:center;">전화번호</th>
                <th class="UserCondition" style = "background-color:#eeeeee; text-align:center;">사용유무</th>
            </tr>

            </thead>
            <tbody>
            </tbody>
        </table>

        <button id="btn-Serch" class="btn btn-login btn-primary btn-block" onclick="userAllData()">회원조회</button>
        <button id="btn-Delite" class="btn btn-join btn-primary btn-block" name="btnJoin" onclick="userDelete()">회원탈퇴</button>
        <button id="btn-userModify" class="btn btn-join btn-primary btn-block" name="btnJoin" onclick="joinBtnClick()">정보수정</button>
    </div>
</div>

<script type="text/javascript">
    function userManagerBtnClick() {
        location.href = "goUserManager";
    }
    function userBoardBtnClick(){
        location.href = "goUserBoard";
    }
    function userNotice(){
        location.href = "goUserNotice";
    }
    function userAllData() {
        // location.href = "serchAllData";
        $(function() {
            $('btn-Serch').click(function() {
                $.ajax({
                    url : "test/serchAllData",
                    data : {
                        userId : '<%= vo.getUserId()%>',
                        UserName : '<%= vo.getUserName()%>',
                        userGender : '<%= vo.getUserGender()%>',
                        userBirth : '<%= vo.getUserBirth()%>',
                        userTel : '<%= vo.getUserTel()%>'
                    },
                    success : function() {
                        alert("연결성공")
                    }
                })
            })
        })

    }



</script>
</body>
</html>