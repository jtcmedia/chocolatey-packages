

# gputaskman

**An `htop` for what's inside your GPU, not just how full it is.**

Windows + NVIDIA/AMD, with Linux and WSL support (NVIDIA everywhere, AMD on native Linux; see
[Linux and WSL](#linux-and-wsl)) and macOS on Apple Silicon (see [macOS](#macos-apple-silicon)). A terminal UI
that connects per-process GPU memory and engine activity with loaded runtimes, model files, and
LLM buffer breakdowns.

Task Manager says "15 GB used." This tries to answer: *by what? Model weights? KV cache?
Your browser? The desktop compositor? And why is so much GPU memory in system RAM?*

**Scope: local GPU workloads, not cloud services.** Decision models, vision, speech, LLM inference,
training/fine-tuning (including Unsloth), graphics, and video all belong here. Visibility varies:
process memory and engine activity are measured; identifying individual models and their work
requires supporting evidence. A PyTorch/CUDA DLL alone cannot identify a model or prove training,
and a mapped file does not prove that model is resident on the GPU or being exercised.
CPU-only, NPU-only, and cloud workloads are out of scope.

## Maintainer's Note

I produce and maintain Chocolatey packages in my spare time, for free. If you use my packages, and appreciate the time and effort I put into making and maintaining them, please consider [making a small donation](https://www.buymeacoffee.com/jtcmedia). Thank-you!
