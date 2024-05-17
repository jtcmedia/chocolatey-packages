$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c36be92430b9/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.2f1.exe'
$checksum64     = '3a19b7cfebf2d1422df2c7b56f37e05867d88936fe65212ce2df844ceae70265'

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
