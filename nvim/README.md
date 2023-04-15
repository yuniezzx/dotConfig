# 💤 LazyVim 个人配置



> 本人的配置是在 [LazyVim](https://www.lazyvim.org/) 基础上覆盖,并非是用 [lazyvim](https://www.lazyvim.org/) 插件直接配置(这两者有点差别,但不多)

![nvim-vim](https://github.com/Niezzx/Images/blob/main/Nvim-view.png)

LazyVim 默认的 leader 是 空格， 可以在 `lua/config/options.lua`  中修改



## 快捷键



| 按键 | 描述 | 模式 |
| ----------- | ---- | :--: |
| `jk` | 退出插入模式 | i |
| `<C-s>` | 保存 | n , i |
| `<C-q>` | 退出 Nvim | n |
| `<leader>e` | 弹出/弹回 文档树 | n |
| `<leader>ft` | 开启终端 | n |
| `<leader>wd` | 关闭窗口 | n |
| `<C-\>` | toggleterm | n |
| `gd` | 跳转到声明函数 | n |
| `gza` | 添加surround | n,v |
|  |  |  |
|  |  |  |

### Telescope 

| 按键         | 描述            | 模式 |
| :----------- | :-------------- | ---- |
| `<laeder>tp` | 打开最近的 项目 | n    |

- normal
  - c 创建一个项目

