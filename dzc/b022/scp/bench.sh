python3 -m sglang.bench_serving \
	--backend sglang \
	--dataset-name random \
	--num-prompts 1 \
	--random-input 64000 \
	--random-output 3 \
	--host 192.168.0.60 \
	--port 8001 \
	--random-range-ratio 1
