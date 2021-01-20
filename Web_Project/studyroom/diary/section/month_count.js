var year = 2019;
var month = 0;
var start = new Date(year, month, 1).moveToFirstDayOfMonth().getDay();
var temp=1;

document.write("<div id='block'>");
for(i=0; i<start; i++)
{
	document.write("<div></div>");
}
for(temp=1; temp<Date.getDaysInMonth(year, month)+1; temp++)
{
	document.write("<div>" + temp +"</div>");
}
for(i=temp+start-1; i<6*7; i++)
{
	document.write("<div></div>");
}
document.write("</div>");