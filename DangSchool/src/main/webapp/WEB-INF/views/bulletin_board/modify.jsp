<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정페이지</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container">
	<div class ="row">
	
		<div class="col-sm-6 col-md-2 col-lg-2 text-center b_menu">
    		<h4><a class="text-green" href="/DangSchool/bulletin_board/list">공지사항</a>&emsp;&emsp;&emsp;&emsp;
    		<a class="text-green" href="/DangSchool/qna_board/list">Q&A</a>
    	</div>
   	
    	<div class="col-sm-6 col-md-10 col-lg-10 ">
    	
    		<div class="b_header">
    			<h4><strong>|공지사항</strong>|<small>공지사항 수정페이지 입니다.</small></h4>
    			
    		</div>
    		<div class="card-header bg-green text-white">게시글 수정</div>
    		<div class="b_body">
    			  <form role="form" action="update" method="post" name="mform" id="mform">
    				<table class="table table-bordered" width="100%" cellspacing="0">
    					<tr>
    						<td>제목</td>
    						<td colspan="3"><input class="form-control" type="text" name="title" id="title" size="23" value="${board.title }"></td>
    					</tr>
    					<tr>
    						<td>작성자</td>
    						<td colspan="3"><input class="form-control" readonly="readonly" type="text" name="name" id="name" size="23" value="${board.name }"></td>
    					</tr> 
    					<tr>
    						<td>작성일</td>
    						<td><input class="form-control" readonly="readonly" type="text" name="regdate" id="regdate" size="10" value="${board.regdate }"></td>
    						<td>번호</td>
    						<td><input class="form-control" readonly="readonly" type="text" name="num" id="num" size="1" value="${board.num }"></td>
    					</tr> 
    					<tr>
    						<td colspan="4"><textarea class="form-control" rows="20" name="content" id="content" >${board.content }</textarea></td>
    					</tr>
    					
    					
    				</table>
    				<c:if test="${cri.keyword eq null }">	
    					<button type="submit" id="modifybtn" class="btn btn-green" onclick="check(); return false;"> 수정 </button>
    					<button type="button" id="listbtn" class="btn btn-green" onclick="location.href='list?pageNum=${cri.pageNum}&count=${cri.count}'">목록</button>  			
    					<button type="button" id="deletebtn" class="btn btn-green float-right" onclick="check2(); return false;">삭제</button> 
    				</c:if>
    				<c:if test="${cri.keyword != null }">
    					<button type="submit" id="modifybtn" class="btn btn-green" onclick="check(); return false;"> 수정 </button>
    					<button type="button" id="listbtn" class="btn btn-green" onclick="location.href='list?pageNum=${cri.pageNum}&count=${cri.count}&keyword=${cri.keyword }'">목록</button>  			
    					<button type="button" id="deletebtn" class="btn btn-green float-right" onclick="check2(); return false;">삭제</button>
    				</c:if> 			
    			</form>	
    		</div>
    		<!-- end b_body -->
    	</div>
	</div>
	<!-- end row -->
</div>

<form id="infoForm" method="get">
	<input type="hidden" name="num" value="${board.num }">
	<input type="hidden" name="pageNum" value="${cri.pageNum }">
	<input type="hidden" name="count" value="${cri.count }">
	<input type="hidden" name="keyword" value="${cri.keyword }">
</form>	
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script> 
<script type="text/javascript">
	function check(){
		if(document.mform.title.value == ''){
			alert("제목을 입력해 주세요");
			return;
		}else if(confirm("변경 하시겠습니까?")){
			document.regform.submit(); 
		}else{
			return;
		}
	}
	
	function check2(){
		if(!confirm("삭제 하시겠습니까?")){
			return false;
		}else{
			alert("삭제되었습니다.");
			location.href="delete?num=${board.num }&pageNum=${cri.pageNum}&count=${cri.count}";
		}
	
	}

	let moveForm = $("#infoForm");
	
	$("#listbtn","modifybtn").on("click", function(e){
		e.preventDefault();
	
		moveForm.find("#num").remove();
		moveForm.attr("action","list");
		moveForm.submit();
	})
	

</script>

<%@ include file="../include/footer.jsp" %>
</body>
</html>