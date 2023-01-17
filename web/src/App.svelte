
<script>
  import ToastProvider from "./providers/ToastProvider.svelte";
</script>

<main class="container">
  <ToastProvider />
</main>

<style>
  .container {
    position: absolute;
    top: 0;
    left: 0;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    height: 100%;
    width: 100%;
    user-select: none;
  }
</style>
