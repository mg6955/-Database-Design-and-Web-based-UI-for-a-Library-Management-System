const routes=[
    {path:'/home', name: 'home', component:home},
    {path:'/dms_books', name: 'dms_books', component:dms_books}
]

const router = VueRouter.createRouter({
    history: VueRouter.createWebHashHistory(),
    routes
  })

const app = Vue.createApp({})
app.use(router)
app.mount('#app')
