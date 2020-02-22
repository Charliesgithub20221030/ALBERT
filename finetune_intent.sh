pip install -r requirements.txt;
python -m run_classifier \
--data_dir=data_dir \
--output_dir=output_dir \
--init_checkpoint=data_dir/albert_base/model.ckpt-best \
--albert_config_file=data_dir/albert_base/albert_config.json \
--do_train=true \
--do_lower_case=true \
--max_seq_length=128 \
--optimizer=adamw \
--task_name=intent \
--warmup_step=1000 \
--learning_rate=3e-5 \
--train_step=10000 \
--save_checkpoints_steps=100 \
--train_batch_size=128 \
--vocab_file=data_dir/albert_base/vocab_chinese.txt
#   --do_eval=true \
#   --do_predict \
#   --spm_model_file=... \