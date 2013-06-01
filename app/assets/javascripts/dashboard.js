checkboxSelect=function(){
	codes = [];
	i = 0;
	$('input[type=checkbox]').each(function () {
	    if ($(this).is(":checked")) 		   
			codes[i] = $(this).attr("code");
			i = i+1;
	});
	$("#city_codes").attr("value",codes);
	$('.info').each(function(){
		info = $(this).find('div').html();
		code = $(this).attr("code");
		$("#"+code+"_1").attr("value",info);
	});
}
contentWait=function(){
   $("#contentArea").replaceWith("");
   $('#myModal').modal('show');
}
displayWaitingInfo=function(){
   $("#taskcontent").replaceWith("");
   $('#myModal').modal('show');
}
checkTaskState=function(){
	$('.sendingTask').each(function(){
		$.get("/tasks/check_task",{"id":$(this).attr("id"),"progress":$(this).children().width()});
	});
}
checkTaskStateTimer=function(){
	//setInterval(checkTaskState,5000);
	//checkTaskState();
}
contentSubmit=function(){
	$('.info').each(function(){
		info = $(this).find('div').html();
		code = $(this).attr("code");
		$("#"+code+"_1").attr("value",info);
	});
}
deleteRow=function(id){
	console.log($(id).attr("id"));
//	$(id).remove();
console.log($(id).html());
	$(id).replaceWith("");
}
