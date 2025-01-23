@echo off

echo ===============================
echo Welcome to the DNS Lookup Tool
echo          Emen Mousavi
echo ===============================
echo 1. A Record
echo 2. MX Record
echo 3. TXT Record
echo 4. CNAME Record
echo 5. NS Record
echo 6. DMARC Record
echo 7. SPF Record
echo 8. WHOIS Lookup
echo 9. DNSSEC Checker
echo ================================
set /p option=Choose a record type (1-5): 

:: Get domain input from user
set /p domain=Enter domain for DNS lookup (e.g., example.com): 

:: Perform nslookup based on user's record choice
if "%option%"=="1" (
    echo Performing A Record lookup for %domain%...
    nslookup -type=A %domain%
)

if "%option%"=="2" (
    echo Performing MX Record lookup for %domain%...
    nslookup -type=MX %domain%
)

if "%option%"=="3" (
    echo Performing TXT Record lookup for %domain%...
    nslookup -type=TXT %domain%
)

if "%option%"=="4" (
    echo Performing CNAME Record lookup for %domain%...
    nslookup -type=CNAME %domain%
)

if "%option%"=="5" (
    echo Performing NS Record lookup for %domain%...
    nslookup -type=NS %domain%
)

if "%option%"=="6" (
    echo Performing CNAME and TXT Record lookup for %domain%...

    :: DMARC lookup (automatically adding "_dmarc" to the domain)
    echo Performing DMARC lookup for _dmarc.%domain%...
    nslookup -type=TXT _dmarc.%domain%
)

if "%option%"=="7" (
    echo Performing SPF Record lookup for %domain%...
    nslookup -type=TXT %domain% | findstr /i "v=spf1"
)

if "%option%"=="8" (
    echo Performing CNAME + TXT + WHOIS + DMARC Lookup for %domain%...

    :: WHOIS lookup (with verbose output)
    echo Performing WHOIS lookup for %domain%...
    "C:\Users\moham\Downloads\ABDM\Programs\WhoIs\whois.exe" -v %domain%
)

if "%option%"=="9" (
    echo Performing DNSSEC Validation for %domain%...
    nslookup -type=DNSKEY %domain%
)

pause
