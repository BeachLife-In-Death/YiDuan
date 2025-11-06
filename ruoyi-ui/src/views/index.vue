<template>
  <div class="app-container home">
    <el-row :gutter="20">
      <el-col :sm="24" :lg="12" style="padding-left: 20px">
        <h2>大学快递驿站后台系统</h2>
        <p>
          随着高校校园的规模不断扩大和科技发展，师生的网络购物、文件寄送等需求日益增长，快递业务量呈持续上升趋势。传统校园快递服务信息化程度低、管理效率差、包裹分拣与核验环节容易出错，也常常因为管理原因发生学生与驿站的冲突。尤其在高峰期（如开学季、双十一、节假日前后），驿站内包裹堆积严重，取件排队时间长、管理混乱、包裹丢失或误取事件时有发生，严重影响了学生与管理人员的使用体验与工作效率。
          <br>
          为了解决上述问题，本项目拟开发一套大学快递系统，实现校园快递业务的数字化与智能化管理。通过完善的权限分级设计与数据库支持，系统能够实现驿站信息统一管理、包裹全流程追踪、用户取件码自动生成与验证等核心功能，从而提高快递流转效率、规范化驿站管理、保障数据安全与业务透明化。
        </p>
        <p>
          <b>当前版本:</b> <span>v{{ version }}</span>
        </p>
<!--        <p>-->
<!--          <el-tag type="danger">&yen;免费开源</el-tag>-->
<!--        </p>-->
        <p>
          <el-button
            type="primary"
            size="mini"
            icon="el-icon-cloudy"
            plain
            @click="goTarget('https://github.com/Meguriii/YiDuan')"
            >Github项目库</el-button
          >
          <el-button
            size="mini"
            icon="el-icon-s-home"
            plain
            @click="goTarget('https://vcnfzvrvujwh.feishu.cn/wiki/Hj36wCdGJiB2i2kUIBwcZsbJnmh')"
            >飞书研究报告</el-button
          >
        </p>
      </el-col>

      <el-col :sm="24" :lg="12" style="padding-left: 50px">
        <el-row>
          <el-col :span="12">
            <h2>技术选型</h2>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="6">
            <h4>后端技术</h4>
            <ul>
              <li>SpringBoot</li>
              <li>Spring Security</li>
              <li>JWT</li>
              <li>MyBatis</li>
              <li>Druid</li>
              <li>Fastjson</li>
              <li>...</li>
            </ul>
          </el-col>
          <el-col :span="6">
            <h4>前端技术</h4>
            <ul>
              <li>Vue</li>
              <li>Vuex</li>
              <li>Element-ui</li>
              <li>Axios</li>
              <li>Sass</li>
              <li>Quill</li>
              <li>...</li>
            </ul>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-divider />
    <el-row :gutter="20">
<!--      <el-col :xs="24" :sm="24" :md="12" :lg="8">-->
<!--        <el-card class="update-log">-->
<!--          <div slot="header" class="clearfix">-->
<!--            <span>联系信息</span>-->
<!--          </div>-->
<!--          <div class="body">-->
<!--            <p>-->
<!--              <i class="el-icon-s-promotion"></i> 官网：<el-link-->
<!--                href="http://www.ruoyi.vip"-->
<!--                target="_blank"-->
<!--                >http://www.ruoyi.vip</el-link-->
<!--              >-->
<!--            </p>-->
<!--          </div>-->
<!--        </el-card>-->
<!--      </el-col>-->
      <el-col :xs="24" :sm="24" :md="12" :lg="8">
        <el-card class="update-log">
          <div slot="header" class="clearfix">
            <span>更新日志</span>
          </div>
          <el-collapse accordion>
            <el-collapse-item title="v0.1.0 - 2025-11-04">
              <ol>
                <li>总之先上线了</li>
              </ol>
            </el-collapse-item>
          </el-collapse>
        </el-card>
      </el-col>
      <el-col :xs="24" :sm="24" :md="12" :lg="8">
        <el-card class="update-log">
          <div slot="header" class="clearfix">
            <span>捐赠支持</span>
          </div>
          <div class="body">
            <img
              src="@/assets/images/pay.png"
              alt="donate"
              width="100%"
            />
<!--            <span style="display: inline-block; height: 30px; line-height: 30px"-->
<!--              >你可以请作者喝杯咖啡表示鼓励</span-->
<!--            >-->
          </div>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  name: "Index",
  data() {
    return {
      // 版本号
      version: "0.2.0"
    }
  },
  methods: {
    goTarget(href) {
      window.open(href, "_blank")
    }
  }
}
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }
  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }
  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .update-log {
    ol {
      display: block;
      list-style-type: decimal;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0;
      margin-inline-end: 0;
      padding-inline-start: 40px;
    }
  }
}
</style>

