$(function(){
	
	switch(menu){
	case 'About':
		$('#about').addClass('active');
		break;
	case 'Home':
		$('#home').addClass('active');
		break;
	case 'Login':
		$('#login').addClass('active');
		break;
	case 'Cart':
		$('#cart').addClass('active');
		break;
	case 'Add Product':
		$('#productform').addClass('active');
		break;
		
	default:
		
		break;
	}
})