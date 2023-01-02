 
param(
[Parameter( Mandatory=$true,
            HelpMessage="File Path is needed")]
[string]$path,

[Parameter( Mandatory=$true,
            HelpMessage="Pattern needed")]
[string]$pattern
)
$content=get-content $path
$content -like $pattern