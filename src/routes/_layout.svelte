<script>
  import MinimalNav from "../components/MinimalNav.svelte";
  import { Content } from "carbon-components-svelte";
  export let segment;
</script>

<MinimalNav {segment} />

<Content>
  <slot />
</Content>
