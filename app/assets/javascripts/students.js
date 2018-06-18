// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

    console.log('this stuff is laoding on every page');
    if ($('body.students.index').length == 0){
        return;
    }

    $('.delete-student').click(function (e) {

        //this is listening for the event on the element "delete-student" 
        //and will utilize an ajax request to get the parents of main student id and remove
        $('.delete-student').on('ajax:success', function(e) {
            $(e.target).parents('.main-student').remove();
            toastr.success('Student removed!');
        });
        
    });

});