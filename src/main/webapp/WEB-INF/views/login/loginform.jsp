<%@ page contentType="text/html;charset=UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("button").click(function() {
		loginCheck();
	})
})

//비동기로 요청을 시도
function loginCheck() {
	$.ajax({
		url:"/admin/login",
		type:"POST",
		data:{
			user_id:$("input[name='user_id']").val(),
			pass:$("input[name='pass']").val()	
		},
		success:function(result, status, xhr){	//200 요청에 대한 반응 메서드						
			alert(result.msg);		
		
			if(result.code==1{
				//location.href="/admin/main";
			})
		}
	})	
}
</script>
</head>
<body>

<form style="max-width:750px;margin:auto">
  <h2>관리자 인증</h2>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="관리자 ID" name="usrnm">
  </div>

  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="관리자 Password" name="psw">
  </div>

  <button type="button" class="btn" onclick>Register</button>
</form>

</body>
</html>
