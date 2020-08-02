<template>
  <section>
    <div>
      <h1>New PBL</h1>
      <form>
        <label for="title">Title: </label>
        <input v-model="title" id="title" type="text" name="title" />
        <label for="completion_definition">完了の定義: </label>
        <input v-model="completion_definition" id="completion_definition" type="text" name="completion_definition" />
        <label for="description">説明: </label>
        <input v-model="description" id="description" type="text" name="description" />
        <label for="sprint_number">Sprint: </label>
        <input v-model="sprint_number" id="sprint_number" type="number" name="sprint_number" />
        <label for="story_point">Story Point: </label>
        <input v-model="story_point" id="story_point" type="number" name="story_point" />
        <button @click="addPBL" type="submit">
          submit
        </button>
      </form>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      title: '',
      completion_definition: '',
      description: '',
      sprint_number: '',
      story_point: ''
    }
  },
  methods: {
    addPBL() {
      this.$axios
        .$post('/api/product_back_logs', {
          title: this.title,
          completion_definition: this.completion_definition,
          description: this.description,
          sprint_number: this.sprint_number,
          story_point: this.story_point
        })
        .then(res => {
          this.$parent.PBLs.push(res)
        })
        .catch(err => {
          console.log(err)
        })
    }
  }
}
</script>
