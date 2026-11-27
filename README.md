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
| `LICENSE` | 原模板 MIT 许可证 |
| `UPSTREAM.md` | 来源、改动和字体许可说明 |

## 常用修改

- 替换姓名、邮箱、联系方式、教育背景和项目经历。
- 将论文的接收、投稿或准备状态填写准确；示例内容不是个人履历。
- 修改主题色：在 `resume.cls` 中查找 `\definecolor{accent}{HTML}{183B56}`。
- 中文使用 TeX Live 自带 Fandol 字体，无需 Adobe 中文字体。
- 默认不含照片，便于突出科研内容；需要时可另行增加。
- 内容较多时允许自然分页，不建议过度缩小字号。

## 本地编译

安装含中文支持的 TeX Live，然后执行：

```sh
xelatex main.tex
xelatex main-en.tex
```
