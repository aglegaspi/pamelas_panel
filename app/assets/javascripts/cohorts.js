// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

    console.log('this stuff is loading on every page');
    if ($('body.cohorts.index').length == 0){
        return;
    }

    $('.delete-cohort').click(function (e) {

        //this is listening for the event on the element "delete-student" 
        //and will utilize an ajax request to get the parents of main student id and remove
        $('.delete-cohort').on('ajax:success', function(e) {
            $(e.target).parents('.main-cohort').remove();
            toastr.success('Cohort Removed!');
        });
        
    });

});