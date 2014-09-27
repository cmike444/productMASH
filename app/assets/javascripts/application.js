// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require masonry/jquery.masonry
//= require turbolinks
//= require bootstrap
//= require_tree .

$(document).ready(function(){

	 $(".scroll").click(function(event){
         event.preventDefault();
         //calculate destination place
         var dest=0;
         if($(this.hash).offset().top > $(document).height()-$(window).height()){
              dest=$(document).height()-$(window).height();
         }else{
              dest=$(this.hash).offset().top;
         }
         //go to destination
         $('html,body').animate({scrollTop:dest}, 1000,'swing');
     });

     $('.new-project-submit').click(function(){
        $('#newProjectModal').modal('hide');
        location.reload();
     });

    (function() {

        var testimonials = $(".testimonial-wrapper");
        var testimonialIndex = -1;

        function showNextTestimonial() {
            ++testimonialIndex;
            testimonials.eq(testimonialIndex % testimonials.length)
                .fadeIn(700)
                .delay(5000)
                .fadeOut(700, showNextTestimonial);
        }

        showNextTestimonial();
    })()


    $(function() {
       $('#flash_notice').delay(500).fadeIn('normal', function() {
          $(this).delay(2500).fadeOut();
       });
    });
    
    var img = document.getElementById('idea');
    // var imageWidth = img.width + 'px';
    var imageHeight = img.height + 'px';
    $('.messages').css('height', imageHeight);
    $('#idea-canvas').attr('height', $('#idea').css('height'));
    $('#idea-canvas').attr('width', $('#idea').css('width'));
    
    $("#idea-canvas").click(function(e){ 
        var img = document.getElementById('idea-canvas');
        var imageWidth = img.width;
        var imageHeight = img.height;
        var x = e.pageX - img.offsetLeft;
        var y = e.pageY - img.offsetTop; 
        var ctx = this.getContext('2d');
        ctx.fillStyle = '#fff';
        ctx.strokeStyle = '#eee';
        ctx.shadowColor = '#c8c8c8';
        ctx.shadowBlur = 1;
        ctx.shadowOffsetX = 0;
        ctx.shadowOffsetY = 1;
        ctx.beginPath();
        ctx.arc(x, y, 8,0, 2*Math.PI);
        ctx.stroke();
        ctx.fill();

    });

});
