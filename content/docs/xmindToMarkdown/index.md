---
# 文章标题，请和目录名保持一致
title: "xmindToMarkdown"
# 发布日期
date: 2026-04-09T08:50:00+08:00
# 权重
weight: 1
# 是否为草稿，如果是草稿，在系统时间未到发布日期前不显示
draft: false
description: "能够转换xmind文件。"
# 目录名
slug: "xmidnToMarkdown"
# 标签
tags: ["python", "自主开发"]
# 系列
# 是否是一个连续系列中的文档，页面会出现：部署教程 - 这篇文章属于一个选集
series: ["myProject"]
# 该文章在系列中的顺序
series_order: 1
---

![刺客](index.assets/cike.jpg)

该工具需要python以及typore等其他能够查看markdown文件的软件，网页markdown查看工具是不可行的。

下载后

1. 将你的xmind文件放到xmind文件夹内
2. 运行pip install -r requirements.txt来下载所需要的库。注意，所有命令都需要在项目根目录运行，
3. python -m src.batch_converter --input ./xmind --output ./markdown --recursive ，运行后会提示转换的结果
4. 转换后去markddown文件夹查看，成功的话是有一个images文件夹和markdown文件



需要注意的点

- 你的python版本可能太低无法使用，不用担心，更新很简单
- 注意，所有命令都需要在项目根目录运行，

pip install -r requirements.txt
python -m src.batch_converter --input ./xmind --output ./markdown --recursive





以下并不需要考虑，感兴趣自己探索。

启用图片上传到图床（需要先配置 config.json）：

python -m src.batch_converter --input ./xmind --output ./markdown --upload
支持的图床配置：

不带 --upload（默认）
python -m src.batch_converter --input ./xmind --output ./markdown --recursive
图片保存到本地文件夹 markdown/images/
生成 Markdown 时使用本地相对路径：images/xxx.png
无需网络，直接可用
适合离线使用或部署到静态网站
带 --upload
python -m src.batch_converter --input ./xmind --output ./markdown --upload
图片会上传到配置的图床（smms / imgur / github）
生成 Markdown 时使用图床 URL：https://sm.ms/api/v2/xxx.png
需要网络和配置 API token
适合分享文档，图片随链接走
local - 保存到本地 images 文件夹
smms - SM.MS 图床（需配置 token）
imgur - Imgur 图床（需配置 Client ID）