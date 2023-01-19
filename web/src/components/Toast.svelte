<script lang="ts">
  import { fade } from "svelte/transition";
  import { CheckCircle, Info, Star, WarningCircle } from "phosphor-svelte";
  import { colors } from "../store/stores";

  export let type: "info" | "success" | "error" | "primary" = "info";
  let configColors: any;

  colors.subscribe((colors) => {
    configColors = colors;
  });
</script>

<article
  class={type}
  style="background: {configColors[type].main}; border: 2px solid {configColors[
    type
  ].border}; color: {configColors[type].fontColor}; font-family: {configColors[
    type
  ].fontFamily};"
  role="alert"
  transition:fade
>
  {#if type === "success"}
    <CheckCircle size={30} color={configColors[type].iconColor} weight="fill" />
  {:else if type === "error"}
    <WarningCircle size={30} color={configColors[type].iconColor} weight="fill" />
  {:else if type === "info"}
    <Star size={30} color={configColors[type].iconColor} weight="fill" />
  {:else if type === "primary"}
    <Info size={30} color={configColors[type].iconColor} weight="fill" />
  {/if}

  <div class="text font-medium">
    <slot />
  </div>
</article>

<style>
  article {
    color: white;
    padding: 0.75rem 1.5rem;
    border-radius: 10px;
    display: flex;
    align-items: center;
    margin: 0 auto 0.5rem auto;
    width: 20rem;
    @apply shadow-inner;
  }

  .text {
    font-size: 14px;
    margin-left: 1rem;
  }
</style>
