<%if @progress >= 100%>
$("#<%=@task.id%>").replaceWith('<span class="label label-success">发送成功</span>');
<%else%>
$("#<%=@task.id%>").children().width(<%=@progress%>);
<%end%>