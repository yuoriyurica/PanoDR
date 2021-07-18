FROM nvcr.io/nvidia/pytorch:20.08-py3

WORKDIR /home/chaochen

RUN mkdir Structured3D
RUN mkdir Structured3D/train
RUN mkdir Structured3D/validation
RUN mkdir Structured3D/test

RUN mkdir structure_semantics
RUN mkdir structure_semantics/train
RUN mkdir structure_semantics/validation
RUN mkdir structure_semantics/test

COPY ../PanoDR .
RUN pip install -e PanoDR/src/utils
RUN pip install git+https://github.com/S-aiueo32/lpips-pytorch.git