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

});
