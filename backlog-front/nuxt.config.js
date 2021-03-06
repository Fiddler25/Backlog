export default {
  mode: 'universal',
  target: 'server',
  head: {
    title: process.env.npm_package_name || '',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      {
        hid: 'description',
        name: 'description',
        content: process.env.npm_package_description || '',
      },
    ],
    link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }],
  },
  css: [],
  plugins: ['plugins/axios'],
  components: true,
  modules: ['@nuxtjs/axios'],
  axios: {
    proxy: true,
  },
  proxy: {
    '/api/': {
      target: 'http://backlog-api:3000/v1',
      pathRewrite: { '^/api/': '/' },
    },
  },
  build: {},
}
