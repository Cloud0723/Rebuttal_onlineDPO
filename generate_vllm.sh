mkdir data
conda activate vllm

# register the api server
bash ./generation/register_server.sh meta-llama/Meta-Llama-3-8B-Instruct

sleep 30
# start to generate
python ./generation/gen_hf.py --ports 8005 8006 8007 8008 --tokenizer meta-llama/Meta-Llama-3-8B-Instruct --dataset_name_or_path XinnanZhang/dataset_iter_1 --output_dir ./data/gen_data.jsonl --K 4 --temperature 1.0