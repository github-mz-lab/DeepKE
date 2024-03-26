CUDA_VISIBLE_DEVICES=0 python src/inference.py \
    --stage sft \
    --model_name_or_path 'models/chatglm3-6b' \
    --checkpoint_dir 'lora/chatglm3-6b-lora' \
    --model_name 'chatglm' \
    --template 'chatglm3' \
    --do_predict \
    --input_file 'data/NER/test.json' \
    --output_file 'results/chatglm3-6b-lora.json' \
    --finetuning_type lora \
    --output_dir 'lora/test' \
    --predict_with_generate \
    --cutoff_len 512 \
    --bf16 \
    --max_new_tokens 300 
