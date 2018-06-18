// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

    if ($('body.cohorts.index').length == 0){
        return;
    }
    console.log('hello world');
    $('.delete-cohort').click(function (e) {

        //this is listening for the event on the element "delete-student" 
        //and will utilize an ajax request to get the parents of main student id and remove
        $('.delete-cohort').on('ajax:success', function(e) {
            $(e.target).parents('.main-cohort').remove();
            toastr.success('Cohort Deleted!');
        });
        
    });

});

$(document).ready(function(){

    if ($('body.cohorts.show').length == 0){
        return;
    }

    $('.remove-student').click(function (e) {
        console.log('hello world');
        //this is listening for the event on the element "remove-student" 
        //and will utilize an ajax request to get the parents of main student id and remove
        $('.remove-student').on('ajax:success', function(e) {
            $(e.target).parents('.mystudent').remove();
            toastr.success('Removed from Cohort!');
        });
        
    });

});