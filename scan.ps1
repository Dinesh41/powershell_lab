 
param(
[Parameter( Mandatory=$true,
            HelpMessage="File Path is needed")]
[string]$path,

[Parameter( Mandatory=$true,
            HelpMessage="Pattern needed")]
[string]$pattern
)
$content=get-content $path
if($content -like $pattern)
{
 Write-Host("Given text found!")
}
else{
Write-Host("Given text doesn't exit found!")
}
