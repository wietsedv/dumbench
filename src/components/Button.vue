<script setup>
const props = defineProps(['href'])
</script>

<template>
  <a
    :href="href"
    target="_blank"
    class="inline-block px-4 py-2 mr-1 mb-1 border-2 rounded-md border-gray-400 font-medium hover:border-blue-700 text-gray-700 hover:text-blue-800"
  >
    <slot />
  </a>
</template>
