$(document).ready(function() {
  $('.userInfoCont').on('click', '#registerNow', logBoxAjaxCall);
  $('#registerBox').on('click', '#loginNow', logBoxAjaxCall);

  function logBoxAjaxCall(event){
    event.preventDefault();
    $target = $(event.target);
    console.log($target)
    $.ajax({
      type: $target.attr('method'),
      url: $target.attr('action'),
      data: $target.serialize()
    }).done(function(response){
      $('.userInfoCont').replaceWith(response);
    });
  };

  $('#friends').on('click', '#friendslistButton', friendsAjaxCall);
  $('#friends').on('click', '#friendrequestButton', friendsAjaxCall);
  $('#friends').on('submit', '.button_to', friendsEditAjaxCall);

  $('#friend_page_add').on('submit', '.add', friendsEditAjaxCall);

  $('#friends').on('submit', '#search', function(event){
    event.preventDefault();
    $target = $(event.target);
    $.ajax({
      type: $target.attr('method'),
      url: $target.attr('action'),
      data: $target.serialize()
    }).done(function(response){
      $('#friends').children('ul').replaceWith(response);
      $target.children('input[name="email"]').val("");
    });
  });

  function friendsAjaxCall(event){
    event.preventDefault();
    $target = $(event.target);
    $.ajax({
      type: $target.attr('method'),
      url: $target.attr('action'),
      data: {user_id: parseInt($('#userID').val()), friend_id: parseInt($target.children('#friendID').val())}
    }).done(function(response){
      $('#friends').children('ul').replaceWith(response)
    });
  };

  function friendsEditAjaxCall(event){
    event.preventDefault();
    $target = $(event.target);
    $.ajax({
      type: $target.children('input[name="_method"]').val(),
      url: $target.attr('action')
    }).done(function(response){
      $('#friends').children('ul').replaceWith(response)
    });
  };


  $('#bio').on('click', 'p', function(event){
    $('#bioEdit').text('Save Change');
  });

  $('#friend_page_add').on('submit', 'add_back_button', function(event){
    event.preventDefault();
    $target = $(event.target);
    $.ajax({
      type: $target.children('input[name="_method"]').val(),
      url: $target.attr('action')
    }).done(function(response){
      $('#friend_page_add').text('request sent')
    });
  });

  $('#friend_page_add').on('click', 'send_request_button', function(event){
    event.preventDefault();
    $target = $(event.target);
    $.ajax({
      type: $target.children('input[name="_method"]').val(),
      url: $target.attr('action')
    }).done(function(response){
      $target.text('request sent')
    });
  });

  $('#bio').on('click', '#bioEdit', function(event){
    event.preventDefault();
    $target = $(event.target);
    $target.text('Saving...');
    $.ajax({
      type: 'PUT',
      url: $target.attr('action'),
      data: {user_id: parseInt($('#userID').val()), newbio: $target.siblings('p').text()}
    }).done(function(response){
      $target.text('Saved');
    });
  });


  $('#possiblevalues').on('click', 'a', function(event){
    event.preventDefault();
    console.log('fail');
    $target = $(event.target)
    $.ajax({
      type: 'post',
      url: $target.attr('action'),
      data: {friend_id: parseInt($('#userID').val()), value_id: parseInt($target.attr('value'))}
    }).done(function(response){
      $target.closest('#possiblevalues').siblings('div').children('p').replaceWith(response);
    });
  });


  $('#addvalue_form').on('submit', function(event){
    event.preventDefault();
    $target = $(event.target)
    console.log($target);
    $.ajax({
      type: 'post',
      url: $target.attr('action'),
      data: $target.serialize()
    }).done(function(response){
      $target.parent().siblings().children('p').replaceWith(response);
      $target.children('input[name=\'word\']').val("");
    });
  });

  $('#morevalue_button').on('click', function(event){
    event.preventDefault();
    $target = $(event.target)
    $target.text('Loading...');
    $.ajax({
      type: 'GET',
      url: location.pathname+'/values'
    }).done(function(response){
      $target.siblings('p').replaceWith(response);
      $target.text('More Values');
    });
  });



});




