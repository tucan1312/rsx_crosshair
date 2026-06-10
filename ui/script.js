const crosshairColors = {
    white: 'brightness(0) invert(1)',

    red: 'brightness(0) saturate(100%) invert(16%) sepia(100%) saturate(7484%) hue-rotate(1deg) brightness(100%) contrast(118%)',

    green: 'brightness(0) saturate(100%) invert(68%) sepia(91%) saturate(748%) hue-rotate(70deg) brightness(104%) contrast(105%)',

    blue: 'brightness(0) saturate(100%) invert(38%) sepia(98%) saturate(2245%) hue-rotate(190deg) brightness(103%) contrast(105%)',

    yellow: 'brightness(0) saturate(100%) invert(92%) sepia(82%) saturate(749%) hue-rotate(358deg) brightness(104%) contrast(105%)',

    pink: 'brightness(0) saturate(100%) invert(46%) sepia(96%) saturate(1760%) hue-rotate(292deg) brightness(103%) contrast(105%)',

	purple: 'brightness(0) saturate(100%) invert(27%) sepia(98%) saturate(2346%) hue-rotate(265deg) brightness(103%) contrast(104%)',

	cyan: 'brightness(0) saturate(100%) invert(82%) sepia(29%) saturate(7493%) hue-rotate(139deg) brightness(102%) contrast(101%)',

	orange: 'brightness(0) saturate(100%) invert(56%) sepia(91%) saturate(1632%) hue-rotate(1deg) brightness(103%) contrast(105%)',

	black: 'brightness(0)'
};

function setCrosshairColor(color) {
    document.documentElement.style.setProperty(
        '--crosshair-filter',
        crosshairColors[color]
    );
}


$(function() {
	window.addEventListener('message', function(event) {
		switch (event.data.action) {
			case 'enable':
				$('#wrap').fadeIn();
				break;
			case 'disable':
				$('#wrap').fadeOut();
				break;

		
			case 'addItems':
                $('#wrap').fadeIn();

				$('.playerlist tr:gt(0)').remove();
				$('.playerlist').append(event.data.theItems);
				break;

			case 'updateServerInfo':
				if (event.data.maxPlayers) {
					$('#max_players').html('Next rank needs: ');
				}
				break;

			default:
				break;
		}
	});

	document.onkeyup = function(event) {
		if (event.key == 'Escape') {
			$('#wrap').fadeOut();
			$.post('http://rsx_crosshair/closemenu');
		}
	};
});


window.addEventListener('message', function(event) {

    if (event.data.showNoRedDot === true) {
        $(".type" + event.data.type).show();
    }

    if (event.data.showNoRedDot === false) {
        $(".type" + event.data.type).hide();
    }

});