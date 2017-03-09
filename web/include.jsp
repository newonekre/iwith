<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="style.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/userinfo/1.1.0/userinfo.min.js"></script>
<script type="text/javascript">
    $(function () {

       $(".signin, .person").click(function () {
           $(".login-page").fadeIn();
       });
        
       $(".close").click(function () {
           $(".login-page").fadeOut();
       });
        
        $(".message a").click(function () {
            $("form").animate({height: "toggle", opacity: "toggle"}, "slow");
        });

        $(window).on('scroll', function () {
            if ($(window).scrollTop() > 1) {
                $("#header-container").addClass("show");
            } else {
                $("#header-container").removeClass("show");
            }
        });


        $(".accordion").accordion({
            collapsible: true
        });


        $(".faq").click(function () {
            $(".sidebar").toggleClass("open");
        });

        $(".sidebar .close-key").click(function () {
            $(".sidebar").toggleClass("open");
        });

        $(".search select").selectmenu();

        $(".search .age").each(function () {
            $(this).selectmenu()
                    .selectmenu("menuWidget")
                    .addClass("overflow");
        });

        UserInfo.getInfo(function (data) {
            if (data.city.name === null) {
                $("#cityname").html(data.country.name);
            } else {
                $("#cityname").html(data.city.name);// the "data" object contains the info
                console.log(data);
            }
        }, function (err) {
            // the "err" object contains useful information in case of an error
        });

    });

    //jQuery is required to run this code
    $(document).ready(function () {

        scaleVideoContainer();

        initBannerVideoSize('.video-container .poster img');
        initBannerVideoSize('.video-container .filter');
        initBannerVideoSize('.video-container video');

        $(window).on('resize', function () {
            scaleVideoContainer();
            scaleBannerVideoSize('.video-container .poster img');
            scaleBannerVideoSize('.video-container .filter');
            scaleBannerVideoSize('.video-container video');
        });

    });

    function scaleVideoContainer() {

        var height = $(window).height() + 5;
        var unitHeight = parseInt(height) + 'px';
        $('.homepage-hero-module').css('height', unitHeight);

    }

    function initBannerVideoSize(element) {

        $(element).each(function () {
            $(this).data('height', $(this).height());
            $(this).data('width', $(this).width());
        });

        scaleBannerVideoSize(element);

    }

    function scaleBannerVideoSize(element) {

        var windowWidth = $(window).width(),
                windowHeight = $(window).height() + 5,
                videoWidth,
                videoHeight;

        // console.log(windowHeight);

        $(element).each(function () {
            var videoAspectRatio = $(this).data('height') / $(this).data('width');

            $(this).width(windowWidth);

            if (windowWidth < 1000) {
                videoHeight = windowHeight;
                videoWidth = videoHeight / videoAspectRatio;
                $(this).css({'margin-top': 0, 'margin-left': -(videoWidth - windowWidth) / 2 + 'px'});

                $(this).width(videoWidth).height(videoHeight);
            }

            $('.homepage-hero-module .video-container video').addClass('fadeIn animated');

        });
    }

var y, a, f;

function setup() {
  createCanvas(windowWidth, windowHeight);
  background(34);
  a = random(2,10);
  f = random(0.05);
}

function draw() {
  //background(34);
  fill(34);
  noStroke();
  rect(width-200,20,200 ,50 );
  fill(238);
  textAlign(RIGHT);
  text("click to redraw", width-50,50);
  stroke(238, 10);
  var amplitude = a; //10;
  var frequency = f; //0.01;
  beginShape();
  noFill();
  for (var x=0; x<width; x+=2) {
    y = sin(x*frequency);
    var t = 0.000001*(-millis()*130);
    t = -frameCount/500.0;
    y += sin(x*frequency*2.1 + t)*4.5;
    y += sin(x*frequency*1.72 + t*1.121)*4.0;
    y += sin(x*frequency*2.221 + t*0.437)*5.0;
    y += sin(x*frequency*3.1122+ t*4.269)*2.5;
    y *= amplitude;
    vertex(x, height/2+y);
  }
  endShape();
  if (frameCount%1000===0) initV();
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

function initV() {
  background(34);
  a = random(2,10);
  f = random(0.05);
}

function mouseReleased() {
  initV();
}

</script>

<link href="https://fonts.googleapis.com/css?family=Lato:300,400" rel="stylesheet">

