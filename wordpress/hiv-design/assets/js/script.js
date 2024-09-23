
jQuery(document).ready(function ($) {
  function swiperCard() {
    swiper = new Swiper(".cards-info-slider", {
      slidesPerView: 1,
      loop: false,
      navigation: {
        nextEl: '.cards-info-slider .btn-next-cards',
        prevEl: '.cards-info-slider .btn-prev-cards',
      },
    });
  }

  $('.start-info-card').on('click', function () {
    data = [
      { 'name': 'action', 'value': 'infoCards' },
    ];
    $(data).serialize();

    $.ajax({
      url: '/wp-admin/admin-ajax.php',
      type: 'POST',
      data: data,
      success: function (req) {
        console.log(req);
        $('.main-content-block').html(req);
        $('.main-content-block').addClass('slider-active');
        swiperCard();
      },
      error: function (request, status, error) {
        console.log(request);
        console.log(status);
        console.log(error);
      }
    });
  });


  $('.block-answers').on('click', '.answer-item', function () {
    $(this).find('.answer-checkbox').toggleClass('checked');
    $(this).toggleClass('checked');
  });

  swiperQuiz = new Swiper(".quiz-content", {
    slidesPerView: 1,
    loop: false,
    navigation: {
      nextEl: '.quiz-content .btn-next-quiz',
      prevEl: '.quiz-content .btn-prev-quiz',
    },
    allowTouchMove: false,
    autoHeight: true,
  });

  swiperQuiz.on('slideChangeTransitionEnd', function () {
    if ($('.quiz-slide.swiper-slide-active').hasClass('destroy')) {
      $('.btn-get-answer').removeClass('active');
      $('.btn-next-quiz').addClass('active');
    }
    else {
      $('.btn-get-answer').addClass('active');
      $('.btn-next-quiz').removeClass('active');
    }

    if (this.isEnd === true) {
      $('.quiz-slide.swiper-slide-active').addClass('last-slide-quiz');
    }

    var indexSLider = $('.quiz-slide.swiper-slide-active').attr('data-index');
    $(`.quiz-pagination[data-index="${indexSLider}"]`).addClass('color');
  });

  $('.btn-get-answer').on('click', function () {
    var idQuiz = $('.quiz-slide.swiper-slide-active .quiz-item').attr('data-id');

    var selectAnswer = $('.quiz-slide.swiper-slide-active .answer-item.checked .answer-name').map(function () {
      return $(this).text();
    }).get().join(" / ");

    data = [
      { 'name': 'action', 'value': 'quizTrueAnswer' },
      { 'name': 'id', 'value': idQuiz },
    ];
    data.push({ 'name': 'selectedItems', 'value': selectAnswer });
    $(data).serialize();

    $.ajax({
      url: '/wp-admin/admin-ajax.php',
      type: 'POST',
      data: data,
      dataType: 'html',
      success: function (req) {
        var parsedHTML = $('<div>').html(req);

        var modalError = parsedHTML.find('.modal-error-answer');
        var answerItems = parsedHTML.find('.answer-item');

        if ($(modalError).length > 0) {
          $('main').after(modalError);
        }
        else {
          var countStars = $('.count-stars').text();
          $('.count-stars').text(parseInt(countStars) + 1);
        }

        $('.quiz-slide.swiper-slide-active').addClass('destroy');
        $('.quiz-slide.swiper-slide-active .block-answers').empty();
        $('.quiz-slide.swiper-slide-active .block-answers').append(answerItems);

        if ($('.quiz-slide.swiper-slide-active').hasClass('last-slide-quiz')) {
          $('.btn-get-answer').removeClass('active');
          $('.btn-end-quiz').addClass('active');
        }
        else {
          $('.btn-get-answer').removeClass('active');
          $('.btn-next-quiz').addClass('active');
        }
      },
      error: function (request, status, error) {
      }
    });
  });

  $('body').on('click', '.close-modal-error', function () {
    var modalContainer = $(this).parents('.modal-error-answer');
    modalContainer.remove();
  });

  $('.btn-end-quiz').on('click', function () {
    var countStarsUser = $('.count-stars').text();
    var countStars = $('.quiz-stars').attr('data-count-stars');

    data = [
      { 'name': 'action', 'value': 'quizEnd' },
      { 'name': 'countStars', 'value': countStars },
      { 'name': 'countStarsUser', 'value': countStarsUser },
    ];

    $(data).serialize();

    $.ajax({
      url: '/wp-admin/admin-ajax.php',
      type: 'POST',
      data: data,
      dataType: 'html',
      success: function (req) {
        var parsedHTML = $('<div>').html(req);
        $('main').after(parsedHTML.find('.modal-end-quiz'));
      },
      error: function (request, status, error) {
      }
    });
  });

});