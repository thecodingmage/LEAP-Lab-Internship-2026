# Track 1: Speaker Diarization (DISPLACE-M 2026 Baseline)

This repository contains the configuration profiles, execution scripts, and baseline performance benchmarks evaluated on the **DISPLACE-M 2026 Challenge** Development Dataset.

## 📌 Task Objective
The focus of this task is **Speaker Diarization (SD)**—determining "who spoke when" within code-mixed, multilingual conversations. The dataset features authentic, spontaneous dialogues between Accredited Social Health Activists (ASHAs) and patients recorded across diverse geographic regions under real acoustic noise conditions. It incorporates natural multilingual code-mixing predominantly across Hindi, Kannada, and English.

---

## 🔗 Official Resource Links
* **Official Website:** [DISPLACE 2026 Challenge Portal](https://displace2026.github.io/)
* **Baseline Repository:** [displace2026/DISPLACE-2026-Baselines (GitHub)](https://github.com/displace2026/DISPLACE-2026-Baselines)
* **Dataset Access:** [Displace-M/Displace2026 (Hugging Face)](https://huggingface.co/datasets/Displace-M/Displace2026)

---

## 📊 Baseline Evaluation Results

The pipeline was executed across the complete Development track dataset using the default baseline system architectures. Evaluation metrics were cleanly calculated using `dscore`.

### **Overall Performance Summary**
| System Model | DER (%) ↓ | JER (%) ↓ | B3-Precision ↑ | B3-Recall ↑ | B3-F1 ↑ |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **Official Baseline** | **12.03** | **19.03** | **0.85** | **0.82** | **0.83** |

### **Key Insights & Performance Variance**
An analysis of the per-session breakdown inside `results/final_score.out` shows significant variability depending on acoustic environments and conversational densities:
* **Optimal Performance:** Hit a minimum Diarization Error Rate (DER) of **3.68%** on file `b56fb5b70d2639e8`.
* **Sub-optimal Performance:** Encountered a peak Diarization Error Rate (DER) of **51.87%** on file `9cb4d901fd2d960b`.

The variations highlights common pipeline pain points including heavy speaker overlap, fast conversational switching, and background room acoustics.

---

## 📂 File Directory Mapping
* `run.sh` / `gpu_run.sh`: Local batch pipeline implementation and GPU submission scripts.
* `config.toml`: Parameter tracking and active model layout profiles.
* `results/final_score.out`: Granular per-file dscore metrics evaluation.

---
*Developed as part of research tasks at the LEAP Lab, IISc Bangalore.*

