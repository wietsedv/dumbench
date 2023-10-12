<script setup>
import table from "../table.json";


function renderName(model) {
  var flag = '🌍';
  if (model.lang == 'dutch') {
    flag = '🇳🇱';
  } else if (model.lang == 'english') {
    flag = '🇬🇧';
  }
  return `${flag}&nbsp;${model.name}`;
}

function renderScore(task) {
  if (task === undefined) {
    return "n/a";
  }
  const rer = (task.rer * 100).toFixed(1);
  const score = (task.score * 100).toFixed(1);
  return `<span class="font-mono text-right text-sm ${
    task.rer < 0 ? "text-gray-500" : ""
  } ${task.best ? 'font-semibold' : ''}">${rer}<sub class='ml-1'>${score}</sub></span>`;
}
</script>

<template>
  <table class="table-auto w-full border-y-4 border-gray-800">
    <thead class="border-t-3 border-b-2 border-gray-800">
      <tr class="border-b-2 border-gray-800">
        <th colspan="2"></th>
        <th colspan="2" class="border-x-2">Word</th>
        <th colspan="2" class="border-x-2">Word Pair</th>
        <th colspan="2" class="border-x-2">Sentence Pair</th>
        <th colspan="3" class="border-l-2">Document</th>
      </tr>
      <tr>
        <th></th>
        <th class="border-x-2">Avg</th>
        <th class="border-x-2">POS</th>
        <th class="border-x-2">NER</th>
        <th class="border-x-2">WSD</th>
        <th class="border-x-2">PR</th>
        <th class="border-x-2">CR</th>
        <th class="border-x-2">NLI</th>
        <th class="border-x-2">SA</th>
        <th class="border-x-2">ALD</th>
        <th class="">QA</th>
      </tr>
      <tr class="border-b-black">
        <th>Model</th>
        <td class="border-x-2">RER</td>
        <td class="border-l-2">RER<sub class="ml-1">Acc</sub></td>
        <td class="border-l-2">RER<sub class="ml-1">F1</sub></td>
        <td class="border-l-2">RER<sub class="ml-1">Acc</sub></td>
        <td class="border-l-2">RER<sub class="ml-1">Acc</sub></td>
        <td class="border-l-2">RER<sub class="ml-1">Acc</sub></td>
        <td class="border-l-2">RER<sub class="ml-1">Acc</sub></td>
        <td class="border-l-2">RER<sub class="ml-1">Acc</sub></td>
        <td class="border-l-2">RER<sub class="ml-1">F1</sub></td>
        <td class="border-l-2">RER<sub class="ml-1">F1</sub></td>
      </tr>
    </thead>
    <tbody>
      <tr v-for="row, i in table.sort((a, b) => a.rer < b.rer)" :class="{ 'border-y-2': row.name == 'BERTje' }">
        <td v-html="renderName(row)" class="font-medium" />
        <td class="text-right font-mono text-sm border-x-2" :class="{ 'text-gray-500': row.rer < 0, 'font-semibold': i == 0 }">
          {{ (row.rer * 100).toFixed(1) }}
        </td>
        <td class="text-right border-x-2" v-html="renderScore(row.tasks['lassy-pos'])" />
        <td class="text-right border-x-2" v-html="renderScore(row.tasks['sonar-ne'])" />
        <td class="text-right border-x-2" v-html="renderScore(row.tasks['wicnl'])" />
        <td class="text-right border-x-2" v-html="renderScore(row.tasks['dpr'])" />
        <td class="text-right border-x-2" v-html="renderScore(row.tasks['copanl'])" />
        <td class="text-right border-x-2" v-html="renderScore(row.tasks['sicknl-nli'])" />
        <td class="text-right border-x-2" v-html="renderScore(row.tasks['dbrd'])" />
        <td class="text-right border-x-2" v-html="renderScore(row.tasks['dalc'])" />
        <td class="text-right border-l-2" v-html="renderScore(row.tasks['squadnl'])" />
      </tr>
    </tbody>
  </table>
</template>

<style scoped>
/* tr {
  @apply border-2;
} */
thead td {
  @apply text-center;
}
tbody tr {
  @apply border-gray-600;
}
tbody tr:hover {
  @apply bg-blue-100;
}
td,
th {
  @apply py-1 px-2 border-gray-600;
}
</style>
