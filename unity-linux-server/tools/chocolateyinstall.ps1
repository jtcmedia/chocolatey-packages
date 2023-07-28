$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/964b2488c462/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.6f1.exe'
$checksum64     = '31fe5c71ddd8358bc17b18d2c3760b7bb2c6cf788675b273aa7becefeeb71996'

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
