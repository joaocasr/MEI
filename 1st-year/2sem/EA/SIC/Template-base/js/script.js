$('#mymodal').css('visibility', 'visible');
$('#clsbtn').on('click',function(){
    $('#mymodal').hide();
})

function sayHello(){
    console.log("Hello, World!")
}
$("#divnum").text("0")
$("#mybutton").on("click",function(){
    console.log("entrou")
    n = $("#divnum").text();
    num = parseInt(n);
    n++;
    $("#divnum").text(n)
})

var json = "{\"name\":\"a user\",\"age\":\"20\"}";
var u = JSON.parse(json);
console.log(u.name);