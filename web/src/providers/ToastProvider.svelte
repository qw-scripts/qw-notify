<script lang="ts">
    import { useNuiEvent } from '../utils/useNuiEvent';
    import Toasts from "../components/Toasts.svelte";
    import { addToast, colors } from "../store/stores";
  import { onMount } from 'svelte';
  import { fetchNui } from '../utils/fetchNui';

    onMount(async () => {
        const colorList = await fetchNui("qw-notify:GetColorConfig");
        colors.set(colorList);
  });

    useNuiEvent<any>('addToast', (data) => {
        const { message, type, timeout } = data;
        addToast({ message, type, timeout })
    });

  </script>

<Toasts />