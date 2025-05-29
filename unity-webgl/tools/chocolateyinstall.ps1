$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4504a57e80f0/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.0b3.exe'
$checksum64     = 'd8e706ca1790774d88492cb4b2c8f0eedd96d12d508014af4fe5f565628102bf'

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
