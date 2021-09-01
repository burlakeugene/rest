	<?php
		$phone = get_option('phone');
		$work_time = get_option('work_time');
		$socials = get_socials();
		$stores = get_stores();
	?>
	<div class="container to-top-container">
		<a class="to-top scroller" href="#top">
			<?php get_template_part('icons/arrow-top') ?>
		</a>
	</div>
	<footer class="footer">
		<div class="container">
			<div class="footer__blocks">
				<?php
					if($phone):
				?>
				<div class="footer__block">
					<div class="footer__block__title">
						Контактный телефон:
					</div>
					<div class="footer__block__inner">
						<a href="tel:<?= phone_replace($phone) ?>">
							<?= $phone ?>
						</a>
					</div>
				</div>
				<?php endif; ?>
				<?php
					if($work_time):
				?>
				<div class="footer__block">
					<div class="footer__block__title">
						Время работы:
					</div>
					<div class="footer__block__inner">
						<?= apply_filters('the_content', $work_time) ?>
					</div>
				</div>
				<?php endif; ?>

				<?php
					if($stores):
				?>
				<div class="footer__block footer__block--stores">
					<div class="footer__block__title">
						Адреса ресторанов:
					</div>
					<div class="footer__block__inner">
						<?php get_template_part('stores/list--mini') ?>
					</div>
				</div>
				<?php endif; ?>
				<?php if($socials): ?>
				<div class="footer__block">
					<div class="footer__block__title">
						Мы в соц. сетях:
					</div>
					<div class="footer__block__inner">
						<?php get_template_part('blocks/socials') ?>
					</div>
				</div>
				<?php endif; ?>
			</div>
			<div class="footer__blocks footer__blocks--borders">
				<div class="footer__block">
					<?php
						wp_nav_menu(array(
							'theme_location' => 'footer',
							'menu_class' => 'navigation navigation--footer'
						));
					?>
				</div>
				<div class="footer__block footer__block--callback">
					<button class="button button--gray" data-callback="Футер">
						Обратная связь
					</button>
				</div>
			</div>
			<div class="footer__blocks">
				<div class="footer__block footer__block--rights">
					<?= get_option('copyrights') ?>
				</div>
				<div class="footer__block footer__block--developer">
					<a href="https://marketing.rockotov.ru/" target="_blank">Разработка сайтов</a>
				</div>
			</div>
		</div>
	</footer>
	<?php get_template_part('blocks/callback') ?>
	<?php get_template_part('search/modal') ?>
</div>
<div class="preloader preloader__visible">
	<div class="preloader-spinner">
		<svg version="1.1"
			xmlns="http://www.w3.org/2000/svg"
			xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="25 25 50 50">
			<circle cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke="#45d6b5" stroke-linecap="round" stroke-dashoffset="0" stroke-dasharray="100, 200">
				<animateTransform attributeName="transform" attributeType="XML" type="rotate" from="0 50 50" to="360 50 50" dur="2.5s" repeatCount="indefinite"/>
				<animate attributeName="stroke-dashoffset" values="0;-30;-124" dur="1.25s" repeatCount="indefinite"/>
				<animate attributeName="stroke-dasharray" values="0,200;110,200;110,200" dur="1.25s" repeatCount="indefinite"/>
			</circle>
		</svg>
	</div>
</div>
<?= get_option('common_scripts'); ?>
<?php wp_footer(); ?>
</body>

</html>