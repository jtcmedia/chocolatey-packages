$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cbdda657d2f0/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.40f1.exe'
$checksum64     = 'cf9ca18ebcf19f5cc20a4d5a0c6fac0f0a3b513847538a5324c1feeb8c9fe669'

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
