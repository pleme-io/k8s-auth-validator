{
  description = "CLI tool to validate Kubernetes authentication configuration against Akeyless";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    substrate = {
      url = "github:pleme-io/substrate";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs: (import "${inputs.substrate}/lib/repo-flake.nix" {
    inherit (inputs) nixpkgs flake-utils;
  }) {
    self = inputs.self;
    language = "go";
    builder = "tool";
    pname = "k8s-auth-validator";
    vendorHash = "sha256-PJ6MrKN0SmSHQRdfiaKW0jDgXqCvc58ITzUTLlr4tYY=";
    description = "CLI tool to validate Kubernetes authentication configuration against Akeyless";
    homepage = "https://github.com/pleme-io/k8s-auth-validator";
  };
}
