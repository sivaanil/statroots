// Responsive Mulit level menu

$(document).ready(function() {
    $("#main-nav-toggle ul li ul").parent().prepend('<span class="fa fa-plus"></span>');
    $("#main-nav-toggle ul li span").click(function() {
        $(this).parent().find('ul').slideToggle();
        $(this).parent().find('ul ul').hide();
    });
    // $('.navbar-toggle').click(function() {
    //     $('.abc').slideToggle();
    // });
    // $('.nav > li').click(function() {
    // 	$(this).css("display", "block");
    // }
});