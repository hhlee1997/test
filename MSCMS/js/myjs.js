function addTab(title, url)
{
	if ($('#tt').tabs('exists', title))
	{
		$('#tt').tabs('select', title);
		var pp = $('#tt').tabs('getTab', title); // get the panel
		pp.panel('refresh');
	}
	else
	{
		var content = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
		$('#tt').tabs('add',
		{
			title : title,
			content : content,
			//href:url, 
			closable : true,
			extractor : function(data)
			{
				var tmp = $('<div></div>').html(data);
				data = tmp.find('#content').html();
				tmp.remove();
				return data;
			}
		});
	}
}


