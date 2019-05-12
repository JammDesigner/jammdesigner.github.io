function stackToTop(equipoid)	{
	var equipo = document.getElementById(equipoid).style;
	equipo.zIndex = "10";
}

function stackToBottom(equipoid)	{
	var equipo = document.getElementById(equipoid).style;
	equipo.zIndex = "0";
}