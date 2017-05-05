<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.nkang.kxmoment.util.MongoDBBasic"%>
 <%
MongoDBBasic.addSkimNum();
 %>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>IMMetrics</title>
		<meta name="description" content="Demo for the tutorial: Styling and Customizing File Inputs the Smart Way" />
		<meta name="keywords" content="cutom file input, styling, label, cross-browser, accessible, input type file" />
		<meta name="author" content="Osvaldas Valutis for Codrops" />
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="stylesheet" type="text/css" href="../mdm/uploadfile_css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="../mdm/uploadfile_css/demo.css" />
		<link rel="stylesheet" type="text/css" href="../mdm/uploadfile_css/component.css" />
		<script type="text/javascript" src="../nkang/jquery-1.8.0.js"></script>
		
		
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<!-- remove this if you use Modernizr -->
		<script>(function(e,t,n){var r=e.querySelectorAll("html")[0];r.className=r.className.replace(/(^|\s)no-js(\s|$)/,"$1js$2")})(document,window,0);</script>
	</head>
	<body>
	
		<div class="container">
			<div class="content">
				<div class="box">
				<form id="file_upload" name="file_upload" action="../fileUpload/uploadReport" enctype="multipart/form-data" method="post">
					<input type="file" name="file-5[]" id="file-5" class="inputfile inputfile-4" data-multiple-caption="{count} files selected" multiple />
					<label for="file-5"><figure><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/></svg></figure> <span>请选择文件&hellip;</span></label>
					<p><p>
					
				<p>
					<input type="submit" />
				</form>
				</div>
			</div>
		
		</div><!-- /container -->

	 <script src="../mdm/uploadfile_js/custom-file-input.js"></script>
		
	</body>
</html>