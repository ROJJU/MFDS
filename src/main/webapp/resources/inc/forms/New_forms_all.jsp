<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="contents1" name="contents_name">
		  	<input type="hidden" value="/NewForms?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=1" name="url">
			    <div id="form">
	    			${forms.contents1}
	    			${forms.contents2}
	    			${forms.contents3}
	    			${forms.contents4}
	    			${forms.contents5}
	    			${forms.contents6}
	    			${forms.contents7}
	    			${forms.contents8}
	    			${forms.contents9}
	    			${forms.contents10}
	    			${forms.contents11}
	    			${forms.contents12}
	    			${forms.contents13}
	    			${forms.contents14}
	    			${forms.contents15}
	    			${forms.contents16}
	    			${forms.contents17}
	    			${forms.contents18}
	    			${forms.contents19}
	    			${forms.contents20}
	    			${forms.contents21}
	    			${forms.contents22}
	    			${forms.contents23}
	    			${forms.contents24}
	    			${forms.contents25}
	    			${forms.contents26}
	    			${forms.contents27}
	    			${forms.contents28}
	    			${forms.contents29}
	    			${forms.contents30}
	    			${forms.contents31}
	    			${forms.contents32}
	    			${forms.contents33}
	    			${forms.contents34}
	    			${forms.contents35}
	    			${forms.contents36}
	    			${forms.contents37}
	   			</div>
		  </div>
	 </form><br><br><br><br>
</div>