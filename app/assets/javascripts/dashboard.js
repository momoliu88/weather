checkboxSelect=function(){
	$('input[type=checkbox]').each(function () {
		id="#"+$(this).attr("code")+"_1";	
	    if ($(this).is(":checked")) 		   
			$(id).attr("value",1);
		else
		    $(id).attr("value",0);				  
	});
	$('.info').each(function(){
		info = $(this).find('div').html();
		id="#"+$(this).attr("code")+"_2";	
		$(id).attr("value",info);
	});
}