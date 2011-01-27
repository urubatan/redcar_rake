Plugin.define do
  name    "redcar_rake"
  version "0.1b"
  file    "lib", "redcar_rake"
  object  "Redcar::RedcarRake"
  dependencies "redcar", ">0"
end