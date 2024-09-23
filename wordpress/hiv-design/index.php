<? get_header(); ?>

<main class="main">
    <section class="modal-window">
        <div class="content-window">
            <div class="main-content-block">
                <div>
                    <p class="h2">Карточки информации</p>
                    <p class="caption font-alt">10 карточек с информацией про ВИЧ</p>
                </div>
                <img src="<?= get_template_directory_uri() . '/assets/images/info-cards.svg'?>" alt="">
                <a href="javascript:void(0);" class="start-info-card link red-link">Начать!</a>
            </div>
            <div class="toggles-content">
                <div class="toggle-card quest">
                    <p class="h3 font-alt">Викторина<br>с вопросами</p>
                    <p class="p3 font-alt">Викторина с вопросами</p>
                    <a href="<?=get_permalink(33)?>" class="link green-link icon-quest">Пройти!</a>
                </div>
                <div class="toggle-card game">
                    <p class="h3 font-alt">Тематическая<br>игра</p>
                    <p class="p3 font-alt">Викторина с вопросами</p>
                    <a href="#" class="link green-link icon-game">Играть!</a>
                </div>
                <div class="toggle-card chat-bot">
                    <p class="h3 font-alt">Тестирование<br>на ВИЧ (карта)</p>
                    <p class="p3 font-alt">Карта пунктов</p>
                    <a href="<?=get_permalink(82)?>" class="link green-link icon-chat">Смотреть!</a>
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
</main>
<? get_footer(); ?>