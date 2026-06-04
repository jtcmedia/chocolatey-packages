$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feeafc12a938/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.4.10f1.exe'
$checksum64     = '5b81c2034ffd63670d63fe0f19afd9f30934962c83f2be94d2268f7c379dec32'

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
