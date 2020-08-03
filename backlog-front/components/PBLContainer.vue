<template>
  <div>
    <ul v-for="PBL in this.$parent.PBLs" :key="PBL.id">
      <li>
        <h1>Sprint {{ PBL.sprint_number }}</h1>
        <h2>{{ PBL.title }}</h2>
        <h3>完了の定義: {{ PBL.completion_definition }}</h3>
        <h3>説明: {{ PBL.description }}</h3>
        <h3>Story Point: {{ PBL.story_point }}</h3>
      </li>
      <button @click="$emit('set', PBL)" type="button">
        Edit
      </button>
    </ul>
  </div>
</template>

<script>
  export default {
  }
</script>
