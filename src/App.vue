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
      <Button href="https://aclanthology.org/2023.emnlp-main.447.pdf">📝 EMNLP 2023 Paper</Button>
      <Button href="https://github.com/wietsedv/dumb">🖥️ Github</Button>
      <Button href="mailto:wietse.de.vries@rug.nl">📧 wietse.de.vries@rug.nl</Button>
    </div>

    <h2 class="mt-6 mb-3 text-2xl font-semibold">Leaderboard</h2>
    <p class="mt-3 mb-6">Models are ranked by the average error reduction relative to the BERTje baseline. Read the paper for explanation of this ranking method and the included tasks.</p>
    <div class="mb-6 overflow-scroll">
      <Leaderboard />
    </div>

    <h2 class="mt-6 mb-3 text-2xl font-semibold">Citation</h2>
    <p>
      Please use the following bibtex to cite the paper or the leaderboard.
    </p>

    <div>
      <pre class="bg-gray-100 text-gray-800 text-sm my-6 p-3 border-2 rounded-md overflow-scroll">
@inproceedings{de-vries-etal-2023-dumb,
    title = "{DUMB}: A Benchmark for Smart Evaluation of {D}utch Models",
    author = "de Vries, Wietse  and
      Wieling, Martijn  and
      Nissim, Malvina",
    editor = "Bouamor, Houda  and
      Pino, Juan  and
      Bali, Kalika",
    booktitle = "Proceedings of the 2023 Conference on Empirical Methods in Natural Language Processing",
    month = dec,
    year = "2023",
    address = "Singapore",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2023.emnlp-main.447",
    pages = "7221--7241",
    abstract = "We introduce the Dutch Model Benchmark: DUMB. The benchmark includes a diverse set of datasets for low-, medium- and high-resource tasks. The total set of nine tasks includes four tasks that were previously not available in Dutch. Instead of relying on a mean score across tasks, we propose Relative Error Reduction (RER), which compares the DUMB performance of language models to a strong baseline which can be referred to in the future even when assessing different sets of language models. Through a comparison of 14 pre-trained language models (mono- and multi-lingual, of varying sizes), we assess the internal consistency of the benchmark tasks, as well as the factors that likely enable high performance. Our results indicate that current Dutch monolingual models under-perform and suggest training larger Dutch models with other architectures and pre-training objectives. At present, the highest performance is achieved by DeBERTaV3 (large), XLM-R (large) and mDeBERTaV3 (base). In addition to highlighting best strategies for training larger Dutch models, DUMB will foster further research on Dutch. A public leaderboard is available at https://dumbench.nl.",
}
</pre
      >
    </div>

    <Footer />
  </div>
</template>
