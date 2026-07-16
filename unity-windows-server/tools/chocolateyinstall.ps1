$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2212ba80b59e/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.0b4.exe'
$checksum64     = 'c5a75093f47bc2c48585251999c403e9fc6edc8e93fb553c75e9037c18b48f59'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
