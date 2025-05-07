import { createContentLoader } from 'vitepress'

interface Post {
  title: string
  url: string
  date: {
    time: number
    string: string
  },
  description: string
  image: string
}

declare const data: Post[]
export { data }

export default createContentLoader('blog/*.md', {
  transform(raw): Post[] {
    return raw
      .map(({ url, frontmatter }) => ({
        title: getSpecificData('og:title', frontmatter),
        url,
        date: formatDate(frontmatter.date),
        description: getSpecificData('og:description', frontmatter),
        image: getSpecificData('og:image', frontmatter)
      }))
      .sort((a, b) => b.date.time - a.date.time)
  },
})

function getSpecificData(name: string, frontmatter: Record<string, any>): string {
  return frontmatter.head.find((e) => e[1].property === name)[1].content
}

function formatDate(raw: string): Post['date'] {
  const date = new Date(raw)
  date.setUTCHours(12)
  return {
    time: +date,
    string: date.toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric',
    }),
  }
}