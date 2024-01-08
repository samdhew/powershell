# Specify the file containing IP addresses
# Set-Location 'C:\files'
# $files = Get-ChildItem -Name -Include *.txt
$files = 'ips.txt'

# Loop through each file
foreach ($file in $files) {
    # Display a message indicating the start of reading the file
    Write-Host("Start Reading file: $file")

    # Loop through each line in the file
    foreach ($line in Get-Content $file) {
        # Display the current IP address being processed
        Write-Host($line)

        # Try to ping the IP address using Test-Connection
        try {
            # Use Test-Connection to ping the IP address, specifying Count and catching any errors
            $result = Test-Connection -ComputerName $line -Count 4 -ErrorAction Stop

            # Display a formatted table with ping results (Address, ResponseTime, StatusCode)
            Write-Host("Ping Results:")
            $result | Format-Table Address, ResponseTime, StatusCode -AutoSize
        } catch {
            # Display an error message if the ping fails
            Write-Host("Failed to ping $line. Error: $_")
        }

        # Display a new line for better readability
        Write-Host("`n")
    }

    # Display a message indicating the end of reading the file
    Write-Host("End Reading file: $file")
}
