<script lang="ts">
  import Toast from "./Toast.svelte";

  import { toasts } from "../store/stores";
</script>

{#if $toasts}
  <section>
    {#each $toasts as toast (toast.id)}
      <Toast type={toast.type}>{toast.message}</Toast>
    {/each}
  </section>
{/if}

<style lang="postcss">
  section {
    position: fixed;
    top: 0;
    right: 1rem;
    display: flex;
    margin-top: 1rem;
    justify-content: center;
    flex-direction: column;
    z-index: 1000;
  }
</style>
