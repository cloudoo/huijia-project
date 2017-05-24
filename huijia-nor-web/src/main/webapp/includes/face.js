// QQ表情插件
(function ($) {

    var face_txts = [
            [
                ["→_→"],
                ["微笑"],
                ["嘻嘻"],
                ["哈哈"],
                ["爱你"],
                ["挖鼻"],
                ["吃惊"],
                ["晕"],
                ["泪"],
                ["馋嘴"],
                ["抓狂"],
                ["哼"],
                ["可爱"],
                ["怒"],
                ["汗"],
                ["害羞"],
                ["困"],
                ["钱"],
                ["偷笑"],
                ["笑cry"],
                ["doge"],
                ["喵喵"],
                ["酷"],
                ["衰"],
                ["闭嘴"],
                ["鄙视"],
                ["色"],
                ["鼓掌"]
            ],
            [
                ["悲伤"],
                ["思考"],
                ["生病"],
                ["亲亲"],
                ["怒骂"],
                ["太开心"],
                ["白眼"],
                ["右哼哼"],
                ["左哼哼"],
                ["嘘"],
                ["委屈"],
                ["吐"],
                ["可怜"],
                ["睡"],
                ["挤眼"],
                ["失望"],
                ["顶"],
                ["疑问"],
                ["困"],
                ["感冒"],
                ["拜拜"],
                ["黑线"],
                ["阴险"],
                ["互粉"],
                ["心"],
                ["伤心"],
                ["猪头"],
                ["熊猫"]
            ],
            [
                ["兔子"],
                ["握手"],
                ["作揖"],
                ["赞"],
                ["耶"],
                ["good"],
                ["弱"],
                ["NO"],
                ["ok"],
                ["haha"],
                ["来"],
                ["威武"],
                ["鲜花"],
                ["钟"],
                ["浮云"],
                ["飞机"],
                ["月亮"],
                ["太阳"],
                ["微风"],
                ["下雨"],
                ["给力"],
                ["神马"],
                ["围观"],
                ["话筒"],
                ["奥特曼"],
                ["草泥马"],
                ["萌"],
                ["囧"]
            ]
        ],
        wrapper_face = '<aside class="wrapper-face hidden"><div class="facewrapper"><div class="scroller tab-face">',

        grounp_length = face_txts.length,
        faceMapping = {};//解析映射表;

    face_txts.forEach(function (group, g) {
        wrapper_face += '<div id="face_' + (g + 1) + '" class="content-tab-face selfclear">';
        group.forEach(function (face, f) {
            wrapper_face += 0 == g && 0 == f ? '<i data-face="' + face[0] + '" class="face_' + (g + 1) + " face icon_" + f + '"></i>' : '<i data-face="[' + face[0] + ']" class="face_' + (g + 1) + " face icon_" + f + '"></i>'
            faceMapping[face[0]] = (g + 1)+'_'+ f;
        });
        wrapper_face += "</div>"
    });
    wrapper_face += '</div></div><ul class="nav-tab-face selfclear"><li class="current">1</li>';
    for (var k = 2; grounp_length >= k; k++) {
        wrapper_face += "<li>" + k + "</li>";
    }
    wrapper_face += "</ul></aside></div></div></aside>";


    $.fn.face = function (options) {
        var defaults = {
            textarea: '#content',
            container: 'body'
        };
        var option = $.extend(defaults, options);

        var body_width = $("body").width(),
            $wrapper_face = $(wrapper_face);

        $wrapper_face.find(".content-tab-face").css("width", body_width),
            $wrapper_face.find(".scroller").css("width", body_width * grounp_length);
        var $nav_li = $wrapper_face.find(".nav-tab-face li"),
            scroller = $wrapper_face.find(".scroller")[0],
            k = 0,
            $textarea = $(option.textarea),
            textarea = $textarea[0],
            $window = $(window),
            $this = $(this);

        scroller.style.webkitTransition = 'all 0.4s ease-out';
        scroller.style.transition = 'all 0.4s ease-out';
        $(option.container).append($wrapper_face);
        var toutchStatus = {
                startTime: '',
                moved: false,
                startX: '',
                startY: '',
                moveEndX: '',
                moveEndY: '',
                startClientX: '',
                startClientY: ''
            },
            scrollMove = function (scroll, x, y, z, animate) {//移动
                scroll.style.webkitTransform = "translate3d(" + x + "px, " + y + "px," + z + "px)";
                scroll.style.transform = "translate3d(" + x + "px, " + y + "px," + z + "px)";
            },
            insertText = function (textarea, str) {//标签插入
                var c = textarea.value;
                if ("number" == typeof textarea.selectionStart && "number" == typeof textarea.selectionEnd) {
                    var d = textarea.selectionStart,
                        e = textarea.selectionEnd,
                        f = d;
                    textarea.value = c.substring(0, d) + str + c.substring(e, c.length),
                        f += str.length,
                        textarea.selectionStart = textarea.selectionEnd = f
                } else if (document.selection) {
                    var g = document.selection.createRange();
                    if ("TEXTAREA" == g.parentElement().tagName) {
                        if (g.text)
                            g.text = str;
                        else {
                            var h = document.body.createTextRange();
                            h.moveToElementText(a),
                                g.setEndPoint("StartToStart", h);
                            var i = g.text.length;
                            textarea.value = c.substring(0, i) + str + c.substring(i, c.length)
                        }
                        return
                    }
                } else {
                    textarea.value += str;
                }
                $textarea.triggerHandler('input');
            },
            openFaceBox = function(){
                $this.addClass('open-face');
                $wrapper_face.removeClass('hidden');
                $window.scrollTop(110000);
            },
            closeFaceBox = function(){
                $this.removeClass('open-face');
                $wrapper_face.addClass('hidden');
                $window.scrollTop(110000);
            },
            textareaFocus = function(){
                closeFaceBox();
            },
            touchMove = function (e) {

                toutchStatus.moved = true;
                e.stopPropagation();
                e.preventDefault();
            },
            touchEnd = function (e) {
                e.preventDefault();
                var singler = e.changedTouches[0];
                toutchStatus.endX = singler ? singler.pageX : e.pageX;
                toutchStatus.endY = singler ? singler.pageY : e.pageY;
                toutchStatus.endClientX = singler ? singler.clientX : e.clientX;
                toutchStatus.endClientY = singler ? singler.clientY : e.clientY;
                var e, f;
                overTime = (new Date).getTime() - toutchStatus.startTime;

                toutchStatus.event = e;

                var moveValue = toutchStatus.endClientX - toutchStatus.startClientX;

                scroller.removeEventListener('touchmove',touchMove, false);
                scroller.removeEventListener('touchend', touchEnd, false);

                if (moveValue == 0) { //点击表情
                    var faceNode = toutchStatus.event.target;
                    if ('i' === faceNode.nodeName.toLowerCase()) {
                        $textarea.off('focus',textareaFocus);
                        setTimeout(function () {
                            insertText(textarea, $(faceNode).data("face"));
                            $textarea.on('focus',textareaFocus);
                        }, 0)
                    }

                } else if (moveValue > 1) { //向右滑动
                    k += 1;
                    if (k > 0) {
                        k = 0;
                    }

                } else if (moveValue < -1) { //向左滑动
                    k -= 1;
                    if (k <= -1 * grounp_length) {
                        k = -1 * (grounp_length - 1);
                    }
                }
                scrollMove(scroller, k * body_width, 0, 0);
                $nav_li.removeClass('current').eq(Math.abs(k)).addClass('current');

                e.stopPropagation();
            };
        scroller.addEventListener('touchstart', function (e) {
            e.preventDefault();
            var singler = e.changedTouches[0];
            toutchStatus.moved = false;
            toutchStatus.startX = singler ? singler.pageX : e.pageX;
            toutchStatus.startY = singler ? singler.pageY : e.pageY;
            toutchStatus.startClientX = singler ? singler.clientX : e.clientX;
            toutchStatus.startClientY = singler ? singler.clientY : e.clientY;
            scroller.addEventListener('touchmove',touchMove, false);
            scroller.addEventListener('touchend', touchEnd, false);

        }, false);




        $(this).on('touchend',function (e) {

            if($wrapper_face.hasClass('hidden')){
                openFaceBox();
            }else{
                closeFaceBox();
            }
            e.stopPropagation();
        }).on('close',function(){
            closeFaceBox();
        });

    };
    $.parseFace = function(str){
        str = str.replace(/\[(.*?)\]/g,function(word,key){
            var face = faceMapping[key] || word;
            if(face){
                face = face.split('_');

                face = '<i class="face-icon face_{gi} icon_{fi}">{face}</i>'.replace('{gi}',face[0]).replace('{fi}',face[1]).replace('{face}',word);
            }
            return face;
        });
        return str;
    }

})(jQuery);


