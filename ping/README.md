# PowerShell IP Pinger

This PowerShell script reads IP addresses from a specified file (`ips.txt`), pings each IP address using the `Test-Connection` cmdlet, and displays the results. The primary use case is to check the reachability and obtain ping statistics of a list of IP addresses.

## Prerequisites

- PowerShell environment

## Usage

1. Ensure the `ips.txt` file contains one IP address per line.
2. Open a PowerShell terminal.
3. Navigate to the directory containing the script.
4. Execute the script by running:

    ```powershell
    .\PingIPs.ps1
    ```

5. The script will ping each IP address and display ping results in a formatted table.

## Script Details

### Files

- `ips.txt`: Contains a list of IP addresses, one per line.

### Script Logic

1. Loop through each file specified in the script.
2. For each line in the file, ping the IP address using `Test-Connection` and display the ping results in a formatted table.
3. Provide error handling for failed pings.

## Customization

Feel free to modify the script to suit your specific requirements. You can adjust the filename, customize the display of ping results, or add additional logic based on your use case.

## Notes

- The script uses `Test-Connection` for checking the reachability of IP addresses.
- Ensure that PowerShell has the necessary permissions to execute the `Test-Connection` cmdlet.

Happy IP pinging!
