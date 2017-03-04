<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="style.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/userinfo/1.1.0/userinfo.min.js"></script>
<script type="text/javascript">
    $(function () {
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
</script>
<link href="https://fonts.googleapis.com/css?family=Lato:300,400" rel="stylesheet">