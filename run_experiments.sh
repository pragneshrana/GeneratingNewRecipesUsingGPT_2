mkdir experiments

for epoch in 2
do
	python run_lm_finetuning.py \
	--model_name_or_path distilgpt2 \
	--model_type gpt2 \
	--train_data_file Dataset/dataset_train.txt \
	--output_dir experiments/epochs_$epoch \
	--do_train \
	--overwrite_output_dir \
	--per_device_train_batch_size 1 \
	--num_train_epochs $epoch
done
