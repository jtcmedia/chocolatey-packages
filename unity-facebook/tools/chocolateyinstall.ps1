$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ffa3a7a2dd7d/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.1.4f1.exe'
$checksum64     = '3351ad34fc1006cafe33a2f276fab3e11fc0ced8d10102fba6515f5e3941a57c'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
