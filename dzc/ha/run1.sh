export SGLANG_SET_CPU_AFFINITY=1
export PYTORCH_NPU_ALLOC_CONF=expandable_segments:True
export STREAMS_PER_DEVICE=32

#export DEEP_NORMAL_MODE_USE_INT8_QUANT=1
export HCCL_BUFFSIZE=1536

#export SGLANG_NPU_USE_MLP

export HCCL_OP_EXPANSION_MODE=AIV
P_HOST_IP=('192.168.0.60' '192.168.0.234')
export ASCEND_MF_STORE_URL="tcp://192.168.0.60:30110"
export HCCL_SOCKET_IFNAME="enp23s0f3"
export GLOO_SOCKET_IFNAME="enp23s0f3"

#for i in "${!P_HOST_IP[@]}";
#do
 python -m sglang.launch_server \
	--host 192.168.0.60 \
 	--port 8001 \
	--attention-backend ascend \
	--device npu \
	--trust-remote-code \
	--tp-size 4 \
	--model-path /data/ascend-ci-share-pkking-sglang/modelscope/hub/models/Qwen/Qwen3-32B \
        --mem-fraction-static 0.78 \
	--disable-radix-cache 
#done
