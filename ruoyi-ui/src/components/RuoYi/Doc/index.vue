<template>
  <div>
    <svg-icon icon-class="question" @click="goto" />
  </div>
</template>

<script>
export default {
  name: 'RuoYiDoc',
  data() {
    return {
      url: 'https://vcnfzvrvujwh.feishu.cn/wiki/Hj36wCdGJiB2i2kUIBwcZsbJnmh'
    }
  },
  methods: {
    goto() {
      window.open(this.url)
    }
  }
}
</script>
