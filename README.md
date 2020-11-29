# DeepBioComp
# Cancer Ask :scorpion:
![Cancer Ask Logo](Images/Cancer_ask.png)


![Cancer Ask Logo](Images/Cancer_ask.svg)

## About

We fine-tuned [BioBERT](https://huggingface.co/dmis-lab/biobert-base-cased-v1.1-squad) (Bidirectional Encoder Representations from Transformers for Biomedical Text Mining) model for short question types over cancer-related question answers and context texts, we called Cancer Ask. Further, we fine-tuned the Generative Pre-trained Transformer 2 (GPT2), models over cancer-related text, we named it as GPT2 Cancer. Basic idea is to use answers from Cancer Ask and feed to GPT2 Cancer to extend the scope of the answer further to enhance the context.

## Reference
### Dataset
* [MedQuAD dataset](https://github.com/abachaa/MedQuAD/tree/master/1_CancerGov_QA), [ARTICLE](https://arxiv.org/abs/1901.08079) Abacha, A. B., & Demner-Fushman, D. (2019). A question-entailment approach to question answering. BMC bioinformatics, 20(1), 511.

```{bash}
export SQUAD_DIR=.

python run_squad.py \
    --model_type bert \
    --model_name_or_path dmis-lab/biobert-base-cased-v1.1-squad \
    --do_train \
    --do_eval \
    --version_2_with_negative \
    --train_file $SQUAD_DIR/Train_cancer_qa.json \
    --predict_file $SQUAD_DIR/Dev_cancer_qa.json \
    --learning_rate 3e-5 \
    --num_train_epochs 4 \
    --max_seq_length 384 \
    --doc_stride 128 \
    --output_dir ./BioBERT_Cancer/ \
    --per_gpu_eval_batch_size=1  \
    --per_gpu_train_batch_size=1   \
    --save_steps 5000

```

## License
[MIT](https://github.com/uabinf/nlp-group-project-fall-2020-deepbiocomp/blob/main/LICENSE)

## Google Drive
[link](https://drive.google.com/drive/folders/1YmDINjCupRHrTMihE9k8r8wTxL1H5UCv?usp=sharing)
