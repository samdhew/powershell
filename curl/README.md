# PowerShell Hostname Checker

This PowerShell script reads hostnames from a specified file (`hostnames.txt`), constructs URLs using those hostnames, and makes HTTP HEAD requests to the specified URLs. The primary use case is to check the availability and obtain HTTP status codes from a list of hosts.

## Prerequisites

- PowerShell environment

## Usage

1. Ensure the `hostnames.txt` file contains one hostname per line.
2. Open a PowerShell terminal.
3. Navigate to the directory containing the script.
4. Execute the script by running:

    ```powershell
    .\CheckHealth.ps1
    ```

5. The script will display the status code for each HTTP request.

## Script Details

### Files

- `hostnames.txt`: Contains a list of hostnames, one per line.

### Script Logic

1. Loop through each file specified in the script.
2. For each line in the file, construct a URL using the hostname and make an HTTP HEAD request.
3. Display the HTTP status code for each request.
4. Provide error handling for failed connections.

## Customization

Feel free to modify the script to suit your specific requirements. You can adjust the filename, customize error handling, or add additional logic based on your use case.

## Notes

- The script uses `Invoke-WebRequest` for making HTTP requests.
- Ensure that PowerShell has the necessary permissions to make outbound HTTP requests.

Happy hostname checking!
