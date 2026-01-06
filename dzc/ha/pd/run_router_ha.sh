unset ASCEND_LAUNCH_BLOCKING
#source /usr/local/Ascend/ascend-toolkit/set_env.sh
#source /usr/local/Ascend/nnal/atb/set_env.sh
#source /usr/local/Ascend/ascend-toolkit/latest/opp/vendors/customize/bin/set_env.bash
#export ASCEND_HOME_PATH=/usr/local/Ascend/ascend-toolkit/latest
export ASCEND_MF_STORE_URL="tcp://192.168.0.60:24667"
export HCCL_SOCKET_IFNAME="enp23s0f3"
export GLOO_SOCKET_IFNAME="enp23s0f3"

 python -m sglang_router.launch_router \
	--decode http://192.168.0.60:30003 \
	--prefill http://192.168.0.60:30000 8998 \
       	--prefill http://192.168.0.60:30001 8999 \
	--pd-disaggregation \
	--policy round_robin \
	--host 192.168.0.60 \
	--port 6699 \
       	--health-failure-threshold 2 --health-success-threshold 2 --health-check-timeout-secs 30 --health-check-interval-secs 15
  # --worker-urls http://192.168.0.60:30000 http://192.168.0.60:30001 http://192.168.0.60:30003 \
