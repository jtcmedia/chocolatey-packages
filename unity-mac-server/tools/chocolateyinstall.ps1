$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3bd4f66ad299/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.10f1.exe'
$checksum64     = '446aa6712a9b3776835fc3ce3e72a940717f11f4f2628ef99e1178a8e4f78fa6'

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
