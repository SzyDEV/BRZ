const menuBtn = document.querySelector('#cat-dropdown');
const menu = document.querySelector('#page-head');
const ul = document.querySelector("section#page-head nav ul");
menuBtn.addEventListener('click', function() {
    menu.classList.toggle("active");
});

/*
const ulHeight = ul.getBoundingClientRect().height + 10;
ul.style.marginTop = -ulHeight + "px";

let startPosY = null;
let currentPos = null;

function process_touchstart(ev){
    if(ev.path.includes(menuBtn)){
        document.addEventListener('touchmove', handle_touch);
        startPosY = ev.touches[0].clientY;
    }
}

function handle_touch(ev){
    let posY = ev.touches[0].clientY;
    let diff = -(startPosY - posY);
    currentPos = parseInt(ul.style.marginTop);
    
    if(diff >= 0 && currentPos < 0){
        ul.style.marginTop = -ulHeight + diff + "px";
    } else if (diff < 0 && currentPos > -ulHeight){
        ul.style.marginTop = diff + "px";
    }

    console.log(diff, ul.style.marginTop, currentPos);

}

function process_touchend(ev){
    document.removeEventListener('touchmove', handle_touch);
    if(currentPos > -ulHeight && currentPos <= -ulHeight/2){
        ul.style.marginTop = -ulHeight + "px";
    } else {
        ul.style.marginTop = "0px";
    }
    startPosY = null;
    currentPos = null;
}


document.addEventListener('touchstart', process_touchstart);
document.addEventListener('touchend', process_touchend);
*/