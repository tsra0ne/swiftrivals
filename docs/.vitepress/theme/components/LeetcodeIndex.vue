<script setup lang="ts">
import { data as posts } from './leetcode.data'
</script>

<template>
  <ul class="blog-list">
    <li class="blog-entry" v-for="post of posts">
      <article>
        <h2 class="title">
            <a :href="post.url">{{ post.title }}</a>
        </h2>
      </article>
    </li>
  </ul>
</template>

<style scoped>
.blog-list {
  list-style-type: none;
  padding: 0;
  border-top: 1px solid var(--vp-c-divider);
}
.blog-entry {
  border-bottom: 1px solid var(--vp-c-divider);
  border-left: 1px solid var(--vp-c-divider);
  border-right: 1px solid var(--vp-c-divider);
  padding-left: 10px;
  padding-right: 10px;
}
.title {
  border: none;
  margin-top: 0;
  padding-top: 0;
  font-size: 16px;
}
.title a {
  font-weight: 600;
  text-decoration: none;
}
.vp-doc li + li {
    margin-top: 0px;
}
.vp-doc h2 {
    margin: 0;
}
</style>