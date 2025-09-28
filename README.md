# Tester 语言 VS Code 扩展

## 功能特性

### 🎨 语法高亮

- **关键字高亮**: 所有 Tester 命令关键字都有独特的颜色
- **块结构高亮**: 配置信息、测试用例集、测试用例都有不同的高亮颜色
- **数据类型高亮**: 数字、十六进制、字符串、范围值都有专门的颜色
- **注释高亮**: 行注释和块注释支持

### 📁 代码折叠

- **配置信息块**: `tset`/`tend` 块可以折叠
- **测试用例集**: `ttitle`/`ttitle-end` 块可以折叠
- **测试用例**: 单个测试用例可以折叠
- **智能缩进**: 自动识别缩进层级

### ⚡ 自动完成

- **命令补全**: 输入命令时自动提示
- **代码片段**: 预定义的代码模板
- **参数提示**: 命令参数自动填充

### 🔗 括号配对

- **块配对**: `tset`/`tend` 配对高亮
- **标题配对**: `ttitle`/`ttitle-end` 配对高亮
- **用例配对**: `tstart`/`tend` 配对高亮

## 支持的命令

### 配置命令

- `tset` / `tend` - 配置信息块
- `tcaninit` - CAN 设备初始化

### 测试命令

- `tcans` - CAN 消息发送
- `tcanr` - CAN 消息接收
- `tdelay` - 延时控制

### 结构命令

- `ttitle` / `ttitle-end` - 测试用例集
- `tstart` - 测试用例开始

## 代码片段

### 配置信息块

```tester
tset
  // 配置信息
tend
```

### 测试用例集

```tester
ttitle=测试用例标题
  // 具体测试用例
ttitle-end
```

### 测试用例

```tester
1 tstart=用例描述
  // 测试命令
tend
```

## 语法高亮颜色方案

- **关键字**: 蓝色 (keyword.control.tester)
- **配置块**: 紫色 (meta.block.config.tester)
- **测试用例集**: 绿色 (meta.block.test-suite.tester)
- **测试用例**: 橙色 (meta.block.test-case.tester)
- **数字**: 青色 (constant.numeric.tester)
- **十六进制**: 黄色 (constant.numeric.hex.tester)
- **注释**: 灰色 (comment.tester)

## 安装和使用

1. 将扩展安装到 VS Code
2. 打开 `.tst` 文件
3. 享受完整的语法高亮和代码折叠功能

## 配置选项

在 VS Code 设置中可以配置：

- `tester.syntaxHighlighting`: 启用/禁用语法高亮
- `tester.folding`: 启用/禁用代码折叠
- `tester.autoComplete`: 启用/禁用自动完成

## 文件结构

```
├── syntaxes/
│   └── tester.tmLanguage.json    # 语法高亮规则
├── snippets/
│   └── tester.json               # 代码片段
├── language-configuration.json   # 语言配置
├── package.json                  # 扩展配置
└── README.md                     # 说明文档
```

## 示例文件

查看 `test-folding.tst` 文件来了解完整的语法结构和折叠功能。
