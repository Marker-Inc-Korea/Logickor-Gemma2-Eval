export VLLM_ATTENTION_BACKEND=FLASHINFER

python 1_shot_mtbench.py \
    --is_multi_turn 1 \
    --eval_model gpt-4-1106-preview \
    --repo_name HumanF-MarkrAI \
    --base_model Gukbap-Gemma2-9B \
    --max_token 4096 \
    --prompt cot-1-shot