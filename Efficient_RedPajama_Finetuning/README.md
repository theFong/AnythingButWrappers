# Parameter Efficient Finetuning Example

This folder is supposed to be a simple, minimal example of how to use huggingface's Parameter Efficient Fine Tuning [(PEFT)](https://github.com/huggingface/peft) library to finetune the recently released [RedPajama](https://www.together.xyz/blog/redpajama-models-v1) Model.

Parameter efficient fine tuning methods are a series of techniques that allow us to finetune a model without needing to finetune all of the models parameters. By finetuning just a subset of the model's parameters we greatly reduce the computational costs for training otherwise large scale models

In this repo we demonstrate using LoRA [Low Rank Adapation of Large Language Models](https://arxiv.org/abs/2106.09685) on the 3B parameter RedPajama Instruct Model.

## Training

Nvidia T4 ~ 2hrs ($1.50) to fine tune
Nvidia A10G ~ 45min (total $0.90) to fine tune
Nvidia A100 ~ 45min (total $3.37) to fine tune

To run finetuning `cog run python train.py`

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

`python inference_example.py`
