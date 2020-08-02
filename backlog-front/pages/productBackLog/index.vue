<template>
  <div>
    <ProductBackLogsContainer />
  </div>
</template>

<script>
import ProductBackLogsContainer from '~/components/ProductBackLogsContainer.vue'
export default {
  components: {
    ProductBackLogsContainer
  },
  data() {
    return {
      product_back_logs: []
    }
  },
  async asyncData({ $axios }) {
    const data = await $axios.$get('/api/product_back_logs')
    return { product_back_logs: data }
  }
}
</script>
