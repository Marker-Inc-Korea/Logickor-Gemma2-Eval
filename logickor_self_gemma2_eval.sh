export VLLM_ATTENTION_BACKEND=FLASHINFER

python mtbench.py \
    --is_multi_turn 1 \
    --eval_model gpt-4-1106-preview \
    --repo_name HumanF-MarkrAI \
    --base_model Gukbap-Qwen2-7B \
    --max_token 8192