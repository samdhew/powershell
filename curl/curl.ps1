# Specify the file containing hostnames
# Set-Location 'C:\files'
# $files = Get-ChildItem -Name -Include *.txt
$files = 'hostnames.txt'

# Loop through each file
foreach ($file in $files) {
    # Display a message indicating the start of reading the file
    Write-Host("Start Reading file: " + $file)
    
    # Loop through each line in the file
    foreach ($line in Get-Content $file) {
        # Display the current hostname being processed
        Write-Host($line)
        
        # Construct the URL using the current hostname
        $url = "http://$line:8000/api/resultview"
        
        try {
            # Use Invoke-WebRequest to make a HEAD request and retrieve the response
            $response = Invoke-WebRequest -Uri $url -Method Head
            
            # Extract the HTTP status code from the response object
            $statusCode = $response.StatusCode
            Write-Host("HTTP Status Code: $statusCode")
        } catch {
            # Display an error message if the connection fails
            Write-Host("Failed to connect to $url. Error: $_")
        }

        # Display a new line for better readability
        Write-Host("`n")
    }
    
    # Display a message indicating the end of reading the file
    Write-Host("End Reading file: " + $file)
}
