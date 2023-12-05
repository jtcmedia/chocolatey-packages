$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dfe9eb92cac5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.2f1.exe'
$checksum64     = '6c16dd5c123221a6bc8be844bf8c4ba9d15b56ae8e06ed7428e264abdd380267'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
