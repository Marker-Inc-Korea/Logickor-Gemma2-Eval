# Logickor-Gemma2-Eval
This repo was created internally to utilize the [🌟logickor🌟](https://github.com/instructkr/LogicKor) evaluation for self-evaluation.

# Dependency (important)
There are many issues with evaluating Gemma2 in vllm.
Therefore, you should follow the installation below.
   
1. Download `vllm 0.5.1` version.
```python
pip install vllm==0.5.1
```
  
2. Add `FLASHINFER` backend in your script file.
```sh
export VLLM_ATTENTION_BACKEND=FLASHINFER
```

3. And then, download `flashinfer` package through this [link](https://github.com/vllm-project/vllm/issues/6192#issuecomment-2212553427).
- If there are some error, then try: [solution2](https://github.com/vllm-project/vllm/issues/7070#issuecomment-2264860720).

# Evaluation
Please check the [script file]().
```
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
- [HumanF-MarkrAI/Gukbap-Mistral-7B🍚]()
- [HumanF-MarkrAI/Gukbap-Qwen2-7B🍚]()
- [HumanF-MarkrAI/Gukbap-Gemma2-7B🍚]()


# BibTex
```
@article{HumanF-MarkrAI,
  title={Gukbap-Mistral-7B},
  author={MarkrAI},
  year={2024},
  url={https://huggingface.co/HumanF-MarkrAI}
}
```
