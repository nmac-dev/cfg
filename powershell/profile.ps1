### Alias

# function example_alias_func
# {
#     <cmd> [opt] <args>
# }
# Set-Alias <name> example_alias_func

### Syntax

Set-PSReadLineOption -Colors @{
  Command            = "$([char]0x1b)[91m"
  Number             = "$([char]0x1b)[97m"
  Member             = "$([char]0x1b)[97m"
  Operator           = "$([char]0x1b)[93m"
  Type               = "$([char]0x1b)[93m"
  Variable           = "$([char]0x1b)[92m"
  Parameter          = "$([char]0x1b)[93m"
  ContinuationPrompt = "$([char]0x1b)[97m"
  Default            = "$([char]0x1b)[97m"
}
