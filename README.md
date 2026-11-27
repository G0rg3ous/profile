# 科研简历 · Academic Resume

基于 [billryan/resume](https://github.com/billryan/resume) 的单栏 LaTeX 简历模板，采用深蓝色标题、清晰分区和紧凑排版。所有姓名、学校、论文与联系方式均为占位示例。

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
- 修改主题色：在 `resume.cls` 中查找 `\definecolor{accent}{HTML}{183B56}`。
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
- 照片保持原始比例，最大尺寸为宽 2.7 cm、高 3.5 cm；建议使用事先裁好的竖版证件照。
- 若要调整尺寸，编辑 `photo-header.tex`；较大幅度改宽度时也需要调整两侧栏宽。

已导入 Overleaf 的旧项目需要替换 `main.tex`、`main-en.tex`，并新增 `photo-header.tex`；也可重新下载仓库 ZIP 后导入。

## 参考版式更新

参照提供的简历 PDF，顶部改为“姓名 / 联系信息 / 照片”三栏，正文使用深蓝色小节标题、蓝金色分隔线和左侧细竖线，缩小页边距并收紧项目间距。原有正文、联系方式和照片上传方式保留。

布局主要由 `resume.cls` 和 `photo-header.tex` 控制。已填写过正文的 Overleaf 项目，只需替换这两个文件即可应用新布局，无需覆盖个人内容。
