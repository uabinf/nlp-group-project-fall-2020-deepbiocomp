export SQUAD_DIR=.

python run_squad.py \
    --model_type bert \
    --model_name_or_path dmis-lab/biobert-base-cased-v1.1-squad \
    --do_train \
    --do_eval \
    --version_2_with_negative \
    --train_file $SQUAD_DIR/train-v2.0.json \
    --predict_file $SQUAD_DIR/dev-v2.0.json \
    --learning_rate 3e-5 \
    --num_train_epochs 4 \
    --max_seq_length 384 \
    --doc_stride 128 \
    --output_dir ./BioBERT_squad2/ \
    --per_gpu_eval_batch_size=1  \
    --per_gpu_train_batch_size=1   \
    --save_steps 5000
