<script>
  export let segment = undefined;

  import {
    SkipToContent,
    Header,
    HeaderNav,
    HeaderNavItem,
    HeaderUtilities,
    HeaderActionLink,
    HeaderAction,
    HeaderPanelLinks,
    HeaderPanelDivider,
    SideNav,
    SideNavLink,
    SideNavItems
  } from "carbon-components-svelte";

  import SettingsAdjust20 from "carbon-icons-svelte/lib/SettingsAdjust20";
  import Notification20 from "carbon-icons-svelte/lib/Notification20";
  import UserAvatar20 from "carbon-icons-svelte/lib/UserAvatar20";

  let isSideNavOpen = undefined;

  let iAccount = {
    class: undefined,
    skeleton: false,
    render: UserAvatar20,
    title: "Account",
    tabindex: "0",
    focusable: false,
    style: undefined
  };

  let iNotifications = {
    class: undefined,
    skeleton: false,
    render: Notification20,
    title: "Notifications",
    tabindex: "0",
    focusable: false,
    style: undefined
  };

  let iSettings = {
    class: undefined,
    skeleton: false,
    render: SettingsAdjust20,
    title: "Settings",
    tabindex: "0",
    focusable: false,
    style: undefined
  };
</script>

<Header company="Svelte" platformName="TestBlog" bind:isSideNavOpen>
  <SkipToContent />
  <HeaderNav>
    <HeaderNavItem
      rel="prefetch"
      href="."
      text="Home"
      aria-current={segment === undefined ? 'page' : undefined} />
    <HeaderNavItem
      rel="prefetch"
      href="about"
      text="About"
      aria-current={segment === 'about' ? 'page' : undefined} />
    <HeaderNavItem
      rel="prefetch"
      href="blog"
      text="Blog"
      aria-current={segment === 'blog' ? 'page' : undefined} />
    <HeaderNavItem
      href="login"
      text="Login"
      aria-current={segment === 'login' ? 'page' : undefined} />
  </HeaderNav>
  <HeaderUtilities>
    <HeaderAction type="Notifications" icon={iNotifications}>
      <HeaderPanelLinks>
        <HeaderPanelDivider>Notifications</HeaderPanelDivider>
      </HeaderPanelLinks>
    </HeaderAction>
    <HeaderActionLink type="Account" icon={iAccount} />
    <HeaderAction type="Settings" icon={iSettings}>
      <HeaderPanelLinks>
        <HeaderPanelDivider>Settings</HeaderPanelDivider>
      </HeaderPanelLinks>
    </HeaderAction>
  </HeaderUtilities>
</Header>
<!-- <SideNav bind:isOpen={isSideNavOpen}>
  <SideNavItems>
    <SideNavLink
      text="Home"
      rel="prefetch"
      href="."
      aria-current={segment === undefined ? 'page' : undefined} />
    <SideNavLink
      text="About"
      rel="prefetch"
      href="about"
      aria-current={segment === 'about' ? 'page' : undefined} />
    <SideNavLink
      text="Blog"
      rel="prefetch"
      href="blog"
      aria-current={segment === 'blog' ? 'page' : undefined} />
  </SideNavItems>
</SideNav> -->
