$('#myModal').modal('hide');
$("#contents").replaceWith("");
$("#newContent").append("<%=escape_javascript(render(:partial=>'contents/contents'))%>");

$('.datatable').dataTable({
		"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
		"sPaginationType": "bootstrap",
		"oLanguage": {
		"sLengthMenu": "_MENU_ records per page"
		},
		"aaSorting": [[ 0, "desc" ]]
	} );
	
