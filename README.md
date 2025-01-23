# DNS-Digger

DNS-Digger is a simple command-line tool for performing DNS record lookups. It can fetch the following DNS records:
- A (Address) Record
- MX (Mail Exchange) Record
- TXT (Text) Record
- NS (Name Server) Record
- DMARC (Domain-based Message Authentication, Reporting, and Conformance)
- SPF (Sender Policy Framework)
- DNSSEC (DNS Security Extensions)
- WHOIS Information

## Features:
- Fetch DNS records for a domain.
- Perform WHOIS lookups.
- Check DMARC and SPF records.
- Support for multiple DNS record types (A, MX, TXT, etc.).

## Prerequisites:
This tool uses `nslookup` and `whois` command-line utilities:
- `nslookup` should be available on your system (usually pre-installed).
- `whois` (external program) is required for WHOIS lookups.

## Installation:
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/DNS-Digger.git
   ```bash
2. Make sure nslookup and whois are installed and available in your system's PATH.
3. If you're using whois, make sure to download the appropriate executable for your platform:
  Whois for Windows
  On Linux/Mac, you can install whois via the package manager:
  Ubuntu/Debian: sudo apt-get install whois
  Mac: brew install whois

Supported Commands:
A Record: Displays the IP address associated with a domain.
MX Record: Shows the mail servers for the domain.
TXT Record: Retrieves the domain's TXT records.
NS Record: Shows the domain's name servers.
DMARC: Checks the DMARC record for the domain.
SPF: Checks the SPF record for the domain.
DNSSEC: Verifies DNSSEC status for the domain.
WHOIS: Retrieves WHOIS information about the domain.

Usage:
Open Command Prompt (Windows) or Terminal (Mac/Linux). Navigate to the folder containing the batch script. Run the script and choose the DNS record type you'd like to look up:
   ```bash
dns-digger.bat
   ```bash
You will be prompted to enter a domain name, and the script will return the requested DNS records and WHOIS information.

Contributing:
Feel free to fork the project, create a pull request, or open issues for any feature requests or bugs. Contributions are always welcome!
