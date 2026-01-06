export PYTHONPATH=/data/dzc/b022/mix/sglang/python:$PYTHONPATH
export SGLANG_SET_CPU_AFFINITY=1
export PYTORCH_NPU_ALLOC_CONF=expandable_segments:True
export STREAMS_PER_DEVICE=32
export HCCL_BUFFERSIZE=1536
export HCCL_OP_EXPANSION_MODE=AIV

ASCEND_RT_VISIBLE_DEVICES=0,1,2,3 python -m sglang.launch_server \
	--device npu \
	--attention-backend ascend \
	--trust-remote-code \
	--tp-size 4 \
	--model-path /data/ascend-ci-share-pkking-sglang/modelscope/hub/models/Qwen/Qwen3-32B \
	--host 127.0.0.1 \
	--port 30111 \
        --mem-fraction-static 0.8 \
	--chunked-prefill-size -1 \
	--enable-mixed-chunk \
	--max-running-requests 4 \
	--log-level debug \
	--disable-radix-cache
