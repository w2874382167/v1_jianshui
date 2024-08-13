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
    // 动态导航
    function dynamic_nav(){
        let a_list = document.querySelectorAll('#dynamic_nav>a')
        let path = location.pathname
        for(const a of a_list){
            let a_href = a.getAttribute('href')
            if(a_href === path|| a_href+'/'===path){
                a.classList.add('active')
            }
        }
    }
    dynamic_nav()

    new Vue({
        el:'#app',
        data:{
            add_drawer:false,  //侧边栏默认关闭
            add_article_activeNames:['1'], //默认填写侧边栏第一个
            title:'',                   //标题
            abstract:'',
            category_id:'',             //分类
            label:'',                   //标签
            category_options:[
                {value:'1', label:'新闻60'},
                {value:'2', label:'游玩'},
                {value:'3', label:'其他'}
            ],     //分类列表
            recommend:true,             //是否推荐
            status:true,                //是否发布
            cover_id:'',                //封面
            link:'',                    //链接
            author:'',                  //作者
            source:'',                  //来源

            //--------完善信息默认弹窗关闭-----------
            edit_info:false,
            form: {
              name: '',
              ip: '',
              addr: '',
              qq_num: '',
              sex: '',
              password: '',
            },

            //-----修改头像---------
            edit_avatar_id: '',
        },
        methods:{
            //-----发布文章------------
            //发布文章
            add_article(){
                let data ={
                    title:this.title,
                    author: this.author,
                    source: this.source,
                    abstract:this.abstract,
                    category_id: this.category_id,
                    label: this.label,
                    cover_id: this.cover_id,
                    recommend: this.recommend,
                    status:this.status,
                    link: this.link,
                    textarea:editor.querySelector('.editormd-markdown-textarea').value
                }
                //console.log(data)
                //axios发给后端
                axios.post('/api/article/', data).then(res=>{
                    //console.log(res.code)
                    if (res.code){
                        this.$message.error(res.msg)
                    }
                    else{
                        this.$message.success("发布成功")
                        setTimeout(()=>{
                            window.location.reload(); // 刷新页面
                        }, 1500)
                    }
                })
            },
            // 选择封面
            select_cover(val){
                setTimeout(()=>{
                    let v = document.querySelector('.caver .el-collapse-item__content .right .el-input__inner').value
                    let cover = document.getElementById('cover_img')
                    cover.src = v
                },1);
            },
            // ----------完善个人信息----------
            // 获取弹窗信息
            init_user_info(){
                axios.get('/api/user/info')
                    .then(res=>{
                        if (res.code){
                            this.form = res.data
                            console.log(this.form)
                            this.edit_info=true
                            return
                        }
                        this.$message.error(res.msg)
                    })
            },
            // 完善信息弹窗
            edit_info_btn(){
                axios.post('/api/user/info',this.form)
                    .then(res=>{
                        if (res.code){
                            this.$message.success(res.msg)
                            location.reload(true); // 绕过缓存刷新
                            return
                        }
                        this.$message.error(res.msg)
                    })
            },
            //----修改头像
            edit_avatar(){
                axios.post('/api/edit_avatar/', this.edit_avatar_id)
                    .then(res=>{
                        if (res.code){
                            this.$message.success(res.msg)
                            location.reload(); // 刷新
                            return
                        }
                        this.$message.error(res.msg)
                })
            }
        },
    })