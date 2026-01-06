pip3 uninstall deep-ep
pip3 uninstall sgl-kernel-npu
export LD_LIBRARY_PATH=/usr/local/Ascend/ascend-toolkit/latest/runtime/lib64/stub:$LD_LIBRARY_PATH
source /usr/local/Ascend/ascend-toolkit/set_env.sh
cd /data/dzc/code/sgl-kernel-npu
bash build.sh
cd /data/dzc/code/sgl-kernel-npu/output
pip3 install deep_ep-1.0.0+3f61eab6.cann.8.3.rc1.b235-cp311-cp311-linux_aarch64.whl
pip3 install sgl_kernel_npu-0.1.0-cp311-cp311-linux_aarch64.whl
pip3 install torch_memory_saver-0.0.8-cp311-cp311-linux_aarch64.whl
