<<<<<<< Updated upstream
$(function(){
  $('.previews').slick();
});
=======
$(function() {

  $('#new_message').on('submit',function(){
    // e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var images_url = data.images_url
      $.each(images_url,function(){
        $('new_message').append(`<img src=${this} width="150px" height="100px">`)
      })
      $('new_message').append(`
              <p>${data.title}</p>
              <p>${data.text}</p> `)
      debugger;
    })

    .fail(function(){
      alert('error');
    });
    return false;
  });
});

 

// $.each(members,
//   function(index, elem) {
//     // 年齢が40以上のメンバーが見つかったところで出力停止
//     if (elem.age >= 40) { return false; }
//     // メンバー情報を「名前（年齢）」の形式でリストに整形
//     $('<li></li>')
//       .append(elem.name + '（' + elem.age + '）')
//       .appendTo('#result');
//   }
// );

// $(document).on('turbolinks:load', function() {
//   $('.previews').slick({
//     dots: true,
//     infinite: true,
//     speed: 500,
//     fade: true,
//     cssEase: 'linear'
//   });
// });


>>>>>>> Stashed changes
