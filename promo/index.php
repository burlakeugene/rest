<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="./dist/css/main.css" />
  <title>Document</title>
</head>
<?php
$items = array(
  array(
    "title" => "Советская пельменная",
    "logo" => "./assets/images/left-side-logo.png",
    "background" =>  "./assets/images/left-side-background.png",
    "description" => "Это, прежде всего, традиции, всегда свежие качественные
      продукты, контроль всех стадий производства блюд, сочетание
      ретро-атмосферы и современных стандартов обслуживания.",
    "link" => "#"
  ),
  array(
    "title" => "Vne vremeni",
    "logo" => "./assets/images/right-side-logo.png",
    "background" =>  "./assets/images/right-side-background.png",
    "description" => "Говорят, посиделки с друзьями вечером в понедельник, с бокалом
      вина и вкусным ужином - заряжают и оставляют впечатлений на
      всю неделю",
    "link" => "#"
  )
)
?>

<body>
  <div class="app">
    <div class="app__background">
      <div class="app__background__sides">
        <?php foreach ($items as $item) : ?>
          <div class="app__background__side" style="
              background-image: url(<?= $item['background'] ?>);
            "></div>
        <?php endforeach; ?>
      </div>
      <div class="app__background__gradient"></div>
    </div>
    <div class="app__content">
        <div class="app__content__title">
          <h1>Выберите ресторан</h1>
        </div>
        <div class="app__content__sides">
        <?php foreach ($items as $key => $item) : ?>
          <div class="app__content__side" style="
          background-image: url(<?= $item['background'] ?>);
        ">
          <?php if ($key === 0): ?>
            <div class="app__content__title">
              <h2>Выберите ресторан</h2>
            </div>
          <?php endif; ?>
            <div class="app__item">
              <div class="app__item__body">
                <div class="app__item__logo">
                  <a href="<?= $item['link'] ?>" target="_blank">
                    <img src="<?= $item['logo'] ?>" alt="<?= $item['title'] ?>" />
                  </a>
                </div>
                <div class="app__item__title">
                  <h2><?= $item['title'] ?></h2>
                </div>
                <div class="app__item__description">
                  <p>
                    <?= $item['description'] ?>
                  </p>
                </div>
              </div>
              <div class="app__item__footer">
                <div class="app__item__link">
                  <a href="<?= $item['link'] ?>" target="_blank">Выбрать и перейти</a>
                </div>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
  </div>
  <script src="./dist/js/bundle.js"></script>
</body>

</html>