<template>
  <div>
    <template v-if="editTargetPBL">
      <EditPBLForm :PBL="editTargetPBL" @set="editingPBL" />
    </template>
    <template v-else>
      <NewPBLForm />
      <PBLContainer @set="editingPBL" />
    </template>
  </div>
</template>

<script>
import PBLContainer from '~/components/PBLContainer.vue'
import NewPBLForm from '~/components/NewPBLForm.vue'
import EditPBLForm from '~/components/EditPBLForm.vue'

export default {
  components: {
    PBLContainer,
    NewPBLForm,
    EditPBLForm
  },
  data() {
    return {
      PBLs: [],
      editTargetPBL: ''
    }
  },
  async asyncData({ $axios }) {
    const data = await $axios.$get('/api/product_back_logs')
    return { PBLs: data }
  },
  methods: {
    editingPBL(PBL = '') {
      this.editTargetPBL = PBL
    }
  }
}
</script>
