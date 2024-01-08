# Set-Location 'C:\files'
# $files = Get-ChildItem -Name -Include *.txt

$files = 'hostnames.txt'

foreach ($file in $files) {
    Write-Host("Start Reading file: " + $file)
    foreach ($line in Get-Content $file) {
        Write-Host($line)
        $url = "http://$line:8000/api/resultview"
        
        try {
            $response = Invoke-WebRequest -Uri $url -Method Head
            $statusCode = $response.StatusCode
            Write-Host("HTTP Status Code: $statusCode")
        } catch {
            Write-Host("Failed to connect to $url. Error: $_")
        }

        Write-Host("`n")
    }
    Write-Host("End Reading file: " + $file)
}
