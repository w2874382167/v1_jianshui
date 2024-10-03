// 这里面主要是vue的代码
// 包含index，new，网站导航还有大模型的实现代码，后端请求，基本都在这，同时他们也是使用vue技术实现的

//---------处理axios-------------
axios.interceptors.request.use(request => {
    if (request.method !== 'get') {
        let csrftoken = document.querySelector('input[name="csrfmiddlewaretoken"]').value
        request.headers['X-CSRFToken'] = csrftoken
    }
    return request
})
axios.interceptors.response.use(response => {
    return response.data
})
new Vue({
    el: '#app',
    delimiters: ["[[", "]]"], //插值语法改变"{"{" }}-->[[ ]]
    data: {
        // 手机进入网站导航弹窗调整
        max_dialog_width: '50%',

        nav_drawer:false, // 手机导航抽屉窗口
        theme: 'light', // 默认主题
        this_classification: 'news60', // 精选文章，页面切换  当前在新闻速览
        new_title: [
            {name: '百度', id: "1", img: "/static/my/img/new/百度.svg"},
            {name: '抖音', id: "2", img: "/static/my/img/new/抖音.svg"},
            {name: '微博', id: "3", img: "/static/my/img/new/微博.svg"},
            {name: '微信', id: "5", img: "/static/my/img/new/微信.svg"},
            {name: '哔哩哔哩', id: "4", img: "/static/my/img/new/哔哩哔哩.svg"},
        ],  // 新闻类型
        new_active: '百度',
        new_active_url: '/static/my/img/new/百度.svg',
        new_list: [],    //新闻数据
        //---index的今日热搜
        today_index: '',
        today_query: '',
        today_hotScore: '',
        today_url: '',
        today_img: '',

        //-------网站导航----------
        //---------添加网站弹窗-----------
        edit_site: false,
        form: {
            title: '',
            abstract: '',
            href: '',
            icon_href: '/media/site_bgimg/img_10.jpg',
            tag: '',
        },

        //----------大模型-----------
        historylist: [],//历史对话数据
        chat_data_list: [], //对话的数据
        current_date: '',   // 当前聊天框里面的数据
        lodingOrair: 'air',//文本输出框是纸飞机还是加载
        //天气
        today_weather: '',
        today_weather_wind: '',
        today_weather_temp: '',
        today_weather_windSpeed: '',
        // 在线人数
        online_count:'',
    },
    created() {
        // 加载完data默认调用

        //  读取存储信息
        this.init_theme()
        this.init_dialog()
        this.init_index_news()

        //---------大模型----------
        this.init_history_data() //初始化历史对话

    },
    methods: {
        //初始化主题
        init_theme() {
            //  读取存储信息
            let theme = localStorage.getItem('theme')
            if (theme) {
                this.theme = theme
            }
        },
        //设置主题
        setTheme(themeName) {
            this.theme = themeName
            // 进行存储--防止刷新样式丢失
            localStorage.setItem('theme', themeName)
        },
        // 初始化首页一些请求
        init_index_news(){
            let path = location.pathname
            //首次进入新闻自动加载
            if (path.indexOf('news') !== -1) {
                this.get_new_data('1', '百度', '/static/my/img/new/百度.svg')
            }
            //首页今日热搜自动加载
            else if (path.indexOf('/') !== -1) {
                this.get_new_data('1', '百度', '/static/my/img/new/百度.svg')
                axios.post("/api/news/1/")
                    .then(res => {
                        if (res.code) {
                            let firstValue = res.data[0];
                            this.today_index = firstValue.index
                            this.today_query = firstValue.query
                            this.today_url = firstValue.appUrl
                            this.today_img = firstValue.hotTagImg
                            this.today_hotScore = firstValue.hotScore
                        }
                    })
                this.get_weather()
            }
        },
        // 手机进入网站导航弹窗调整
        init_dialog(){
            let width = $(document).width()
            if(width <= 433){
                this.max_dialog_width = '90%'
            }
        },
        // 手机显示导航栏
        nav_open_drawer(){
            $('nav, header ,main ,footer').addClass('showdrawer')
        },
        drawer_nav() {
            let a_list = document.querySelectorAll('#drawer_nav>a')
            let path = location.pathname
            for (const a of a_list) {
                let a_href = a.getAttribute('href')
                if (a_href === path || a_href + '/' === path) {
                    a.classList.add('active')
                }
            }
        },
        nav_open_drawer_dom(){
            this.drawer_nav()
        },
        nav_close_drawer(){
            $('nav, header ,main ,footer').removeClass('showdrawer')
        },
        //切换分类页面
        switch_articles_classification(classification) {
            this.this_classification = classification
        },
        //-------------文章点赞---------------------
        article_digg(e, nid) {
            let dom = e.target
            axios.post(`/api/article/digg/${nid}/`).then(res => {
                if (res.code) {
                    this.$message.error(res.msg)
                    return
                }
                $(dom).next().text(res.data)
                this.$message.success(res.msg)
            })
            dom.classList.add('show')
        },
        //-------------文章收藏---------------------
        article_collect(e, nid) {
            let dom = e.target
            axios.post(`/api/article/collect/${nid}/`
            ).then(res => {
                if (res.code) {
                    this.$message.error(res.msg)
                    return
                }
                this.$message.success(res.msg)
                $(dom).next().text(res.data)
                if (res.is_collect) {
                    dom.classList.add('show')
                    return
                }
                dom.classList.remove('show')
            })
        },
        // --------文章页回到顶部----------
        go_to_top() {
            $('html,body').animate({
                scrollTop: 0
            }, 1500)
        },
        //---------获取新闻页的数据--------------
        get_new_data(id, name, url) {
            this.new_active = name
            this.new_active_url = url
            axios.post(`/api/news/${id}/`)
                .then(res => {
                    this.new_list = res.data
                })
        },
        load() {},
        //---------网站导航-----------
        //添加
        add_site_btn() {
            axios.post('/api/site/add/', this.form)
                .then(res => {
                    if (res.code) {
                        this.$message.success(res.msg)
                        location.reload()
                        return
                    }
                    this.$message.error(res.msg)
                })
        },

        //--------大模型------------------
        //  初始化拿到历史对话数据
        init_history_data() {
            axios.get('/api/model/historylist/')
                .then(res => {
                    if (res.code) {
                        this.historylist = res.data
                        return
                    }
                    this.$message.error(res.msg)
                })
        },
        // 聊天信息
        get_chatlist(date) {
            axios.get(`/api/model/chatlist/${date}/`,)
                .then(res => {
                    if (res.code) {
                        this.chat_data_list = res.data["contents"]
                        this.current_date = date
                        this.$message.success(res.msg)
                        // 暂停一会，首次加载有bug
                        const timer = setTimeout(() => {
                            let dom = document.querySelector('#chatlist')
                            if (dom) {
                                buttom = dom.scrollHeight
                                dom.scrollTo({
                                    top: buttom,
                                    behavior: 'smooth'
                                });
                            }
                            clearInterval(timer)
                        }, 500);
                        return
                    }
                    this.$message.error(res.msg)
                })
        },
        //删除聊天记录
        delete_data(date) {
            axios.post(`/api/model/delete/${date}/`,)
                .then(res => {
                    if (res.code) {
                        this.init_history_data()
                        this.chat_data_list = []
                        this.$message.success(res.msg)
                        return
                    }
                    this.$message.error(res.msg)
                })
        },
        // 文本框发送
        sendmessage() {
            let issue = this.$refs.messageBox.value  // vue的方法
            this.$refs.messageBox.value = '';// 清空文本框
            this.lodingOrair = 'loding';
            send = {'date': this.current_date, 'issue': issue}//构造数据发送
            axios.post('/api/model/issue/', send)
                .then(res => {
                    if (res.code) {
                        this.current_date = res.date
                        this.get_chatlist(this.current_date) //重新加载聊天数据
                        this.lodingOrair = 'air';
                        return
                    }
                    this.$message.error(res.msg)
                    this.lodingOrair = 'air';
                })
        },
        // enter键发送
        key() {
            this.sendmessage()
        },

        //使用md渲染输出，由于没有key遍历不了，自己生成一个
        generateKey(data){
            return JSON.stringify(data);
        },
        // 天气
        get_weather() {
            axios.get('/api/weather/')
                .then(res => {
                    if (res.code) {
                        weather = res.data
                        this.today_weather = weather['text']
                        this.today_weather_wind = weather['windDir']
                        this.today_weather_temp = weather['temp']
                        this.today_weather_windSpeed = weather['windSpeed']
                        return
                    }
                    this.$message.error(res.msg)
                })
        },
        get_online() {
            axios.post('/api/onlinepeople/')
                .then(res=>{
                    this.online_count = res.data
                    if (res.code){
                        this.online_count = res.data
                    }else{
                        console.log(res.msg)
                    }
                })
        },
    },
    mounted() {
    // 组件挂载后立即执行一次
    this.get_online();
    // 设置定时器，每30秒执行一次 get_online 方法
    this.onlineInterval = setInterval(
            this.get_online
        , 10000);
  },
    beforeDestroy() {
    // 组件销毁前清除定时器
    clearInterval(this.onlineInterval);
  }
})




