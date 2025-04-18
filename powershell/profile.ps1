<#
## .SYNOPSIS Powershell Profile
#>


<#
## Variables
#>

$CFG = "$env:USERPROFILE/.cfg"
$0X  = "$env:USERPROFILE/0x"
$WS  = "<workspace_dir>"


<#
## Functions
#>

# ..


<#
## Scripts
#>

$scripts @(
    "$CFG/scripts/cmd-in-powershell/commands-profile.ps1"
)

foreach ($scr in $scripts) {
    if (Test-Path $scr) { . $scr }
}


<#
## Alias
#>

# function <alias_func>
# {
#     <cmd> [opt] <args>
# }
# Set-Alias <alias> <alias_func>


<#
## Appearence
#>

# Set-PSReadLineOption -Colors @{
#   Command            = "$([char]0x1b)[91m"
#   Number             = "$([char]0x1b)[97m"
#   Member             = "$([char]0x1b)[97m"
#   Operator           = "$([char]0x1b)[93m"
#   Type               = "$([char]0x1b)[93m"
#   Variable           = "$([char]0x1b)[92m"
#   Parameter          = "$([char]0x1b)[93m"
#   ContinuationPrompt = "$([char]0x1b)[97m"
#   Default            = "$([char]0x1b)[97m"
# }


<#
## EOF
#>

cls
Write-Host ":LOADED:" -ForegroundColor Green

