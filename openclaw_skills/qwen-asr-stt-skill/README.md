# qwen-asr-stt-skill

这是一个供 OpenClaw 调用的本地 STT skill，实际复用工作区项目：

- 项目目录：`/home/legao/openclaw_workspace/qwen_asr_stt`
- 文件转写脚本：`stt_qwen.py`
- 麦克风转写脚本：`stt_qwen_mic.py`

## 目录结构

```text
qwen-asr-stt-skill/
├── SKILL.md
├── README.md
├── run_file.sh
├── run_mic.sh
└── run_koch.sh
```

## 安装

将本目录链接或复制到：

```bash
~/.openclaw/skills/qwen-asr-stt-skill
```

## 使用

文件转写：

```bash
bash run_file.sh --audio /path/to/audio.wav --local-only
```

麦克风录音转写：

```bash
bash run_mic.sh --local-only
```

录音、转写并调用 `koch-skill`：

```bash
bash run_koch.sh --local-only
```

## 依赖

依赖不在 skill 目录内重复安装，统一使用：

```bash
/home/legao/openclaw_workspace/qwen_asr_stt/.venv
```

## 说明

这样做的好处是：

- skill 入口稳定
- 业务代码只维护一份
- OpenClaw 与工作区项目解耦程度适中
