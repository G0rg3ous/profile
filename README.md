# 科研简历 · Academic Resume

基于 [billryan/resume](https://github.com/billryan/resume) 的单栏 LaTeX 简历模板，采用简洁标题、细分隔线和紧凑排版。所有姓名、学校、论文与联系方式均为占位示例。

## 在 Overleaf 中使用

1. 在本仓库点击 **Code → Download ZIP**。
2. 在 Overleaf 点击 **New Project → Upload Project**，上传 ZIP。
3. 在项目设置中将 **Compiler** 设为 **XeLaTeX**。
4. 中文简历选择 **main.tex** 为主文档；英文简历选择 **main-en.tex**。
5. 点击 **Recompile**，编辑后下载 PDF。

无需 GitHub 同步功能，上传 ZIP 即可编辑。字体与图标使用 Overleaf 自带的 TeX Live 资源。

## 文件说明

| 文件 | 用途 |
| --- | --- |
| `main.tex` | 中文简历，默认入口 |
| `main-en.tex` | 英文简历 |
| `resume.cls` | 排版、间距与主题色 |
| `photo-header.tex` | 姓名、联系方式及右上角照片布局 |
| `LICENSE` | 原模板 MIT 许可证 |
| `UPSTREAM.md` | 来源、改动和字体许可说明 |

## 常用修改

- 替换姓名、邮箱、联系方式、教育背景和项目经历。
- 将论文的接收、投稿或准备状态填写准确；示例内容不是个人履历。
- 修改主题色：在 `resume.cls` 中查找 `\definecolor{accent}{HTML}{243E52}`。
- 中文使用 TeX Live 自带 Fandol 字体，无需 Adobe 中文字体。
- 顶部采用左侧姓名及联系方式、右侧个人照片布局。
- 内容较多时允许自然分页，不建议过度缩小字号。

## 本地编译

安装含中文支持的 TeX Live，然后执行：

```sh
xelatex main.tex
xelatex main-en.tex
```

## 上传个人照片

在 Overleaf 左侧文件列表点击上传，将照片放在与 `main.tex` 同级的项目根目录：

- JPEG 照片命名为 **photo.jpg**；PNG 照片命名为 **photo.png**。
- 文件名区分大小写；若两种文件都存在，优先使用 `photo.jpg`。
- 无需修改代码，重新编译后照片自动出现在右上角。
- 未上传时显示照片占位框，不会因缺少照片而报错。
- 照片保持原始比例，最大尺寸为宽 2.2 cm、高 2.9 cm；建议使用事先裁好的竖版证件照。
- 若要调整尺寸，编辑 `photo-header.tex`；较大幅度改宽度时也需要调整两侧栏宽。

已导入 Overleaf 的旧项目需要替换 `main.tex`、`main-en.tex`，并新增 `photo-header.tex`；也可重新下载仓库 ZIP 后导入。

## 当前版式：简洁紧凑型

- A4 单栏，左右页边距 1.4 cm，上下 1.1 cm。
- 正文 10.5 pt，基础行距 14.2 pt，收紧标题、项目列表与段落之间的空白。
- 姓名及联系方式置左，照片置右；照片最大 2.2 × 2.9 cm，保持原始比例。
- 小节使用深蓝色标题及细横线，去掉装饰竖线、金色线和三栏顶部。
- 教育、项目条目的日期靠右；较长的标题可以自动换行。
- 保留原有正文与个人信息。已编辑过 Overleaf 内容时，只需替换 `resume.cls` 和 `photo-header.tex`。
- 内容增加后允许自然分页；不通过过小字号强行挤成一页。

编译器继续选择 **XeLaTeX**。
