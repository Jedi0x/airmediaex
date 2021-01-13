$( document ).ready(function() {
    
    $('#top_search_button').click(function(){
        $('#top_search input').toggle("slide", { direction: "right" }, 200);
        $('.search-results').addClass('show-sw');
    });
    
});