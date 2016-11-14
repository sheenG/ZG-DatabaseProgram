var error1=1,error2=1,error3=1,error4=1;

function focusNiCheng(){
		var x=document.getElementById("hint1");
		x.style.display="inline";
		x.innerHTML="昵称长度不超过20位";
		x.style.color="gray";
	}
function checkNiCheng(){
		var x=document.getElementById("hint1");
		var y=document.getElementById("username");
		var value=y.value;
		if(value.length>20){
			x.style.display="inline";
			x.innerHTML="昵称长度大于20位";
			x.style.color="red";
			error1=1;
		}else if (value.length<1){
			x.style.display="inline";
			x.innerHTML="昵称不可为空";
			x.style.color="red";
			error1=1;
		}else{
			x.style.display="inline";
			x.innerHTML="正确";
			x.style.color="green";
			error1=0;
		}
}

function focusId(){
	var x=document.getElementById("hint2");
	x.style.display="inline";
	x.innerHTML="帐号长度不超过20位";
	x.style.color="gray";
}
function checkId(){
	var x=document.getElementById("hint2");
	var y=document.getElementById("id");
	var value=y.value;
	if(value.length>20){
		x.style.display="inline";
		x.innerHTML="帐号长度大于20位";
		x.style.color="red";
		error2=1;
	}else if (value.length<1){
		x.style.display="inline";
		x.innerHTML="帐号不可为空";
		x.style.color="red";
		error2=1;
	}else{
		x.style.display="inline";
		x.innerHTML="正确";
		x.style.color="green";
		error2=0;
	}
}

function focusPw(){
	var x=document.getElementById("hint3");
	x.style.display="inline";
	x.innerHTML="密码长度不小于6位不超过20位";
	x.style.color="gray";
}
function checkPw(){
	var x=document.getElementById("hint3");
	var y=document.getElementById("password");
	var value=y.value;
	if(value.length>20){
		x.style.display="inline";
		x.innerHTML="密码长度大于20";
		x.style.color="red";
		error3=1;
	}else if (value.length<6){
		x.style.display="inline";
		x.innerHTML="密码不可少于6位";
		x.style.color="red";
		error3=1;
	}else{
		x.style.display="inline";
		x.innerHTML="正确";
		x.style.color="green";
		error3=0;
	}
}

function focusPw2(){
	var x=document.getElementById("hint4");
	x.style.display="inline";
	x.innerHTML="请再次输入一遍密码";
	x.style.color="gray";
}
function checkPw2(){
	var x=document.getElementById("hint4");
	var y1=document.getElementById("password"); 
	var y2=document.getElementById("password2");
	var value1=y1.value;
	var value2=y2.value;
	if(value1==value2){
		x.style.display="inline";
		x.innerHTML="正确";
		x.style.color="green";
		error4=0;
	}else{
		x.style.display="inline";
		x.innerHTML="与上面密码不一致";
		x.style.color="red";
		error4=1;
	}
}

function submit(){
	if(error1==1 || error2==1 || error3==1 || error4==1 ){
		alert("注册信息中存在错误，请改正后重新提交！");
	}else{
		window.opener=null;
		window.close();
		document.getElementById('form2').submit();
	}
}

function judgeKey()
{
	if(event.keyCode ==13)
		submit();
}