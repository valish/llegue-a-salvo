
/* Base JS 
==========================================================*/

$(function(){
	$('#myModal').modal();
});

// Log
jQuery.fn.log = function (msg) {
    console.log("%s: %o", msg, this);
    return this;
};

$(function(){
	$('.dropdown-toggle').dropdown();
});

/* Tabs
==========================================================*/
$(function(){
	$('#tabs').tabs();
});

// Change Address Bar
$(function() {
    $.address.change(function(event){
      $("#tabs").tabs( "select" , window.location.hash )
    });

    $("#tabs").bind("tabsselect", function(event, ui) { 
      window.location.hash = ui.tab.hash;
    });
});
	
// Open Profile as Tab
$(function(){
	$('.l-userCol .userBadge a').click(function(event){
		event.preventDefault();
		$("#tabs").tabs("add","ajax/profile-emp.htm","Brianna C.");
	});	
});
	


/* Work Feed 
==========================================================*/

$(function(){
	
	// Open Invite
	$('li.invite .title').click(function(){
		var inv = $(this).closest('li');
		var expandable = $(this).parent().nextAll('.expandable-content');
		var prevInv = $(inv).prev();
		var nextInv = $(inv).next();

		// Expanded Invite
		$(inv).toggleClass('is-unexpanded');
		$(inv).toggleClass('is-expanded');
		$(expandable).toggleClass('is-hidden');
		$(expandable).toggleClass('is-visible');	
		$(expandable).slideToggle(120);

		// Previous Invite 
		if ($(prevInv).hasClass('is-expanded')){
			$(inv).toggleClass('no-tm');
		} else {
			$(prevInv).toggleClass('is-last');
		}

		// Next Invite
		if ($(nextInv).hasClass('is-expanded')){
			$(inv).toggleClass('no-bm');
			$(this).find('div').css('opacity', '.8')
		} else {
			$(nextInv).toggleClass('is-first');
		}


		// AJAX Load 
		if ($(expandable).hasClass('is-visible')){
			if ($(inv).hasClass('has-loaded')){} else {
				$(this).log("Invite content has been loaded");
			}} 
		else{}

		$(inv).addClass('has-loaded');

	}); 
		
});

// Invite Navigation
$(function(){
	$('.invite-nav a').click(function(){
		var invDetail = $(this).parent().nextAll('.invFeature');
		var invDesc = $(this).parent().nextAll('.invite-description');
		var invQuals = $(this).parent().nextAll('.invite-qualifications');
		var invBens = $(this).parent().nextAll('.invite-benefits');
		var invDuts = $(this).parent().nextAll('.invite-duties');
		var invSch = $(this).parent().nextAll('.invite-schedule');

		$(this).siblings().removeClass('active');
		$(this).addClass('active');
		$(invDetail).hide();

		if ($(this).hasClass('description')){ $(invDesc).show(); } else{}	
		if ($(this).hasClass('qualifications')){ $(invQuals).show(); } else{}
		if ($(this).hasClass('benefits')){ $(invBens).show(); } else{}
		if ($(this).hasClass('duties')){ $(invDuts).show(); } else{}
		if ($(this).hasClass('schedule')){ $(invSch).show(); } else{}
	});
});

// Remove Invite
$(function(){
	$('.remove').click(function(){
		$(this).closest('li').hide();
	});
});
	
// Primary Actions
$('input.accept').click(function(){
});

// Extra Actions
$(function(){
	$('.invite-actions a').tooltip();
});


// Filter
	
	// Groups
	$(function(){
		$('.fg-head').click(function(){
			$(this).toggleClass('is-closed');
			$(this).toggleClass('is-open');
			$(this).next('.fg-options').slideToggle(150);
		});
	});

	// Type
	$(document).ready( function(){ 
	    $(".showGigs").click(function(){
	        $(this).toggleClass('selected');
	        $('.checkbox',parent).attr('checked', true);
	    });
	    $(".showJobs").click(function(){
	        $(this).toggleClass('selected');
	        $('.checkbox',parent).attr('checked', false);
	    });
	});
	
	
	

/* Pending Workers
==========================================================*/	

$(function(){
	$('ul.worker-elements li').click(function(){
		
		var wrkrElem = $('.worker-element');
		var reviews = $('.worker-element.reviews');
		var examples = $('.worker-element.examples');
		var timeline = $('.worker-element.timeline');
		var education = $('.worker-element.education');
		var recognition = $('.worker-element.recognition');
		
		$(this).siblings().removeClass('active');
		$(this).addClass('active');
		$(wrkrElem).hide();
		
		if ($(this).hasClass('worker-reviews')){ $(reviews).fadeIn(); } else{}
		if ($(this).hasClass('worker-examples')){ $(examples).fadeIn(); } else{}
		if ($(this).hasClass('worker-timeline')){ $(timeline).fadeIn(); } else{}
		if ($(this).hasClass('worker-education')){ $(education).fadeIn(); } else{}
		if ($(this).hasClass('worker-recognition')){ $(recognition).fadeIn(); } else{}
		
		
		
		/*var invDetail = $(this).parent().nextAll('.invFeature');
		var invDesc = $(this).parent().nextAll('.invite-description');
		var invQuals = $(this).parent().nextAll('.invite-qualifications');
		var invBens = $(this).parent().nextAll('.invite-benefits');
		var invDuts = $(this).parent().nextAll('.invite-duties');
		var invSch = $(this).parent().nextAll('.invite-schedule');

		$(this).siblings().removeClass('active');
		$(this).addClass('active');
		$(invDetail).hide();

		if ($(this).hasClass('description')){ $(invDesc).fadeIn(); } else{}	
		if ($(this).hasClass('qualifications')){ $(invQuals).fadeIn(); } else{}
		if ($(this).hasClass('benefits')){ $(invBens).fadeIn(); } else{}
		if ($(this).hasClass('duties')){ $(invDuts).fadeIn(); } else{}
		if ($(this).hasClass('schedule')){ $(invSch).fadeIn(); } else{}*/
		
	});	
});






/* Browser Resolution 
==========================================================*/

function adjustStyle(width) {
    width = parseInt(width);
    if (width < 1150) {
        $('body').removeClass('bw1024').removeClass('bw1280');
		$('body').addClass('bw1024');
    } else {
       	$('body').removeClass('bw1024').removeClass('bw1280');
		$('body').addClass('bw1280');
    }
}

$(function() {
    adjustStyle($(this).width());
    $(window).resize(function() {
        adjustStyle($(this).width());
    });
});



/* Timeline SVG 
==========================================================*/

$(function(){
	var eg = Raphael('experience-graph', '100%', 89);
	
	
	// Items 
	var job = {
		gradient: '90-#11636e-#4a8891',  
		cursor: 'pointer',
		stroke: '#062226',
		'stroke-width': 1,
	}
	
	var gig = {
		gradient: '90-#DD3822-#e56857',
		cursor: 'pointer',
		stroke: '#8a2215',
		'stroke-width': 1
	}
	
	
	var wi01 = eg.rect(30, 48, 300, 15, 5);
	var wi02 = eg.rect(355, 48, 300, 15, 5);
	var wi03 = eg.rect(665, 48, 500, 15, 5);
	var wi04 = eg.rect(300, 18, 80, 15, 5);
	var wi05 = eg.rect(500, 18, 30, 15, 5);
	var wi06 = eg.rect(540, 18, 15, 15, 5);

	wi01.attr(job);
	wi02.attr(job);
	wi03.attr(job);
	wi04.attr(gig);
	wi05.attr(gig);
	wi06.attr(gig);

	wi01.popover();
	
});

