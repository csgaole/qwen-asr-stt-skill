---
name: qwen-asr-stt-skill
description: 本地语音转文字技能。适用于 OpenClaw 需要调用 Qwen/Qwen3-ASR-0.6B 或 Whisper 做文件转写、麦克风录音转写、离线缓存优先转写的场景。
---

# qwen-asr-stt-skill

将工作区里的 `qwen_asr_stt` 项目封装成一个可供 OpenClaw 调用的本地 STT skill。

## 适用场景

- 用户要把音频文件转成文字
- 用户要录一段麦克风音频然后立即转写
- 用户要求优先使用本地缓存模型，不依赖网络
- 用户要测试 Qwen ASR / Whisper 本地转写链路

## 默认入口

文件转写：

```bash
bash run_file.sh --audio /path/to/audio.wav --local-only
```

麦克风录音后立即转写：

```bash
bash run_mic.sh --local-only
```

录音、转写并直接调用 `koch-skill`：

```bash
bash run_koch.sh --local-only
```

## 行为约定

- 优先调用工作区中的 `qwen_asr_stt/.venv`
- 优先使用 `Qwen/Qwen3-ASR-0.6B`
- 当 Qwen 不可用或返回空文本时，自动回退到 `openai/whisper-small`
- `--local-only` 时只使用本地缓存模型

## 关键文件

- `run_file.sh`: 文件转写入口
- `run_mic.sh`: 麦克风转写入口
- `run_koch.sh`: STT -> koch-skill 入口
- `README.md`: 安装和使用说明

## 注意事项

- 该 skill 依赖工作区目录 `/home/legao/openclaw_workspace/qwen_asr_stt`
- 若 `.venv` 不存在，需要先在该目录安装依赖
- 若模型未缓存且使用 `--local-only`，会直接提示模型未缓存
