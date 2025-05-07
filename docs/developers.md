---
layout: page
---

<script setup>
import {
  VPTeamPage,
  VPTeamPageTitle,
  VPTeamMembers
} from 'vitepress/theme'

const members = [
  {
    avatar: 'https://avatars.githubusercontent.com/u/54990208?s=400&u=9e899762678a3570d69eb9a469d97f9754c0107d&v=4',
    name: 'Sravan Goud',
    title: 'Creator',
    links: [
      { icon: 'github', link: 'https://github.com/tsra0ne' },
      { icon: 'twitter', link: 'https://twitter.com/tsra0ne' },
      { icon: 'linkedin', link: 'https://linkedin.com/in/tsra0ne' }
    ]
  },
]
</script>

<VPTeamPage>
  <VPTeamPageTitle>
    <template #title>
      Developers
    </template>
    <template #lead>
      The Swift Guy is Maintained by
      team, some of whom have chosen to be featured below.
    </template>
  </VPTeamPageTitle>
  <VPTeamMembers
    size="small"
    :members="members"
  />
</VPTeamPage>