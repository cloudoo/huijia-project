;(function($){
    var scrollMove = function (scroll, x, y, z, animate) {
        scroll.style.MozTransform = "translate3d(" + x + "px, " + y + "px," + z + "px)";
        scroll.style.webkitTransform = "translate3d(" + x + "px, " + y + "px," + z + "px)";
        scroll.style.msTransform = "translate3d(" + x + "px, " + y + "px," + z + "px)";
        scroll.style.OTransform = "translate3d(" + x + "px, " + y + "px," + z + "px)";
        if(animate){
            scroller.classList.add('transition')
        }
        },
        switchNav = function(lis,index,act){
            if(lis.length){
                Array.prototype.forEach.call(lis,function(li,i){
                    if(i === index){
                        li.classList.add(act);
                    }else{
                        li.classList.remove(act);
                    }
                })
            }
        }
    $.fn.swiper = function(){
        $(this).each(function(i,container){
            var parentRect = container.parentNode.getBoundingClientRect();
                children = Array.prototype.slice.call(container.querySelectorAll('img'),0),
                scroller = document.createElement('div'),
                scrillWidth = parentRect.width,
                nav = ['<ul class="swiper-nav">'];
            this.style.height = (scrillWidth/3)*2 + 'px';
            scroller.style.width = (scrillWidth*children.length) + 'px';
            scroller.style.height = '100%';
            container.style.position = 'relative';
            $.each(children,function(){

                this.style.width = scrillWidth + 'px';

                scroller.appendChild(this);
                nav.push('<li></li>');
            });
            nav.push('</ul>');
            if(nav.length < 4){
                nav.length = 0;
            }
            container.appendChild(scroller);
            container.insertAdjacentHTML('beforeEnd',nav.join(''));
            var touchStatus = {
              startX:'',
              endX:'',
              moveStartX:'',
              moveEndX:''
            },index = 0,distance = 0,limit = -1*(children.length - 1),lis = [];

            if(nav.length){
                lis = container.querySelectorAll('.swiper-nav li');
                lis[0].classList.add('act');
            }

            container.addEventListener('touchstart',function(e){
                e.preventDefault();
                var singler = e.touches[0];
                touchStatus.startX = touchStatus.moveStartX = singler.pageX;
            },false);
            container.addEventListener('touchmove',function(e){
                e.preventDefault();
                var singler = e.changedTouches[0],
                    diff ;
                touchStatus.moveEndX = singler.pageX;
                diff = touchStatus.moveEndX - touchStatus.moveStartX;
                scrollMove(scroller,distance + diff,0,0);
            },false);
            container.addEventListener('touchend',function(e){
                e.preventDefault();
                var singler = e.changedTouches[0],
                    diff;
                touchStatus.endX = singler.pageX;
                diff = touchStatus.endX - touchStatus.startX;

                if(Math.abs(diff) > (scrillWidth/2) ){

                    diff < 0 ? index -= 1 : index += 1;
                    if(index < limit){
                        index = limit;
                    }else if(index > 0){
                        index = 0;
                    }
                    distance = index * scrillWidth;
                    scrollMove(scroller,distance,0,0,true);
                    switchNav(lis,-1*index,'act');
                }else{
                    scrollMove(scroller,distance,0,0,true);
                }
            },false);
        });
    }
})(jQuery);
