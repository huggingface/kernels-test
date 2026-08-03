{
  description = "Flake for TPU ReLU kernel";

  inputs = {
    kernel-builder.url = "github:huggingface/kernels/tpu";
  };

  outputs =
    {
      self,
      kernel-builder,
    }:
    kernel-builder.lib.genKernelFlakeOutputs {
      inherit self;
      path = ./.;
    };
}
