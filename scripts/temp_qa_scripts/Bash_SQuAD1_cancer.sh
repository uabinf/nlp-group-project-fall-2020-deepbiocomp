export SQUAD_DIR=.

python run_squad.py \
    --model_type bert \
    --model_name_or_path gdario/biobert_bioasq \
    --do_train \
    --do_eval \
    --version_2_with_negative \
    --train_file $SQUAD_DIR/train_qa.json \
    --predict_file $SQUAD_DIR/dev_qa.json \
    --learning_rate 3e-5 \
    --num_train_epochs 4 \
    --max_seq_length 384 \
    --doc_stride 128 \
    --output_dir ./BioBERT_squad1_cancer/ \
    --per_gpu_eval_batch_size=1  \
    --per_gpu_train_batch_size=1   \
    --save_steps 5000
