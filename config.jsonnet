//-----------------------------------------------------------------------//
// args and funcs

local config = std.extVar("config");

local require(key, conf) =
  if std.objectHas(config, conf) then
    { [key]: config[conf] }
  else
    error "required field not found :" + conf;

local default(key, conf, default) =
  if std.objectHas(config, conf) then
    { [key]: config[conf] }
  else
    { [key]: default };

local optional(key, conf) =
  if std.objectHas(config, conf) then
    { [key]: config[conf] }
  else
    {};

//-----------------------------------------------------------------------//
// arguments

local L2GenesisBlockDeployConfig =
    require("l2GenesisBlockNonce", "l2GenesisBlockNonce")
    + default("l2GenesisBlockGasLimit", "l2GenesisBlockGasLimit", "0x1c9c380")  // 30_000_000
    + default("l2GenesisBlockDifficulty", "l2GenesisBlockDifficulty", "0x0")
    + optional("l2GenesisBlockMixHash", "l2GenesisBlockMixHash")
    + optional("l2GenesisBlockGasUsed", "l2GenesisBlockGasUsed");

local Args = {
    arg1: "Arg1",
    arg2: "Arg2",
};

local Args2 = {
    arg2: "Arg2",
    arg3: "Arg3",
};

//-----------------------------------------------------------------------//
// result

L2GenesisBlockDeployConfig
+ Args
+ Args2