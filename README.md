# qwen-asr-stt-skill

本仓库包含两部分内容：

- `qwen_asr_stt/`: 本地 Qwen ASR / Whisper STT 项目，支持文件转写与麦克风录音转写
- `openclaw_skills/qwen-asr-stt-skill/`: 供 OpenClaw 调用的 skill 封装

## 目录

```text
qwen-asr-stt-skill/
├── qwen_asr_stt/
└── openclaw_skills/
    └── qwen-asr-stt-skill/
```

## 快速开始

### 1. 进入项目

```bash
cd qwen_asr_stt
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
```

### 2. 文件转写

```bash
python3 stt_qwen.py --audio test.wav --local-only
```

### 3. 麦克风录音转写

```bash
python3 stt_qwen_mic.py --local-only
```

### 4. OpenClaw skill 调用

```bash
bash openclaw_skills/qwen-asr-stt-skill/run_file.sh --audio qwen_asr_stt/test.wav --local-only
bash openclaw_skills/qwen-asr-stt-skill/run_mic.sh --local-only
```
