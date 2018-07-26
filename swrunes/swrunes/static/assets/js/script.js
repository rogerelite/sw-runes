$(document).ready(function(){
    $("a[rel=modal]").click( function(ev){
        ev.preventDefault();
 
        var id = $(this).attr("href");
 
        var alturaTela = $(document).height();
        var larguraTela = $(window).width();
     
        //colocando o fundo preto
        $('body').css('overflow', 'hidden');
        $('#mascara').css({'width':'100vw','height':alturaTela});
        $('#mascara').fadeIn(100); 
        $('#mascara').fadeTo("fast",0.8);
        $(id).show();   
    });
 
    $("#mascara").click( function(){
        $(this).hide();
        $(".window").hide();
        $('body').css('overflow', 'auto');
    });
 
    $('.fechar').click(function(ev){
        ev.preventDefault();
        $("#mascara").hide();
        $(".window").hide();
        $('body').css('overflow', 'auto');
    });
});
animarMenuLateral();