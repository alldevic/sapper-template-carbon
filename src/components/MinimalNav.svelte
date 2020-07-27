<script>
  export let segment = undefined;

  import {
    Header,
    HeaderUtilities,
    HeaderAction,
    HeaderPanelLinks,
    HeaderPanelDivider,
  } from "carbon-components-svelte";

  import SettingsAdjust20 from "carbon-icons-svelte/lib/SettingsAdjust20";

  let iSettings = {
    class: undefined,
    skeleton: false,
    render: SettingsAdjust20,
    title: "Settings",
    tabindex: "0",
    focusable: false,
    style: undefined,
  };
</script>

<Header company="Svelte" platformName="TestBlog">
  <HeaderUtilities>
    <HeaderAction type="Settings" icon={iSettings}>
      <HeaderPanelLinks>
        <HeaderPanelDivider>Settings</HeaderPanelDivider>
      </HeaderPanelLinks>
    </HeaderAction>
  </HeaderUtilities>
</Header>
