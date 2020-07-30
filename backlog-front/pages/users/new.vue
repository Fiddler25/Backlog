<template>
  <section>
    <div>
      <h1>New user</h1>
      <form @submit.prevent="post">
        <label for="name">Name: </label>
        <input id="name" v-model="name" type="text" name="name" />
        <label for="email">Email: </label>
        <input id="email" v-model="email" type="email" name="email" />
        <button type="submit">
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
      name: '',
      email: '',
    }
  },
  methods: {
    post() {
      this.$axios
        .post('/api/v1/users', {
          name: this.name,
          email: this.email,
        })
        .then(res => {
          this.$router.push(`${res.data.id}`)
        })
    },
  },
}
</script>
