var Height_Index = Number(document.getElementById("total_container").clientHeight);
window.onresize = changeContentSize;
window.onload = changeContentSize;
/*setting layout for onresize*/
function changeContentSize(){
var Height_Window = Number(document.documentElement.clientHeight);
var ContentTop = Height_Window -92;
var ContentTop2 = ContentTop-100;
/*setting container size*/
document.getElementById("container").style.height = ContentTop2 + "px";
}
