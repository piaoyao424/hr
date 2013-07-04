// JavaScript Document

/*登录*/
function checkUserName(){
	var username=document.myform.username;
	var divUserName=document.getElementById("divUsername");
	divUserName.innerHTML="";
	if(username.value.length==0){
	  divUserName.innerHTML="<font color='red' size='2'>* 用户名不能为空</font>";
      return;
	}
}

function checkPassword(){
    var password=document.myform.password;
	var divPass=document.getElementById("divPassword");
	divPass.innerHTML="";
	if(password.value.length==0){
	  divPass.innerHTML="<font color='red' size='2'>* 密码不能为空</font>";
      
	}
}
function checkLogin(){
	var username=document.myform.username;
	var password=document.myform.password;
	if(username.value.length==0){
		return false;
	}else if(password.value.length==0){
		return false;
	}else{
		return true;
	}
}

/*检查文本框为空*/
	  function checkNull(crtl,div,name){
     	 var divMes = document.getElementById(div);
     	 divMes.innerHTML="";
     	 if(crtl.value.length == 0){
      	  divMes.innerHTML = "<font color = 'red' size='2'>* "+name+"不能为空</font>";
         }
       }
/*电子邮箱*/
/*function checkEmail(crtl,div){
	var divOp=document.getElementById(div);
	divOp.innerHTML="";
	if(!(crtl.match("^(\w+((-\w+)|(\.\w+))*)\+\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$")){
	 	divOp.innerHTML="邮箱格式不正确";
    }
}*/


/*添加档案——addDossier*/
function checkAddDossier(){
	 var divName=document.getElementById("divName");
	 divName.innerHTML="";
 if(document.addDossierForm.name.value.length==0){
	  return false;
 }
/* if(document.addDossierForm.name.value.lenth>10){
	 alert(document.addDossierForm.name.value);
     divName.innerHTML="<font color = 'red' size='2'>* 姓名不能大于10位</font>";
	 return false;
 }*/
 
 if(document.addDossierForm.age.value.length==0){
	 return false;
 }
 if(document.addDossierForm.birthday.value.length==0){
	 return false;
 }
 if(document.addDossierForm.speciality.value.length==0){
	 return false;
 }
 if(document.addDossierForm.mobile.value.length==0){
	 return false;
 }
  if(document.addDossierForm.familyAddress.value.length==0){
	   return false;
 }
  if(document.addDossierForm.email.value.length==0){
	   return false;
 }
  if(document.addDossierForm.QQ.value.length==0){
	   return false;
 }
   if(document.addDossierForm.postCode.value.length==0){
	   return false;
 }
   if(document.addDossierForm.birthPlace.value.length==0){
	   return false;
 }  if(document.addDossierForm.address.value.length==0){
	   return false;
 }  if(document.addDossierForm.familyPhone.value.length==0){
	   return false;
 }
   if(document.addDossierForm.hobby.value.length==0){
	   return false;
 }
    if(document.addDossierForm.skills.value.length==0){
	   return false;
 }
    if(document.addDossierForm.remark.value.length==0){
	   return false;
 }
 return true;
}


/*修改档案信息*/
function checkUpdateDossier(){
	 var divName=document.getElementById("divName");
	 divName.innerHTML="";
 if(document.updateDossierForm.name.value.length==0){
	  return false;
 }
 
 if(document.updateDossierForm.age.value.length==0){
	 return false;
 }
 if(document.updateDossierForm.birthday.value.length==0){
	 return false;
 }
 if(document.updateDossierForm.speciality.value.length==0){
	 return false;
 }
 if(document.updateDossierForm.mobile.value.length==0){
	 return false;
 }
  if(document.updateDossierForm.familyAddress.value.length==0){
	   return false;
 }
  if(document.updateDossierForm.email.value.length==0){
	   return false;
 }
  if(document.updateDossierForm.QQ.value.length==0){
	   return false;
 }
   if(document.updateDossierForm.postCode.value.length==0){
	   return false;
 }
   if(document.updateDossierForm.birthPlace.value.length==0){
	   return false;
 }  if(document.updateDossierForm.address.value.length==0){
	   return false;
 }  if(document.updateDossierForm.familyPhone.value.length==0){
	   return false;
 }
   if(document.updateDossierForm.hobby.value.length==0){
	   return false;
 }
    if(document.updateDossierForm.skills.value.length==0){
	   return false;
 }
    if(document.updateDossierForm.remark.value.length==0){
	   return false;
 }
 return true;
}



var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
