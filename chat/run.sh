#!/bin/bash
#
# Copyright (C) 2024 Red Hat, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0
if [ ${CONFIG_PATH} ] || [[ ${MODEL_PATH} && ${CONFIG_PATH} ]]; then
    python -m llama_cpp.server --config_file ${CONFIG_PATH}
    exit 0
fi

if [ ${MODEL_PATH} ]; then
    python -m llama_cpp.server --model ${MODEL_PATH} --host ${HOST:=0.0.0.0} --port ${PORT:=8001} --n_gpu_layers ${GPU_LAYERS:=0} --clip_model_path ${CLIP_MODEL_PATH:=None} --chat_format ${CHAT_FORMAT:="llama-2"}
    exit 0
fi

echo "Please set either a CONFIG_PATH or a MODEL_PATH"
exit 1