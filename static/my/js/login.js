 new Vue({
        el:'#app_login',
        data:{
            login_from:{
                name:'',
                pwd:'',
            },
            signup_from:{
                name:'',
                pwd:'',
                pwd_again:'',
            }
        },
        methods:{
            login(){
              let csrftoken= document.querySelectorAll('input[name="csrfmiddlewaretoken"]')[0].value
              //console.log(csrftoken)
              axios.post('/api/login/',this.login_from,{
                  headers:{
                   'X-CSRFToken':csrftoken
                  }
              }).then(res=>{
                  console.log(res.data)
                  if(res.data.self){
                      // 有错误
                      // 获取错误的焦点 和ref="login_from_name"配合
                      const err = this.$refs[`login_from_${res.data.self}`]
                      err.focus()
                      err.classList.add('error-border'); // 添加错误边框类

                      // 添加失去焦点时移除错误边框类的事件监听器
                      err.addEventListener('blur', function handleBlur() {
                          err.classList.remove('error-border'); // 移除错误边框类
                          err.removeEventListener('blur', handleBlur); // 移除事件监听器
                      });
                      this.$message.error(res.data.msg)
                      return
                  }
                  // 成功
                  //this.$message.success(res.data.msg)
                  this.$message.success(`文献名邦  滇南邹鲁,古城建水欢迎您${this.login_from.name}`)
                  //成功登录，那我们跳转到主页2之后调到主页
                  setTimeout(()=>{
                      location.href='/';
                  },2000)
              })
            },
            signup(){
              let csrftoken= document.querySelectorAll('input[name="csrfmiddlewaretoken"]')[0].value
              axios.post('/api/signup/',this.signup_from,{
                  headers:{
                   'X-CSRFToken':csrftoken
                  }
              }).then(res=>{
                  console.log(res.data)
                  if(res.data.self){
                      // 有错误
                      // 如果拿到的是name，input全部清除
                      if (res.data.self === "name"){
                          // 清空 input 元素的值
                          let inputs = document.querySelectorAll(".input")
                          inputs.forEach(function(input){
                                input.value = '';
                          });
                      }
                      // 获取错误的焦点 和ref="login_from_name"配合
                      const err = this.$refs[`signup_from_${res.data.self}`]
                      err.focus()
                      err.classList.add('error-border'); // 添加错误边框类

                      // 添加失去焦点时移除错误边框类的事件监听器
                      err.addEventListener('blur', function handleBlur() {
                          err.classList.remove('error-border'); // 移除错误边框类
                          err.removeEventListener('blur', handleBlur); // 移除事件监听器
                      });
                      this.$message.error(res.data.msg)
                      return
                  }
                  //this.$message.success(res.data.msg)
                  this.$message.success(`文献名邦  滇南邹鲁,古城建水欢迎您 : ${this.signup_from.name}!`)
                  setTimeout(()=>{
                      location.href='/';
                  },2000)
              })
            },
        },
    })



//------------------ 登录注册切换效果-----------------
    // 通过添加和删除right-panel-active类，
    //页面在登录和注册表单之间切换。
    //覆盖层和面板提供了视觉效果和交互性，
    //使用户体验更加流畅和美观
    const signinBtn = document.getElementById("signin")
    const signupBtn = document.getElementById("signup")
    const container = document.querySelector(".container")

    signinBtn.addEventListener("click",()=>{
        container.classList.remove("right-panel-active")
    })
    signupBtn.addEventListener("click",()=>{
        container.classList.add("right-panel-active")
    })