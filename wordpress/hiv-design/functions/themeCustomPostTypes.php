<?
add_action('init', 'true_register_post_type_init');

function true_register_post_type_init()
{
	// Карточки информации
	$labels = array(
		'name' => 'Карточки информации',
		'singular_name' => 'Карточка',
		'add_new' => 'Добавить карточку',
		'add_new_item' => 'Добавить карточку',
		'edit_item' => 'Редактировать карточку',
		'new_item' => 'Новая карточка',
		'all_items' => 'Все карточки',
		'search_items' => 'Искать карточку',
		'not_found' =>  'Карточек по заданным критериям не найдено.',
		'not_found_in_trash' => 'В корзине нет карточек.',
		'menu_name' => 'Карточки информации'
	);

	$args = array(
		'labels' => $labels,
		'public' => true,
		'publicly_queryable' => false,
		'has_archive' => false,
		'menu_icon' => 'dashicons-images-alt',
		'menu_position' => 4,
		'supports' => array('title', 'editor')
	);

	register_post_type('cards-info', $args);

	// Викторина
	$labels = array(
		'name' => 'Викторина',
		'singular_name' => 'Викторина',
		'add_new' => 'Добавить викторину',
		'add_new_item' => 'Добавить викторину',
		'edit_item' => 'Редактировать викторину',
		'new_item' => 'Новая викторина',
		'all_items' => 'Все викторины',
		'search_items' => 'Искать викторину',
		'not_found' =>  'Викторин по заданным критериям не найдено.',
		'not_found_in_trash' => 'В корзине нет викторин.',
		'menu_name' => 'Викторина'
	);

	$args = array(
		'labels' => $labels,
		'public' => true,
		'publicly_queryable' => false,
		'has_archive' => false,
		'menu_icon' => 'dashicons-welcome-learn-more',
		'menu_position' => 4,
		'supports' => array('title', 'editor')
	);

	register_post_type('quiz', $args);
}