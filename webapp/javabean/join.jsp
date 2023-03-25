<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
    function num_check(str)
    { 
    	var i;
    	for (i=0; i<str.length; i++)
    	{
    		if ((str.substring(i, i+1) < "0" || str.substring(i, i+1) > "9"))
    		{
    			return false;
    		}
    	}
    	return true;
    }

    function check_input()
    {
    	var str, i, ch, chk, chk_list="";
    	// 아이디 체크 ----> 
    	if (document.input_form.id.value == "")
    	{
    		alert("아이디를 입력하세요!!!");
    		document.input_form.id.focus();
    		return false;
    	}
    	else
    	{
    		str = document.input_form.id.value;
    		if (str.length < 6 || str.length > 10)
    		{
    			alert("아이디 길이 확인(6~10자리)!!!");
    			document.input_form.id.focus();
    			return false;
    		}
    		else
    		{
    			for (i=0; i<str.length; i++)
    			{
    				ch = str.substring(i, i+1);
    				if (!((ch >= "0" && ch <= "9") || (ch >= "a" && ch <= "z") 
    						|| (ch >= "A" && ch <= "Z")))
    				{
    					alert("특수문자가 포함, 다시 입력!!!");
    					document.input_form.id.focus();
    					return false;
    				}
    			}
    		}
    	} // 아이디 체크 <------
    	chk_list = "id=" + str + "\n";
    	
    	// 패스워드 체크 ------>
    	if (document.input_form.pw.value == "")
    	{
    		alert("패스워드를 입력하세요!!!");
    		document.input_form.pw.focus();
    		return false;
    	}
    	else
    	{
    		str = document.input_form.pw.value;
    		if (str.length < 6 || str.length > 10)
    		{
    			alert("패스워드 길이 확인(6~10자리)!!!");
    			document.input_form.pw.focus();
    			return false;
    		}
    		else
    		{
    			for (i=0; i<str.length; i++)
    			{
    				ch = str.substring(i, i+1);
    				if (!((ch >= "0" && ch <= "9") || (ch >= "a" && ch <= "z") 
    						|| (ch >= "A" && ch <= "Z")))
    				{
    					alert("특수문자가 포함, 다시 입력!!!");
    					document.input_form.pw.focus();
    					return false;
    				}
    			}
    		}
    	} 
    	
    	if (document.input_form.pw.value != document.input_form.pw2.value)
    	{
    		alert("패스워드를 입력오류!!!");
    		document.input_form.pw2.focus();
    		return false;
    	} // 패스워드 체크 <------
    	chk_list += "pw=" + str + "\n";
    	
    	// 주민번호 체크 ------>
    	if (document.input_form.jumin1.value == "")
    	{
    		alert("주민번호(앞자리)를 입력하세요!!!");
    		document.input_form.jumin1.focus();
    		return false;
    	} 
    	else if (document.input_form.jumin2.value == "")
    	{
    		alert("주민번호(뒷자리)를 입력하세요!!!");
    		document.input_form.jumin2.focus();
    		return false;
    	} 
    	else
    	{
    		var str1 = document.input_form.jumin1.value;
    		var str2 = document.input_form.jumin2.value;
    		if (str1.length != 6)
    		{
    			alert("주민번호 확인(생년월일 6자리)!!!");
    			document.input_form.jumin1.focus();
    			return false;
    		}
    		else if (str2.length != 7)
    		{
    			alert("주민번호 확인(7자리)!!!");
    			document.input_form.jumin2.focus();
    			return false;
    		}
    		else
    		{
    			str = str1 + str2;
    			var w = 2, hap = 0, chk;
    			for (i=0; i<str.length; i++)
    			{
    				ch = str.substring(i, i+1);
    				if (!(ch >= "0" && ch <= "9"))
    				{
    					alert("특수문자가 포함, 다시 입력!!!");
    					document.input_form.jumin1.focus();
    					return false;
    				}
    				else
    				{
    					if (i == (str.length-1))
    						continue;
    					hap += parseInt(ch) * w;
    					w++;
    					if (w == 10)
    						w = 2;
    				}
    			}
    			chk = 11 - (hap % 11);
    			if (chk == 10)
    				chk = 0;
    			else if (chk == 11)
    				chk = 1;
    			
    			if (chk != parseInt(str.substring(str.length-1, str.length)))
    			{
    				alert("주민번호 오류, 다시 입력!!!");
    				document.input_form.jumin1.focus();
    				return false;
    			}
    		}
    	} // 주민번호 체크 <------
    	chk_list += "주민번호=" + document.input_form.jumin1.value + "-" 
    						+ document.input_form.jumin2.value + "\n";
    	
    	// 성별 체크 ----> 
    	if (!(document.input_form.gender[0].checked == true 
    			|| document.input_form.gender[1].checked == true))
    	{
    		alert("성별을 선택하세요!!!");
    		return false;
    	} // 성별 체크 <----
    	if (document.input_form.gender[0].checked == true)
    		str = document.input_form.gender[0].value;
    	else
    		str = document.input_form.gender[1].value;
    	chk_list += "성별=" + str + "\n";
    	
    	// 전화번호 체크 ------>
    	if (document.input_form.tel1.value.length == 3)
    	{
    		if (!num_check(document.input_form.tel1.value))
    		{
    			alert("전화번호 앞3자리 입력오류!!!");
    			document.input_form.tel1.focus();
    			return false;
    		}
    	} 
    	else
    	{
    		alert("전화번호 앞3자리 입력하세요!!!");
    		document.input_form.tel1.focus();
    		return false;
    	}
    	
    	if (document.input_form.tel2.value.length == 4)
    	{
    		if (!num_check(document.input_form.tel2.value))
    		{
    			alert("전화번호 중간4자리 입력오류!!!");
    			document.input_form.tel2.focus();
    			return false;
    		}
    	} 
    	else
    	{
    		alert("전화번호 중간4자리 입력하세요!!!");
    		document.input_form.tel2.focus();
    		return false;
    	}
    	
    	if (document.input_form.tel3.value.length == 4)
    	{
    		if (!num_check(document.input_form.tel3.value))
    		{
    			alert("전화번호 끝4자리 입력오류!!!");
    			document.input_form.tel3.focus();
    			return false;
    		}
    	} 
    	else
    	{
    		alert("전화번호 끝4자리 입력하세요!!!");
    		document.input_form.tel3.focus();
    		return false;
    	} // <------ 전화번호 체크 
    	chk_list += "전화번호=" + document.input_form.tel1.value + "-" 
    	                 + document.input_form.tel2.value + "-" 
    	                 + document.input_form.tel3.value + "\n"; 
    	
    	// 이메일(앞부분) 체크 ----> 
    	if (document.input_form.email1.value == "")
    	{
    		alert("이메일(앞부분)을 입력하세요!!!");
    		document.input_form.email1.focus();
    		return false;
    	} // 이메일(앞부분) 체크 <----
    	
    	// 이메일(뒷부분) 체크 ----> 
    	if (document.input_form.email2.value == "")
    	{
    		alert("이메일(뒷부분)을 입력하세요!!!");
    		document.input_form.email2.focus();
    		return false;
    	} // 이메일(뒷부분) 체크 <----
    	chk_list += "이메일=" + document.input_form.email1.value + "@" 
    			+ document.input_form.email2.value +"\n";
    		
    	// 취미 체크 ----> 
    	if (!(document.input_form.hobby[0].checked == true
    			|| document.input_form.hobby[1].checked == true
    			|| document.input_form.hobby[2].checked == true
    			|| document.input_form.hobby[3].checked == true
    			|| document.input_form.hobby[4].checked == true))
    	{
    		alert("취미를 선택하세요!!!");
    		return false;
    	} // 취미 체크 <----
    	str = "";
    	for (i=0;i<document.input_form.hobby.length; i++)
    	{
    		if (document.input_form.hobby[i].checked == true)
    			str += document.input_form.hobby[i].value + " ";	
    	}
    	chk_list += "취미=" + str + "\n";
    	
    	// 자기소개 체크 ----> 
    	if (document.input_form.intro.value == "")
    	{
    		alert("자기소개를 입력하세요!!!");
    		document.input_form.intro.focus();
    		return false;
    	} // 자기소개 체크 <----
    	chk_list += "자기소개=" + document.input_form.intro.value + "\n";

    	alert(chk_list);
    	return true;
    	//document.input_form.submit(); // 서버로 전송
    	//return;
    }
    </script>
    </head>
    <body>
    <br>

    <form name="input_form" action="input_form.jsp" method="post" width="510" onsubmit="return check_input();">
     
    <!-- 
    <form name="input_form" action="input_form.jsp" method="post" width="510">
    -->

    <table align="center" border="1">
    <tr>
    	<td width="110">아이디</td>
    	<td width="500"><input type="text" name="id" size="15" STYLE="ime-mode:inactive" required>(최소6~최대10, 숫자와알파벳만 사용)</td>
    </tr>
    <tr>
    	<td width="110">비밀번호</td>
    	<td width="500"><input type="password" name="pw" size="15" STYLE="ime-mode:inactive">(최소6~최대10, 숫자와알파벳만 사용)</td>
    </tr>
    <tr>
    	<td width="110">비밀번호 확인</td>
    	<td width="500"><input type="password" name="pw2" size="15" STYLE="ime-mode:inactive">(최소6~최대10, 숫자와알파벳만 사용)</td>
    </tr>
    <tr>
    	<td width="110">주민번호</td>
    	<td width="500"><input type="text" name="jumin1" size="6" maxlength="6"> - 
    	    <input type="text" name="jumin2" size="7" maxlength="7"></td>
    </tr>
    <tr>
    	<td width="110">성별</td>
    	<td width="500"><input type="radio" name="gender" value="남자">남자 
    		<input type="radio" name="gender" value="여자">여자 </td>
    </tr>
    <tr>
    	<td>전화번호</td>
    	<td><input type="tel" name="tel1" size="3" maxlength="3"> -
    		<input type="tel" name="tel2" size="4" maxlength="4"> -
    		<input type="tel" name="tel3" size="4" maxlength="4"></td>
    </tr>
    <tr>
    	<td width="110">이메일</td>
    	<td width="500"><input type="text" name="email1" size="10" STYLE="ime-mode:inactive"> @ 
    	    <select name="email2">
    	    	<option value="">메일주소선택
    	    	<option value="hanmail.net">hanmail.net
    	    	<option value="naver.com">naver.com
    	    	<option value="nate.com">nate.com
    	    </select></td>
    </tr>
    <tr>
    	<td width="110">취미</td>
    	<td width="500">
    		<input type="checkbox" name="hobby" value="등산">등산 
    		<input type="checkbox" name="hobby" value="독서">독서 
    		<input type="checkbox" name="hobby" value="스키">스키 
    		<input type="checkbox" name="hobby" value="음악">음악 
    		<input type="checkbox" name="hobby" value="영화">영화 </td>
    </tr>
    <tr>
    	<td width="110">자기소개</td>
    	<td width="500"><textarea name="intro" rows="5" cols="50" STYLE="ime-mode:active"></textarea></td>
    </tr>
    <tr>
    	<td colspan="2" align="center" width="500">
    		
    		<input type="submit" value="입력">
    		
    		<!--
    		<input type="button" value="입력" onclick="check_input();">
    		-->
    		<input type="reset" name="reset" value="취소"></td>
    </tr>
    </table>
    </form>
    </body>
    </html>
