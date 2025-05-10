import { defineConfig } from 'vitepress'

export default defineConfig({
  lang: 'en-US',
  title: "Swift Rivals",
  description: "Learn Swift, SwiftUI and UIKit",
  cleanUrls: true,
  head: [
    ['link', { rel: 'icon', href: '/favicon.ico' }],
    ['link', { rel: 'preconnect', href: 'https://fonts.googleapis.com' }],
    ['link', { rel: 'preconnect', href: 'https://fonts.gstatic.com', crossorigin: '' }],
    ['link', { href: 'https://fonts.googleapis.com/css?family=Space+Mono:regular,italic,700,700italic&display=swap', rel: 'stylesheet' }],
    ['link', { href: 'https://fonts.googleapis.com/css?family=Space+Grotesk:regular,italic,700,700italic&display=swap', rel: 'stylesheet' }]
  ],
  lastUpdated: true,
  appearance: "dark",

  sitemap: {
    hostname: 'https://swiftrivals.com'
  },

  markdown: {
    image: {
      lazyLoading: true
    }
  },

  themeConfig: {
    logo: '/logo.svg',

    nav: [
      { text: 'Home', link: '/' },
      { text: 'Blog', link: '/blog' },
      { text: 'SwiftUI', link: '/swiftui/swiftui-resources' },
      { text: 'Leetcode', link: '/leetcode' },
      { text: 'Developers', link: '/developers' }
    ],

    sidebar: {
      '/leetcode/': [
        {
          text: 'Leetcode',
          items: [
            { text: '1. Two Sum', link: '/leetcode/1-two-sum' },
            { text: '15. 3Sum', link: '/leetcode/15-3Sum' },
            { text: '125-valid-palindrome', link: '/leetcode/125-valid-palindrome'},
            { text: '128. Longest Consecutive Sequence', link: '/leetcode/128-longest-consecutive-sequence' },
            { text: '167. Two Sum II - Input Array Is Sorted', link: '/leetcode/167-two-sum-II-input-array-is-sorted' },
            { text: '217. Contains Duplicate', link: '/leetcode/217-contains-duplicate'},
            { text: '242. Valid Anagram', link: '/leetcode/242-valid-anagram' },
            { text: '283. Move Zeroes', link: '/leetcode/283-move-zeroes' },
            { text: '347. Top K Frequent Elements', link: '/leetcode/347-top-k-frequent-elements' }
          ]
        }
      ],
      '/snapkit/': [
        {
          text: 'Understanding SnapKit Basics',
          items: [
            { text: 'What is SnapKit and its role in iOS development', link: '/snapkit/what-is-snapkit-and-its-role-in-ios-development' }
          ]
        }
      ]
    },

    footer: {
      message:
        'Released under the MIT License.',
      copyright:
        'Copyright © 2025 Swift Rivals',
    },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/tsra0ne/swiftrivals' }
    ],

    editLink: {
      pattern: 'https://github.com/tsra0ne/swiftrivals/blob/main/docs/:path',
      text: 'Edit this page on GitHub'
    },

    search: {
      provider: "local",
    }
  }
})
