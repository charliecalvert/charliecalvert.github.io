totem = 'bird';

var showBind = function()
{
	showDebug(this.totem);
}

function MyFunction()
{ 
	this.totem = 'bear';
}

var showBindAgain = function()
{
	var myFunction = new MyFunction();
	xshowBind = this.showBind.bind(myFunction);	
	xshowBind();
}

var showDebug = function(data)
{
	$('#debugBind').append('<li>' + data + '</li>');
}

