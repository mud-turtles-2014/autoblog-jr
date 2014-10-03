$(document).ready(function() {

	$('#add_comment').submit(function(event) {
    event.preventDefault()
    var url = $(this).attr("action");
    var commentContent = $(this).serialize();
    $(this)[0].reset();

    $.ajax({
      type: "POST",
      url: url,
      data: commentContent
    })
    .done(function(response) {
    	console.log("reached here")
    	console.log(response)
      $('.comment_list').prepend(response);
    });
  });



	var count = 3;


	$('#load_more').submit(function(event) {
    event.preventDefault()
    count += 1;
    console.log(count)

    $.ajax({
      type: "POST",
      url: '/',
      data: {"count": count}
    })
    .done(function(response) {
    	console.log("reached here")
    	console.log(response)
      $('#spacer').prepend(response);
    });
  });




});
