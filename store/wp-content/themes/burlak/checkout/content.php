<?php
$fields = WC()->checkout()->checkout_fields;
?>

<div class="checkout">
  <div class="page__sides">
    <div class="page__side">
      <div class="checkout__title">
        <h2>Ваши данные</h2>
      </div>
      <form class="checkout-form" method="post" action="?wc-ajax=my_checkout">
        <div class="checkout__fields">
          <?php foreach ($fields['shipping'] as $key => $field): ?>
            <label class="checkout__field checkout__field--<?= $field['type'] ? $field['type'] : 'text' ?> <?php
              if ($field['class']) {
                  foreach ($field['class'] as $class) {
                      echo $class.' ';
                  }
              }
              ?>
            ">
              <?php if ($field['label']): ?>
                <div class="checkout__field__label">
                  <?= $field['label'] ?>
                </div>
              <?php endif; ?>
              <div class="checkout__field__control">
                <?php if (!$field['type']): ?>
                  <input placeholder="<?= $field['placeholder'] ?>" name="<?= $key ?>" type="text" value="<?= $field['value'] ?>"
                    <?php
                      if ($field['attrs']) {
                          foreach ($field['attrs'] as $attr) {
                              echo $attr.' ';
                          }
                      }
                    ?>
                  />
                <?php elseif ($field['type'] == 'textarea'): ?>
                  <textarea placeholder="<?= $field['placeholder'] ?>" name="<?= $key ?>"
                    <?php
                      if ($field['attrs']) {
                          foreach ($field['attrs'] as $attr) {
                              echo $attr.' ';
                          }
                      }
                    ?>
                  ><?= $field['value'] ?></textarea>
                <?php elseif ($field['type'] == 'select'): ?>
                  <select name="<?= $key ?>"
                    <?php
                      if ($field['attrs']) {
                          foreach ($field['attrs'] as $attr) {
                              echo $attr.' ';
                          }
                      }
                    ?>
                  >
                    <?php foreach ($field['options'] as $option): ?>
                      <option
                        <?= $option['disabled'] ? 'disabled' : '' ?>
                        <?= $option['value'] == $field['value'] ? 'selected' : '' ?>
                        value="<?= $option['value'] ?>">
                        <?= $option['label'] ?>
                      </option>
                    <?php endforeach; ?>
                  </select>
                <?php elseif ($field['type'] == 'radio'): ?>
                  <?php foreach ($field['options'] as $option): ?>
                  <label class="control control--radio">
                    <input
                      type="radio"
                      <?= $field['value'] === $option['value'] ? 'checked' : '' ?>
                      value="<?= $option['value'] ?>" name="<?= $key ?>"
                      <?php
                        if ($field['attrs']) {
                            foreach ($field['attrs'] as $attr) {
                                echo $attr.' ';
                            }
                        }
                      ?>
                    >
                    <div class="control__fake">
                      <?= $option['label'] ?>
                    </div>
                  </label>
                  <?php endforeach; ?>
                <?php endif; ?>
              </div>
            </label>
          <?php endforeach; ?>
        </div>
        <div class="checkout__buttons">
          <button class="button button--red" type="submit">Оформить</button>
          <a href="<?= esc_url(home_url('/')); ?>" class="ajax button button--gray-light" type="shubmit">Отменить</a>
        </div>
      </form>
    </div>
    <div class="page__side">
      <div class="page__side__title">
        Ваш заказ
      </div>
      <?php get_template_part('cart/list') ?>
      <?php get_template_part('cart/totals') ?>
    </div>
  </div>
</div>