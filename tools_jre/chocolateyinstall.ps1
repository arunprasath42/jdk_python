# Check if Java is already installed
$javaPath = Get-Command java.exe -ErrorAction SilentlyContinue

if (-Not $javaPath) {
    Write-Host "Installing Java Runtime Environment..."
    
    # Define the path to the installer
    $jreInstaller = Join-Path $PSScriptRoot "jre.exe" # Replace with correct installer file

    # Silent install
    Start-Process -FilePath $jreInstaller -ArgumentList "/s" -Wait
} else {
    Write-Host "Java is already installed. Skipping installation."
}
