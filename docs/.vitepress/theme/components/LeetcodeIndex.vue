<script setup lang="ts">
import { data as posts } from './leetcode.data'
</script>

<template>
  <ul class="blog-list">
    <li class="blog-entry" v-for="post of posts">
      <ul>
        <li>
          <p>
            <a :href="post.url">{{ post.title }}</a>
          </p>
        </li>
      </ul>
    </li>
  </ul>
</template>

<style scoped>
.blog-list {
  list-style-type: none;
  padding: 0;
}
.blog-entry {
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