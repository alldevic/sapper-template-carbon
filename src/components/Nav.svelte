<script>
  export let segment = undefined;

  import {
    SkipToContent,
    Header,
    HeaderNav,
    HeaderNavItem,
    HeaderUtilities,
    HeaderActionLink,
  } from "carbon-components-svelte";
</script>

<Header company="Svelte" platformName="TestBlog" class="header">
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
  </HeaderNav>
</Header>
