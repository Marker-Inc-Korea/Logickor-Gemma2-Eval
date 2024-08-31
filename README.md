# Logickor-Gemma2-Eval
This repo was created internally to utilize the [🌟logickor🌟](https://github.com/instructkr/LogicKor) evaluation for self-evaluation.  
Our code is `zero-shot` only.  
  
**Gukbap-Mistral-7B🍚:** [![Hugging Face](https://img.shields.io/badge/%F0%9F%A4%97%20Hugging%20Face-Spaces-blue)](https://huggingface.co/HumanF-MarkrAI/Gukbap-Mistral-7B)   
**Gukbap-Qwen2-7B🍚:** [![Hugging Face](https://img.shields.io/badge/%F0%9F%A4%97%20Hugging%20Face-Spaces-blue)](https://huggingface.co/HumanF-MarkrAI/Gukbap-Qwen2-7B)   
**Gukbap-Gemma2-7B🍚:** [![Hugging Face](https://img.shields.io/badge/%F0%9F%A4%97%20Hugging%20Face-Spaces-blue)](https://huggingface.co/HumanF-MarkrAI/Gukbap-Gemma2-9B) 
  
# Dependency (important)
There are many issues with evaluating Gemma2 in vllm.  
Therefore, you should follow the installation below.
   
1. Download `vllm 0.5.1` version.
```python
pip install vllm==0.5.1
```
  
2. Add `FLASHINFER` backend in your script file.
```bash
export VLLM_ATTENTION_BACKEND=FLASHINFER
```

3. And then, download `flashinfer` package through this [link](https://github.com/vllm-project/vllm/issues/6192#issuecomment-2212553427).
- If there are some error, then try: [solution2](https://github.com/vllm-project/vllm/issues/7070#issuecomment-2264860720).

# Evaluation
Please check the [script file](https://github.com/Marker-Inc-Korea/Logickor-Gemma2-Eval/blob/main/logickor_self_gemma2_eval.sh).
```bash
# Example
export VLLM_ATTENTION_BACKEND=FLASHINFER 

python mtbench.py \
    --is_multi_turn 1 \
    --eval_model gpt-4-1106-preview \
    --repo_name HumanF-MarkrAI \ 
    --base_model Gukbap-Qwen2-7B \ 
    --max_token 8192
```
> If you want to test other models (mistral, qwen, ...), then you need to remove `export VLLM_ATTENTION_BACKEND=FLASHINFER`.

# Example
- [HumanF-MarkrAI/Gukbap-Mistral-7B🍚](https://github.com/Marker-Inc-Korea/Logickor-Gemma2-Eval/blob/main/results/Gukbap-Mistral-7B_0.jsonl)
- [HumanF-MarkrAI/Gukbap-Qwen2-7B🍚](https://github.com/Marker-Inc-Korea/Logickor-Gemma2-Eval/blob/main/results/Gukbap-Qwen2-7B_0.jsonl)
- [HumanF-MarkrAI/Gukbap-Gemma2-7B🍚](https://github.com/Marker-Inc-Korea/Logickor-Gemma2-Eval/blob/main/results/Gukbap-Gemma2-9B_0.jsonl)


# BibTex
```
@article{HumanF-MarkrAI,
  title={Gukbap-Series-LLM},
  author={MarkrAI},
  year={2024},
  url={https://huggingface.co/HumanF-MarkrAI}
}
```
