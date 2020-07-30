export default ({ $axios }) => {
  $axios.setToken('access_token')

  $axios.onResponse(() => {
    $axios.setHeader('Access-Control-Allow-Origin', 'http://backlog-api:3000')
  })
}
