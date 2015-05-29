<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head> 
		<title>PFD-ebook</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="initial-scale=1,user-scalable=no,maximum-scale=1,width=device-width">
        <style type="text/css" media="screen"> 
			html, body	{ height:100%; }
			body { margin:0; padding:0; overflow:auto; }   
			#flashContent { display:none; }
        </style> 
		
		<link rel="stylesheet" type="text/css" href="/resources/css/main/flexpaper.css">
		<script type="text/javascript" src="/resources/js/Main/jquery.min.js"></script>
		<script type="text/javascript" src="/resources/js/Main/jquery.extensions.min.js"></script><style></style>
		<script type="text/javascript" src="/resources/js/Main/flexpaper.js"></script>
		<script type="text/javascript" src="/resources/js/Main/flexpaper_handlers.js"></script>
    <link type="text/css" rel="stylesheet" href="chrome-extension://eobejphpabbjeehffmbiecckpkggpbai/style.css"><script type="text/javascript" charset="utf-8" src="chrome-extension://eobejphpabbjeehffmbiecckpkggpbai/js/content-script/page_context.js"></script><style id="PDFJS_FONT_STYLE_TAG"></style>
    </head>
    <body >
    	<input type="hidden" value="<%=request.getParameter("pdf")%>" id="pdf">
        <div id="documentViewer" class="flexpaper_viewer" style="position:absolute; width:100%;height:100%"></div>
        <script type="text/javascript">
			var pdf = document.getElementById("pdf").value;
            var startDocument = "Paper";

            $('#documentViewer').FlexPaperViewer(
                   { config : {

                     PDFFile : '/resources/inc/pdf/'+pdf,

                     Scale : 0.6,
                     ZoomTransition : 'easeOut',
                     ZoomTime : 0.5,
                     ZoomInterval : 0.1,
                     FitPageOnLoad : true,
                     FitWidthOnLoad : false,
                     FullScreenAsMaxWindow : false,
                     ProgressiveLoading : false,
                     MinZoomSize : 0.2,
                     MaxZoomSize : 5,
                     SearchMatchAll : false,
                     InitViewMode : '',
                     RenderingOrder : 'html5,flash',
                     StartAtPage : '',

                     ViewModeToolsVisible : true,
                     ZoomToolsVisible : true,
                     NavToolsVisible : true,
                     CursorToolsVisible : true,
                     SearchToolsVisible : true,
                     WMode : 'transparent',
                     localeChain: 'en_US'
                   }}
            );
        </script>
    <div style="position:fixed; bottom:2px; left:2px; padding:5px; cursor:hand; cursor:pointer;" onclick="javaScript:history.go(-1)">
    	<img src="/resources/img/btn/go_back.png">	
	</div>
 </body><audio src="" id="naver_dic_audio_controller" controls="controls" style="width: 0px; height: 0px;"></audio></html>