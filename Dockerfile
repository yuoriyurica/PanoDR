FROM nvcr.io/nvidia/pytorch:20.08-py3

WORKDIR /workspace

RUN mkdir Structured3D

RUN mkdir structure_semantics

COPY PanoDR PanoDR
RUN pip install -e PanoDR/src/utils
RUN pip install git+https://github.com/S-aiueo32/lpips-pytorch.git