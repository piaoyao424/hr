function fPopUpDeptTreeSingle(name){
 var val = window.showModalDialog("/egov/Comm/UnitTree.jsp?CodeType=1&ChkType=2","",'dialogHeight:515px;dialogWidth:450px');//��ѡ����
 if(val != null){
   var strlength= val.length;//ȡ�������ַ����ĳ���
   var orgstr = val ;//��ʼ�������ַ���
   var swt = true;
   var deptValue ="";
   while(swt){
   	var untssplite  = orgstr.indexOf(";");//��ͬ����֮��
	if(!(untssplite==-1)){
	  var str1 = orgstr.substring(0,untssplite);//ȡ����
	  var str2 = orgstr.substring(untssplite+1,orgstr.length);//ȡ���������ַ���,����
	  orgstr = str2;//���µ�ǰ�Ĵ����ַ���
//	  num.value=num.value+"|"+str1.substring(0,str1.indexOf("|"));
	  deptValue=deptValue+" "+str1.substring(str1.indexOf("|")+1,str1.length);
	}else{swt = false;}//���һ���ַ������ÿ���Ϊfalse
   }
   name.value = deptValue;
 }else{
   name.value="ѡ�����";
 }
}

function fPopUpDeptTreeMult(name){
 var val = window.showModalDialog("../egov/Comm/UnitTree.jsp?CodeType=1&ChkType=1","",'dialogHeight:515px;dialogWidth:450px');//��ѡ����
 if(val != null){
   var strlength= val.length;//ȡ�������ַ����ĳ���
   var orgstr = val ;//��ʼ�������ַ���
   var swt = true;
   var deptValue ="";
   while(swt){
   	var untssplite  = orgstr.indexOf(";");//��ͬ����֮��
	if(!(untssplite==-1)){
	  var str1 = orgstr.substring(0,untssplite);//ȡ����
	  var str2 = orgstr.substring(untssplite+1,orgstr.length);//ȡ���������ַ���,����
	  orgstr = str2;//���µ�ǰ�Ĵ����ַ���
//	  num.value=num.value+"|"+str1.substring(0,str1.indexOf("|"));
	  deptValue=deptValue+" "+str1.substring(str1.indexOf("|")+1,str1.length);
	}else{swt = false;}//���һ���ַ������ÿ���Ϊfalse
   }
   name.value = deptValue;
 }else{
   name.value="ѡ�����";
 }
}