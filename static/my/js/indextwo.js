//  这里面的代码，是大模型网页不需要的，所以单独放，大模型继承方式和其他的有些不同，它没有滚动图
// ----------滚动图---------------------
let menu_img = document.querySelectorAll('.DongTai_nav')
let banner = document.getElementById('menu_time')
let menu_time = Number(banner.getAttribute('menu_time'))

let menu_lenth = menu_img.length
let index = 0
// 使用定时器
timer = setInterval(() => {
    // 样式复原
    for (let i of menu_img) {
        i.style.opacity = 0
    }
    menu_img[index].style.opacity = 1
    index++;
    if (index === menu_lenth) {
        index = 0;
    }
    if (!menu_time) {
        clearInterval(timer)
    }
}, menu_time * 1000)
//--------打字的文字时间-------------------
let banner_text = document.getElementById('banner_text')
let text_list = eval(banner_text.getAttribute('lis'))
let solgan_time = Number(banner_text.getAttribute('solgan_time'))
let solgan_index = 0
timer1 = setInterval(() => {
    // console.log(1)
    // console.log(text_list)
    // console.log(text_list[solgan_index])
            if (solgan_index === text_list.length) {
                solgan_index = 0
            }
            if (!solgan_time) {
                clearInterval(timer1)
            }
            banner_text.innerText = text_list[solgan_index]
            solgan_index++
        }, solgan_time * 1000)
// 在窗口关闭或刷新时清除定时器
window.onbeforeunload = () => {
    clearInterval(timer);
    clearInterval(timer1);
};