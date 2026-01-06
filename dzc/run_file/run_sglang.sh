#python3 -m sglang.launch_server --model-path /data/weights/dsv3 --completion-template deepseek_coder --attention-backend ascend --disable-cuda-graph --base-gpu-id 3 --device npu --host 192.168.0.130 --port 8000 --api-key sk-123456

# SP
python3 -m sglang.launch_server --model-path /data/ascend-ci-share-pkking-sglang/modelscope/hub/models/DeepSeek-V3.2 --nnodes 2 --node-rank 0 --attention-backend ascend --disable-cuda-graph  --device npu --host 192.168.0.60 --port 8001 --api-key sk-123456 --max-running-requests 32 --enable-sp  --chunked-prefill-size -1 --trust-remote-code --tp-size 32

# CP


#SP+CP



# mixed-chunk
python3 -m sglang.launch_server --model-path /data/ascend-ci-share-pkking-sglang/modelscope/hub/models/Qwen/Qwen3-32B  --attention-backend ascend --disable-cuda-graph  --device npu --host 192.168.0.60 --port 8001 --api-key sk-123456 --enable-mixed-chunk --max-running-requests 4 --chunked-prefill-size 256 --trust-remote-code --tp-size 16
