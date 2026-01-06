pip3 uninstall custom_ops
cd /data/dzc/code/cann-recipes-infer/ops/ascendc/output
./CANN-custom_ops--linux.aarch64.run --quiet --install-path=/usr/local/Ascend/ascend-toolkit/latest/opp
source /usr/local/Ascend/ascend-toolkit/latest/opp/vendors/customize/bin/set_env.bash
cd /data/dzc/code/cann-recipes-infer/ops/ascendc/torch_ops_extension/dist
pip3 install custom_ops-1.0-cp311-cp311-linux_aarch64.whl 
