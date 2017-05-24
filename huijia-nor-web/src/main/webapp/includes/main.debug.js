
//计算天数差的函数，通用  
function  DateDiff(sDate1,  sDate2){    //sDate1和sDate2是2006-12-18格式  
   var  aDate,  oDate1,  oDate2,  iDays ; 
   aDate  =  sDate1.split("-") ; 
   oDate1  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0]);    //转换为12-18-2006格式  
   aDate  =  sDate2.split("-");  
   oDate2  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0]) ; 
   iDays  =  parseInt(Math.abs(oDate1  -  oDate2)/1000/60/60/24);    //把相差的毫秒数转换为天数  
   return  iDays;  
}; 

;(function($) {

    //获取当前日期
    function getDates(myDate){

        // var myDate =  new Date(),week,date,datetimeArr = [];
        var week,date,datetimeArr = [];
        myDate.setDate(myDate.getDate() -1);

        for (var i = 0; i < 5; i++) {
            // alert(i)
            myDate.setDate(myDate.getDate() +1);
            // alert(myDate)
            var year     = myDate.getFullYear(),
                month    = myDate.getMonth()+1,
                day      = myDate.getDate(),
                week     = myDate.getDay(),
                datetime = '';
            month    = (month<10) ? ("0"+month) : month;
            day      = (day<10) ? ("0"+day) : day;
            datetime = year+'-'+month+'-'+day;
            switch (week){
                case 1: week="周一"; break;
                case 2: week="周二"; break;
                case 3: week="周三"; break;
                case 4: week="周四"; break;
                case 5: week="周五"; break;
                case 6: week="周六"; break;
                default:week="周日"; break;
            };
            datetimeArr.push({"datetime":datetime,"year":year,"month":month,"day":day,"week":week,"hours":''});
        };
        return datetimeArr;
    };

    function initTimes(){
        var myDate   =  new Date(),
            hours    =  myDate.getHours(),
            minutes  =  myDate.getMinutes(),
            $curminutes = parseInt(hours*60)+parseInt(minutes),
            $li = $("#calendar").find("li").not(".fix");
        $li.each(function(){
            var $times = $(this).find("span").text().split(":"),
                $minutes = parseInt($times[0])*60+parseInt($times[1]);
            if($minutes < $curminutes){
                $(this).find("a").addClass("past");
            }
        });
    };
    initTimes();
    setInterval(initTimes,1800000);

    function datetimeDraw($datetimeArr){
        for(var i = 0; i < $datetimeArr.length; i++){
            $(".calendar-title").find(".col").eq(i).html($datetimeArr[i].day+'<br>'+$datetimeArr[i].week);
            $(".calendar-title").find(".col").eq(i).attr("data-datetime",$datetimeArr[i].datetime);
        };
    };

    var myDate   =  new Date();
    var $datetimeArr =  getDates(myDate);
    $("#today").val($datetimeArr[0].datetime);
    $("#selectdate").val('');

    datetimeDraw($datetimeArr);

    function selectDates(){
        var 
            $today       = $.trim($("#today").val()),
            $selectDate  = $.trim($("#selectdate").val()),
            $iDays       = ($selectDate) ? window.DateDiff($today,$selectDate) : 0,
            $datetimeArr = [];
       // alert($selectDate)
        if($iDays>4){
            var $diff = $iDays - 4;
            var myDate   =  new Date();
            myDate.setDate(myDate.getDate() +$diff);
            $datetimeArr =  getDates(myDate,1);
            datetimeDraw($datetimeArr);
            $(".calendar-title").find(".col:last").trigger("click");
        }else{
            var myDate   =  new Date();
            $datetimeArr =  getDates(myDate,1);
            datetimeDraw($datetimeArr);
            $(".calendar-title").find(".col").eq($iDays).trigger("click");
        }
        

    };

 
    $(".calendar-title").on("click",".col",function(){
        $(this).addClass("on").siblings(".col").removeClass("on");
        $("#selectdate").val($(this).attr("data-datetime"));
        initTimes();
    });

    // 日历弹框
    var $input = $('.datepicker').pickadate({
        container: '.date-choose',
        onClose:function(){
            $('.pickerdate').hide();
            var dateObj = picker.get('select');
            if (dateObj)
            {
                var selectDate = dateObj.year + '-' + (dateObj.month + 1) + '-' + dateObj.date;
                $("#selectdate").val(selectDate); 
                selectDates();               
            }
        }
    });
    var dateMin = -0.5,dateMax = 14;

    if ($input.length) {
        var picker = $input.pickadate('picker');
        
        if (dateMin != 0)
        {
            picker.set('min', + dateMin);
        }
        
        if (dateMax != 0)
        {
            picker.set('max', + dateMax);
        }
    }

    $(document).on('click', '.head .date', function() {
        $('.pickerdate').show();
         picker.open()
    });

    // 选择日历的天
    $(document).on('click', '#calendar .plan a', function() 
    {
        if (!$(this).hasClass('past')) 
        {
            $('#calendar .plan a').removeClass('active');
            $(this).addClass('active');
            $('#time').val($(this).attr('time'));
        }
    });
    
}(jQuery));