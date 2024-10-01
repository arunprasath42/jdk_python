
#$ErrorActionPreference = 'Stop'; # stop on all errors
#Import-module -name D:\pkg\Chocolatey\helpers\chocolateyInstaller.psm1
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$fileLocation = Join-Path $toolsDir 'python-3.8.10-amd64.exe'

$packagename = 'python-3.8.10-amd64'

$packageArgs = @{
  packageName   = $packagename
  fileType      = 'EXE' #only one of these: exe, msi, msu
  file         = $fileLocation

  softwareName  = 'python-3.8.10-amd64*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  # EXE
  silentArgs    = '/passive InstallAllUsers=1 Include_launcher=1 InstallLauncherAllUsers=1 PrependPath=1' # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
