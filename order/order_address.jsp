<%@ page contentType = "text/html;charset=utf-8" %>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
   <script src="../js/PostNumber.js"></script>
   <script type="text/javascript">
       sample2_execDaumPostcode()
    
       function setParentText(){
             opener.document.getElementById("postcode").value = document.getElementById("sample2_postcode").value
             opener.document.getElementById("Address").value = document.getElementById("sample2_address").value
             window.close()
        }
    </script>
   <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
        <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
   </div>
       <div style="display:none">
           <label class="col-sm-2">우편번호</label>
             <div class="col-sm-3">
                 <script src="../js/mailNumber_1.js"></script>
                 <input name="zipCode" type="text" class="form-control" id="sample2_postcode" placeholder="우편번호">
				 <input type="button" onclick="window.open('order_adress.jsp', '_blank', 'width=700px, height=500px' );" value="우편번호 찾기"><br>
             </div>
        </div>
       <div style="display:none">
		   <label class="col-sm-2">주소</label>
	     	<div class="col-sm-5">
				<input name="addressName1" type="text" id="sample2_address" placeholder="주소" class="form-control" />
	     	</div>
	   </div>
        <div style="display:none">
		   <label class="col-sm-2">주소2</label>
	     	<div class="col-sm-5">
				<input name="addressName1" type="text" id="sample2_extraAddress" placeholder="주소" class="form-control" />
	     	</div>
	   </div>
       <input type="button" style="display:none" id="adress_submit" value="주소 전달" onclick="setParentText()">
       <button type="submit" id="adress_submit" style="display:none"></button>
</body>
</html>