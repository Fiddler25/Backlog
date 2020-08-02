<template>
  <div>
    <NewPBLForm />
    <PBLContainer />
  </div>
</template>

<script>
import PBLContainer from '~/components/PBLContainer.vue'
import NewPBLForm from '~/components/NewPBLForm.vue'

export default {
  components: {
    PBLContainer,
    NewPBLForm,
  },
  data() {
    return {
      PBLs: [],
    }
  },
  async asyncData({ $axios }) {
    const data = await $axios.$get('/api/product_back_logs')
    return { PBLs: data }
  },
  }
}
</script>
