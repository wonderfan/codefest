# Unsloth

## models/rl.py

The main idea of the `unsloth/models/rl.py` file is to provide utilities and patches for integrating reinforcement learning (RL) models with the Unsloth framework. It includes functionalities for patching RL trainers, handling notebook progress tracking, and configuring models for optimized training and inference.

Key components and functionalities include:

1. **Imports**: The file imports various libraries and modules, including `torch`, `transformers`, and custom utilities from the Unsloth framework.
2. **`PatchRL` function**: This function patches RL trainers to integrate with Unsloth by modifying the model's generation process and handling specific configurations.
3. **Notebook Progress Tracking**: Functions like `NotebookProgressCallback_on_train_begin`, `NotebookProgressCallback_on_log`, and `NotebookTrainingTracker_write_line` are provided to handle progress tracking and logging within Jupyter notebooks.
4. **`_PatchRLStatistics` function**: This function patches the statistics output for RL algorithms to display metrics in notebooks.
5. **`get_trl_metrics` function**: This function retrieves metrics from RL trainers to be used for displaying training progress and statistics.
6. **`PatchRLStatistics` function**: This function orchestrates the patching of RL statistics for a specified algorithm.
7. **`_patch_trl_rl_trainers` function**: This function patches specific RL trainers to integrate with Unsloth and handle vLLM (Very Large Language Model) and PEFT (Parameter Efficient Fine-Tuning).
8. **`patch_trl_rl_trainers` function**: This function patches all RL trainers available in the `trl` (Transformers Reinforcement Learning) module.
9. **`PatchFastRL` function**: This function provides a high-level interface to patch RL trainers, integrate with Unsloth, and configure RL statistics for a specified algorithm.

Overall, the file serves as a comprehensive utility for managing and optimizing RL models within the Unsloth framework, providing functionalities for training, inference, and progress tracking in notebooks.

## models/vision.py

The main idea of the `unsloth/models/vision.py` file is to define utilities and classes for handling vision models within the Unsloth framework. It includes functionalities for loading pre-trained models, configuring models for specific tasks, and optimizing models for both inference and training.

Key components and functionalities include:

1. **Imports**: The file imports various libraries and modules, including `torch`, `transformers`, and custom utilities from the Unsloth framework.
2. **`_wrap_fast_inference` function**: This function wraps the inference process to handle specific data types and configurations for optimized inference.
3. **`FastBaseVisionModel` class**: This class provides static methods for:
   - Loading pre-trained models (`from_pretrained` method).
   - Configuring models with PEFT (Parameter Efficient Fine-Tuning) using LoRA (Low-Rank Adaptation) (`get_peft_model` method).
   - Patching models for PEFT (`patch_peft_model` method).
   - Preparing models for inference (`for_inference` method).
   - Preparing models for training (`for_training` method).
4. **Model configurations and optimizations**: The class methods handle various configurations and optimizations, such as:
   - Setting up model parameters and device mappings.
   - Applying quantization and gradient checkpointing.
   - Wrapping the model's generate function for optimized inference.
   - Adjusting tokenizers for padding and other settings.

Overall, the file serves as a comprehensive utility for managing vision models within the Unsloth framework, providing functionalities for pre-training, fine-tuning, inference, and training optimizations.
