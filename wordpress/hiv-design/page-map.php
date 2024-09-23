<?
/*
Template Name: Карта пунктов
*/
?>
<? get_header(); ?>
<?
$count = 0;
if (!empty($posts)) {
    $count = count($posts);
}

$numQuiz = 1;
?>
<main class="main">
    <? if (!empty($posts)): ?>
        <section class="modal-window">
            <div class="content-window map-window">
                <div class="map-section-header">
                    <p class="h2">Карта</p>
                </div>
                <div class="map-container">
                    <div style="position:relative;overflow:hidden;"><a href="https://yandex.ru/maps/56/chelyabinsk/search/%D0%BF%D1%83%D0%BD%D0%BA%D1%82%20%D1%8D%D0%BA%D1%81%D0%BF%D1%80%D0%B5%D1%81%D1%81%20%D1%82%D0%B5%D1%81%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%20%D0%B2%D0%B8%D1%87/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:0px;">пункт экспресс тестирования на вич в Челябинске</a><a href="https://yandex.ru/maps/56/chelyabinsk/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:14px;">Челябинск</a><iframe src="https://yandex.ru/map-widget/v1/?display-text=%D0%BF%D1%83%D0%BD%D0%BA%D1%82%20%D1%8D%D0%BA%D1%81%D0%BF%D1%80%D0%B5%D1%81%D1%81%20%D1%82%D0%B5%D1%81%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%20%D0%B2%D0%B8%D1%87&ll=61.442399%2C55.162850&mode=search&sll=61.367824%2C55.153961&sspn=1.021559%2C0.335861&text=%D0%BF%D1%83%D0%BD%D0%BA%D1%82%20%D1%8D%D0%BA%D1%81%D0%BF%D1%80%D0%B5%D1%81%D1%81%20%D1%82%D0%B5%D1%81%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%20%D0%B2%D0%B8%D1%87&z=11.5" width="100%" height="400" frameborder="0" allowfullscreen="true" style="position:relative;"></iframe></div>
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
    <? endif ?>
</main>
<? get_footer(); ?>