<template>
  <div>
    <ul v-for="product_back_log in this.$parent.product_back_logs" :key="product_back_log.id">
      <li>
        <h2>{{ product_back_log.title }}</h2>
        <h3>完了の定義: {{ product_back_log.completion_definition }}</h3>
        <h3>説明: {{ product_back_log.description }}</h3>
        <h3>Story Point: {{ product_back_log.story_point }}</h3>
      </li>
    </ul>
  </div>
</template>

<script>
  export default {
  }
</script>
