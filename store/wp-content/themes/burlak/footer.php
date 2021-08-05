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