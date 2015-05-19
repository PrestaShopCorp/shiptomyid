{*
* This file is part of a NewQuest Project
*
* (c) NewQuest <contact@newquest.fr>
*
* For the full copyright and license information, please view the LICENSE
* file that was distributed with this source code.
*}

<script type="text/javascript">
	var popup_url = "{$popup_url}&callback={$callback_url|urlencode}";
	var video_url = "{$video_url|escape:'htmlall':'UTF-8'}";
	var button_text = "{l s='I want to use Ship2MyId for my order.' mod='shiptomyid'}";
	var link_text = "{l s='What is Ship2MyId ?' mod='shiptomyid'}";

	{literal}
	$(document).ready(function(){

		/* JS message catch to close popup action from iframe. */
		window.onmessage=function(msg) {
			if(msg.data && msg.data.name=="Close") {
				console.log('FancyClose');
				$.fancybox.close();
			}
		};

		var shipto_button_code = '<a href="#" style="margin: 5px 0;" class="button_large" id="shiptomyidButton">'+button_text+'</a>';

		if (video_url.length) {

			shipto_button_code += '<a style="margin-left: 10px;" class="fancybox.iframe" id="shiptomyidVideo" href="'+video_url+'" >'+link_text+'</a>';
		}

		if ($(".address_add").length) {
			$(".address_add").append(shipto_button_code)
		}
		else {
			$(".addresses").append(shipto_button_code);
		}

		$("#shiptomyidButton").on('click', function(){

			$.fancybox.open({href: popup_url}, {type:'iframe', height: {/literal}{$popup_height}{literal}, width: {/literal}{$popup_width}{literal}, helpers : {overlay : {closeClick: false}}});
		});

		if ($("#shiptomyidVideo").length > 0) {

			$("#shiptomyidVideo").fancybox({
				maxWidth	: 800,
				maxHeight	: 600,
				width		: '70%',
				height		: '70%',
				autoSize	: false,
				closeClick	: false,
				openEffect	: 'none',
				closeEffect	: 'none'
			});
		}

	});
	{/literal}

</script>