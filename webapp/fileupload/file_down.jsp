<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.ServletUtils" %>

<%
    String fileName=request.getParameter("file_name");
    String sDownloadPath="C:\\Project\\upload";
    String sFilePath=sDownloadPath+"\\"+fileName;
    
    byte b[]=new byte[4096];
    File oFile = new File(sFilePath);
    
    FileInputStream in = new FileInputStream(sFilePath);
    
    String sMimeType=getServletContext().getMimeType(sFilePath);
    // octet-stream은 8비트로 된 일련의 데이터를 뜻한다. 지정되지 않은 파일 형식을 의미
    if(sMimeType==null){
    	sMimeType="application/octet-stream";
    }
    response.setContentType(sMimeType);
    
    //한글 업로드(이 부분이 한글 파일명이 깨지는 것을 방지해 준다.)
    String sEncoding = new String(fileName.getBytes("utf-8"), "8859_1");
    //응답객체의 헤드에 실제로 다운받을 파일을 첨부
    response.setHeader("Content-Disposition", "attachment; filename=" +sEncoding);
    
    ServletOutputStream out2 = response.getOutputStream();
    int numRead;
    // 바이트 배열b의 0번부터 numRead번까지 브라우저로 출력
    while((numRead=in.read(b, 0, b.length))!= -1){
    	out2.write(b, 0, numRead);
    }
    out2.flush();
    out2.close();
    in.close();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>