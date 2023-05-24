# Parameter Efficient Finetuning Example

This folder is supposed to be a simple, minimal example of how to use huggingface's Parameter Efficient Fine Tuning [(PEFT)](https://github.com/huggingface/peft) library to finetune the recently released [RedPajama](https://www.together.xyz/blog/redpajama-models-v1) Model.

Parameter efficient fine tuning methods are a series of techniques that allow us to finetune a model without needing to finetune all of the models parameters. By finetuning just a subset of the model's parameters we greatly reduce the computational costs for training otherwise large scale models

In this repo we demonstrate using LoRA [Low Rank Adapation of Large Language Models](https://arxiv.org/abs/2106.09685) on the 3B parameter RedPajama Instruct Model.

## Setup

[![](https://uohmivykqgnnbiouffke.supabase.co/storage/v1/object/public/landingpage/createdevenv2.svg)](https://console.brev.dev/environment/new?os=5snmxykkz&us=oit0rfks&repo=https://github.com/theFong/AnythingButWrappers&instance=g4dn.xlarge&diskStorage=250Gi&region=us-west-2)
Nvidia T4 ~ 2hrs ($1.50) to fine tune

[![](https://uohmivykqgnnbiouffke.supabase.co/storage/v1/object/public/landingpage/createdevenv2.svg)](https://console.brev.dev/environment/new?os=5snmxykkz&us=oit0rfks&repo=https://github.com/theFong/AnythingButWrappers&instance=g5.xlarge&diskStorage=250Gi&region=us-west-2)
Nvidia A10G ~ 45min (total $0.90) to fine tune

[![](https://uohmivykqgnnbiouffke.supabase.co/storage/v1/object/public/landingpage/createdevenv2.svg)](https://console.brev.dev/environment/new?os=5snmxykkz&us=oit0rfks&repo=https://github.com/theFong/AnythingButWrappers&instance=a2-highgpu-1g&diskStorage=250Gi&region=us-west1&image=https://www.googleapis.com/compute/v1/projects/brevdevprod/zones/us-west1-b/disks/anythingbutwrappers-a100-inst-2qatbhrmtv13tqwsvfwbgupcsrk)
Nvidia A100 ~ 45min (total $3.37) to fine tune

Once in the machine run:
`cog run bash`

## Training

To finetune the model, within your cog shell run `CUDA_SET_VISIBLE_DEVICES=0 python train.py`

For this example, we're going to be training on a dataset of shortes path between U.S Cities.
The dataset looks something like this

```
{
    "input": "What is the shortest path between Antelope:CA and Merced:CA?\n"
    "output: "Antelope:CA', 'Merced:CA', 'Antelope:CA', 'Galt:CA', 'Oakdale:CA', 'Merced:CA"

}
```

Please take a look at [train.py]() for training details!

## Inference

To run inference, within your cog shell run `python inference_example.py`
