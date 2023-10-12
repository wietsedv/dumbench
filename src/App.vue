<script setup>
import Header from "./components/Header.vue";
import Footer from "./components/Footer.vue";
import Button from "./components/Button.vue";
import Leaderboard from "./components/Leaderboard.vue";
</script>

<template>
  <Header />

  <div class="container mx-auto px-4 py-4 max-w-1280">
    <p class="mt-2 mb-6">
      <span class="font-semibold">DUMB</span> is a benchmark for evaluating the quality of language models for Dutch NLP
      tasks. The set of tasks is designed to be diverse and challenging, to test the limits of current language models.
      The specific datasets and formats are particularly suitable for fine-tuning encoder models, and applicability for
      large generative models is yet to be determined. Please read the paper for more details.
    </p>

    <div class="my-6">
      <Button href="https://arxiv.org/abs/2305.13026">📝 EMNLP 2023 Paper</Button>
      <Button href="https://github.com/wietsedv/dumb">🖥️ Github</Button>
      <Button href="mailto:wietse.de.vries@rug.nl">📧 wietse.de.vries@rug.nl</Button>
    </div>

    <h2 class="my-6 text-2xl font-semibold">Leaderboard</h2>
    <div class="mb-6 overflow-scroll">
      <Leaderboard />
    </div>

    <h2 class="my-6 text-2xl font-semibold">Citation</h2>
    <p>
      Please use the following bibtex to cite the paper or the leaderboard. This bibtex will be updated when the
      proceedings of EMNLP 2023 are published in December.
    </p>

    <div>
      <pre class="bg-gray-100 text-gray-800 text-sm my-6 p-3 border-2 rounded-md overflow-scroll">
@inproceedings{de-vries-etal-2023-dumb,
    title = "DUMB: A Benchmark for Smart Evaluation of Dutch Models",
    author = "de Vries, Wietse  and
        Wieling, Martijn  and
        Nissim, Malvina",
    booktitle = "Proceedings of the 2023 Conference on Empirical Methods in Natural Language Processing",
    month = dec,
    year = "2023",
    address = "Singapore, Singapore",
    publisher = "Association for Computational Linguistics",
}
</pre
      >
    </div>

    <Footer />
  </div>
</template>
