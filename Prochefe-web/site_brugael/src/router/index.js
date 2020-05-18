import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Sobrenos from '../views/Sobrenos.vue'
import Cardapio from '../views/Cardapio.vue'
import Delivery from '../views/Delivery.vue'
import Fidelidade from '../views/Fidelidade.vue'
import Sugestoes from '../views/Sugestoes.vue'
import Intranet from '../views/Intranet.vue'

Vue.use(VueRouter)

  const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/sobrenos',
    name: 'Sobre Nós',
    component: Sobrenos
  },
  {
    path: '/cardapio',
    name: 'Cardápio',
    component: Cardapio
  },
  {
    path: '/delivery',
    name: 'Delivery',
    component: Delivery
  },
  {
    path: '/fidelidade',
    name: 'Fidelidade',
    component: Fidelidade
  },
  {
    path: '/sugestoes',
    name: 'Sugestões',
    component: Sugestoes
  },
  {
    path: '/intranet',
    name: 'Intranet',
    component: Intranet
  }
  //{
  //  path: '/about',
  //  name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
  //  component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  //}
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
