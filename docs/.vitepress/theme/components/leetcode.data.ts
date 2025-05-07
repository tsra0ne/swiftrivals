import { createContentLoader } from 'vitepress'

interface Post {
  title: string
  url: string
}

declare const data: Post[]
export { data }

export default createContentLoader('leetcode/*.md', {
  transform(raw): Post[] {
    return raw
      .map(({ url, frontmatter }) => ({
        title: getSpecificData('og:title', frontmatter),
        url
      }))
  },
})

function getSpecificData(name: string, frontmatter: Record<string, any>): string {
  return frontmatter.head.find((e) => e[1].property === name)[1].content
}