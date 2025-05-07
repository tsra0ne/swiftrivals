// https://vitepress.dev/guide/custom-theme
import { h } from 'vue'
import type { Theme } from 'vitepress'
import DefaultTheme from 'vitepress/theme'
import giscusTalk from 'vitepress-plugin-comment-with-giscus';
import { useData, useRoute } from 'vitepress';
import { toRefs } from "vue";
import './style.css'

export default {
  extends: DefaultTheme,
  Layout: () => {
    return h(DefaultTheme.Layout, null, {
      // https://vitepress.dev/guide/extending-default-theme#layout-slots
    })
  },
  enhanceApp({ app, router, siteData }) {
    // ...
  },
  setup() {
    const { frontmatter } = toRefs(useData());
    const route = useRoute();
    
    giscusTalk({
        repo: 'swiftcodehub/theswiftguy',
        repoId: 'R_kgDOMtGVzg',
        category: 'General',
        categoryId: 'DIC_kwDOMtGVzs4CiNtC',
        mapping: 'pathname',
        inputPosition: 'top',
        lang: 'en',
        locales: {
            'en-US': 'en'
        },
        homePageShowComment: false,
        lightTheme: 'light',
        darkTheme: 'transparent_dark',
    }, {
        frontmatter, route
    },
        true
    );
  }
} satisfies Theme
