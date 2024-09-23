<?
/*
Template Name: Викторина
*/
?>
<? get_header(); ?>
<?
$param = [
    'numberposts' => -1,
    'post_type'    => 'quiz',
    'post_status'  => 'publish',
    'order'   => 'ASC',
    'orderby'  => 'meta_value_num',
    'meta_key' => 'sort',
    ];
    
$posts = get_posts($param);

$count = 0;
if (!empty($posts)) {
    $count = count($posts);
}

$numQuiz = 1;
?>
<main class="main">
    <?if (!empty($posts)):?>
        <section class="modal-window">
            <div class="content-window quiz-window">
                <div class="quiz-section-header">
                    <p class="h2">Викторина</p>
                    <div class="quiz-info-status">
                        <div class="count-quiz">
                            <?for($i = 1; $i <= $count; $i++):?>
                                <? $active = $i === 1 ? 'color' : ''; ?>
                                <span class="quiz-pagination <?=$active?>" data-index="<?=$i?>"></span>
                            <?endfor;?>
                        </div>
                        <div class="quiz-stars" data-count-stars="<?=$count?>">
                            <span class="count-stars">0</span> <i class="icon-star"></i>
                        </div>
                    </div>
                </div>
                <div class="quiz-container">
                    <div class="swiper quiz-content">
                        <div class="swiper-wrapper">
                            <?foreach($posts as $post):?>
                                <? setup_postdata($post); ?>
                                <?
                                $arAnswers = get_field('answers');
                                $imgAnswer = get_field('image');
                                ?>
                                <div class="quiz-slide swiper-slide" data-index="<?=$numQuiz?>">
                                    <div class="quiz-item" data-id="<?=$post->ID?>">
                                        <?if(!empty($imgAnswer)):?>
                                        <div class="wrapper-answers">
                                        <?endif?>
                                        <div>
                                        <p class="quiz-num-question">Вопрос <?=$numQuiz?></p>
                                        <p class="quiz-name"><?=get_the_title();?></p>
                                            <div class="block-answers">
                                                <?foreach($arAnswers as $answer):?>
                                                    <?if (!empty($answer['answer'])):?>
                                                        <div class="answer-item">
                                                            <div class="answer-checkbox"><div class="answer-checked"></div></div>
                                                            <p class="answer-name"><?=$answer['answer']?></p>
                                                        </div>
                                                    <?endif?>
                                                <?endforeach?>
                                            </div>
                                        </div>
                                        <?if(!empty($imgAnswer)):?>
                                            <img src="<?=$imgAnswer?>" class="img-answer-block" alt="">
                                        </div>
                                        <?endif?>
                                    </div>
                                </div>
                                <?$numQuiz++?>
                                <? wp_reset_postdata(); ?>
                            <?endforeach?>
                        </div>
                        <div class="bottom-quiz">
                            <p class="bottom-caption">Отметьте все правильные ответы</p>
                            <div class="btns-slider-quiz">
                                <span class="btn-prev-quiz"></span>
                                <span class="btn-get-answer active">Ответить <i class="icon-arrow-right"></i></span>
                                <span class="btn-next-quiz">Далее <i class="icon-arrow-right"></i></span>
                                <span class="btn-end-quiz">Закончить <i class="icon-arrow-right"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom-window">
                <p class="bottom-caption">Профилатика социально значимых заболеваний</p>
                <div class="bottom-link">
                    <a href="#" class="link yellow-link">Пожертвовать</a>
                    <a href="https://t.me/hiv_informer_bot" class="link blue-link">Чат-бот</a>
                </div>
            </div>
        </section>
    <?endif?>
</main>
<? get_footer(); ?>