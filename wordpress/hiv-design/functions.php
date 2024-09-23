<?
function addStyleAndScripts() {
    wp_enqueue_style('reset-style', get_template_directory_uri() . '/assets/css/reset.css');
    wp_enqueue_style('style', get_template_directory_uri() . '/assets/css/style.css');
    wp_enqueue_style('swiper-css', get_template_directory_uri() . '/assets/css/swiper-bundle.min.css');

    wp_enqueue_script('jquery', get_template_directory_uri() . '/assets/js/jquery.min.js');
    wp_enqueue_script('script', get_template_directory_uri() . '/assets/js/script.js');
    wp_enqueue_script('swiper-js', get_template_directory_uri() . '/assets/js/swiper-bundle.min.js');
}

add_action('wp_enqueue_scripts', 'addStyleAndScripts');

add_action('admin_menu', 'remove_admin_menu');
function remove_admin_menu() {
	remove_menu_page('edit.php');
    remove_menu_page('edit-comments.php');
}

add_action('wp_ajax_infoCards', 'infoCardsFormAjax');
add_action('wp_ajax_nopriv_infoCards', 'infoCardsFormAjax');
function infoCardsFormAjax()
{
    $param = [
        'numberposts' => -1,
        'post_type'    => 'cards-info',
        'post_status'  => 'publish',
        'order'   => 'ASC',
        'orderby'  => 'meta_value',
        'meta_key' => 'sort',
      ];
      
    $posts = get_posts($param);

    $output = '';

    if (!empty($posts)) {
        $count = count($posts);
        $i = 1;
        $output = '<div class="swiper cards-info-slider">
                        <div class="swiper-wrapper">';

        foreach ($posts as $post) {
            $o = strlen($i) > 1 ? '': '0';
            $output .= '<div class="swiper-slide">
                        <div class="info-card-item">';
                        
                $output .= '<div class="info-card-header">';
                    $output .= '<div class="info-card-name">'.$post->post_title.'</div>';
                    $output .= '<div class="pagination-card-name">'.$o.$i .'<i class="icon-separator"></i>'. $count .'</div>';
                $output .= '</div>';

                $output .= '<div class="info-card-content">'.$post->post_content.'</div>';
                $output .= '<img alt="" class="info-card-image" src="'.get_field('image', $post->ID).'">';
                
            $output .= '</div></div>';
            $i++;
        }

        $output .= '</div>';

        $output .= '<div class="btn-slider">
                        <span class="btn-prev-cards"></span>
                        <span class="btn-next-cards"></span>
                    </div>';

        $output .= '</div>';
    }

    echo $output;

	die;
}

add_action('wp_ajax_quizTrueAnswer', 'quizTrueAnswerFormAjax');
add_action('wp_ajax_nopriv_quizTrueAnswer', 'quizTrueAnswerFormAjax');
function quizTrueAnswerFormAjax()
{
    $id = wp_strip_all_tags(trim($_POST['id']));

    $selectAnswer = wp_strip_all_tags(trim($_POST['selectedItems']));
    $arrSelectAnswer = explode(' / ', $selectAnswer);

    $param = [
        'numberposts' => -1,
        'post_type'    => 'quiz',
        'post_status'  => 'publish',
        'include' => $id,
    ];
      
    $posts = get_posts($param);

    $arTrueAnswer = [];
    $output = '';

    foreach ($posts as $post) {
        $arAnswers = get_field('answers', $post->ID);
        foreach ($arAnswers as $answer) {
            $trueAnswer = '';
            if($answer['true-answer'] === true) {
                $arTrueAnswer[] = $answer['answer'];
                $trueAnswer = 'true-answer';
            }

            $checked = array_search($answer['answer'], $arrSelectAnswer) !== false ? 'checked' : '';
            if (!empty($answer['answer'])) {
                $output .=   '<div class="answer-item '.$checked.' '.$trueAnswer.'">
                                <div class="answer-checkbox '.$checked.'">
                                    <div class="answer-checked"></div>
                                </div>
                                <p class="answer-name">'.$answer['answer'].'</p>
                            </div>';
            }
 
        }
    }

    if ($arTrueAnswer !== $arrSelectAnswer) {
        $output .=  '<div class="modal-error-answer">
                        <div class="container-error-answer">
                            <div class="error-header">Ошибка!</div>
                            <div class="error-content">'.$posts[0]->post_content.'</div>
                            <a href="javascript:void(0);" class="link green-link close-modal-error">Хорошо!</a>
                        </div>
                    </div>';
    }

    echo $output;

	die;
}

add_action('wp_ajax_quizEnd', 'quizEndFormAjax');
add_action('wp_ajax_nopriv_quizEnd', 'quizEndFormAjax');
function quizEndFormAjax()
{
    $countStars = wp_strip_all_tags(trim($_POST['countStars']));
    $countStarsUser = wp_strip_all_tags(trim($_POST['countStarsUser']));

    $percentageRatio = ($countStarsUser * 100) / $countStars;
    
    $titleHeader = 'Вы в зоне риска!';
    $adviceQuiz = 'Вам очень нужно изучить наши карточки!';
    $secondStar = '';
    $thirdStar = '';
    $greatClass = '';

    if ($percentageRatio >= 80 && $percentageRatio < 100) {
        $titleHeader = 'Вы в зоне риска!';
        $adviceQuiz = 'Мы рекомендуем изучить наши карточки!';
        $secondStar = 'active';
        $thirdStar = '';
    }

    if ($percentageRatio == 100) {
        $titleHeader = 'Вы в безопасности!';
        $adviceQuiz = 'Вы всё знаете, но мы рекомендуем изучить наши карточки!';
        $secondStar = 'active';
        $thirdStar = 'active';
        $greatClass = 'great';
    }

    $output = '';

    $output .=  '<div class="modal-end-quiz">
                    <div class="wrapper-end-quiz">
                        <div class="end-quiz-header '.$greatClass.'">'.$titleHeader.'</div>
                        <div class="content-end-quiz">Правильных ответов:
                            <div class="block-count"><span class="count-u-true">'.$countStarsUser.'</span> из <span class="count-all-true">'.$countStars.'</span></div>
                        </div>
                        <div class="stars-block">
                            <i class="icon-big-star active"></i>
                            <i class="icon-big-star '.$secondStar.'"></i>
                            <i class="icon-big-star '.$thirdStar.'"></i>
                        </div>
                        <div class="advice-quiz">'.$adviceQuiz.'</div>
                        <div class="btns-modal">
                            <a href="." class="link green-link icon-reload">Пройти снова</a>
                            <a href="/" class="link green-link icon-cards">К карточкам!</a>
                        </div>
                        <a href="'.get_permalink(82).'" class="link green-link icon-chat">Пункты тестирования (карта)</a>
                    </div>
                </div>';

    echo $output;

	die;
}


include('functions/themeCustomPostTypes.php');