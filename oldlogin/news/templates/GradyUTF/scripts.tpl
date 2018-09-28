<script type="text/javascript">
function setEqualHeight(columns)
{
var tallestcolumn = 0;
columns.each(
function()
{
currentHeight = $(this).height();
if(currentHeight > tallestcolumn)
{
tallestcolumn = currentHeight;
}
}
);
columns.height(tallestcolumn);
}
$(document).ready(function() {
setEqualHeight($(".columns > div.hd2"));
});

$(document).ready(function(){
  $('[data-toggle="popover"]').popover({
    //Установление направления отображения popover
    placement : 'top'
  });
});
    
//-------Всплывающие подсказки
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
//---------------------------------------




$(document).ready(function() {
  $("#slider").owlCarousel({
    autoPlay : 3000,
    stopOnHover : true,
    navigation:true,
    pagination :false,
    paginationSpeed : 1000,
    goToFirstSpeed : 2000,
    singleItem : true,
    autoHeight : true,
    transitionStyle:"fade",
      navigationText: [
      "<i class='glyphicon glyphicon-chevron-left'></i>",
      "<i class='glyphicon glyphicon-chevron-right'></i>"
      ]
  });
});
</script>


