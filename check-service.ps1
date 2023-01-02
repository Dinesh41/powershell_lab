 
param(
[Parameter( Mandatory=$true,
            HelpMessage="Service name is needed")]
[string]$serviceName
)
try{
    $service=get-service $serviceName
    if($service.Status -ne "Running")
    {
        Write-Output("Starting the service")
        Start-Service $serviceName
        $service=get-service $serviceName
        if($service.Status -eq "Running"){
            Write-Output("Service started")
        }
        else{
            Write-Output("Not able to start the service")
        }

    }
    else {
     Write-Output("Service is already running")
    }
}
catch{
    Write-Error $_ -ErrorAction Stop
}
finally{
    Write-Output("Script Ended")
}

