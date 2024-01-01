FROM ghcr.io/coreweave/ml-containers/torch:es-22.04-3ce72cc-base-cuda12.2.2-torch2.1.2-vision0.16.2-audio2.1.2

# Define a volume to mount the current directory
VOLUME /host_folder

# Set the working directory to the current directory
WORKDIR /host_folder

COPY . /host_folder

RUN python -m pip install --upgrade --no-cache-dir pip

# Install any necessary tools or packages (if needed)
RUN python -m pip install --no-cache-dir poetry transformers datasets tiktoken wandb tqdm triton 

CMD ["/bin/bash"]

