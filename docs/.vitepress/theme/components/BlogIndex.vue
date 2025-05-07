<script setup lang="ts">
import { data as posts } from './blog.data'

function getDateTime(time: number) {
  return new Date(time).toISOString()
}
</script>

<template>
  <ul class="blog-list">
    <li class="blog-entry" v-for="post of posts">
      <article>
        <div class="child1">
          <a :href="post.url"><img :src="post.image" :alt="post.title"></a>
        </div>
        <div>
          <time :datetime="getDateTime(post.date.time)">{{
            post.date.string
          }}</time>
          <h2 class="title">
            <a :href="post.url">{{ post.title }}</a>
          </h2>
          <div class="description">{{ post.description }}</div>
          <p class="readmore">
            <a :href="post.url">Read More...</a>
          </p>
        </div>
      </article>
    </li>
  </ul>
</template>

<style scoped>
@media (min-width: 320px) and (max-width: 767px) {
  img {
    padding-bottom: 10px;
    max-width: 100%;
  }
}
@media (min-width: 768px) {
  article {
    display: flex;
  }
  img {
    padding-right: 20px;
    padding-bottom: 50px;
  }
  .child1 {
    width: 500px;
    align-self: center;
  }
}
.blog-list {
  list-style-type: none;
  padding: 0;
}
.blog-entry {
  margin-top: 3em;
  border-bottom: 1px solid var(--vp-c-divider);
}
.blog-entry time {
  font-size: 14px;
}
.title {
  border: none;
  margin-top: 0;
  padding-top: 0;
  font-size: 22px;
}
.title a {
  font-weight: 600;
  text-decoration: none;
}
</style>