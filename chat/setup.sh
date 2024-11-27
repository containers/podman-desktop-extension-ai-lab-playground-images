git clone https://github.com/abetlen/llama-cpp-python --no-checkout --recurse-submodules
cd llama-cpp-python
git checkout v0.3.2
git submodule update
git fetch origin pull/1552/head
git rebase ffc47e5a95cf31fe6d9d6d7953d5eb17fdcc8513
