git clone https://github.com/abetlen/llama-cpp-python --no-checkout --recurse-submodules
cd llama-cpp-python
git checkout v0.3.2
git submodule update
curl -O -L https://github.com/abetlen/llama-cpp-python/pull/1552.diff
git apply 1552.diff
