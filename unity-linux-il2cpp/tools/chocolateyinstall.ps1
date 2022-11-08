$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9e7d58001ecf/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.13f1.exe'
$checksum64     = 'fcf3fcb09d19ff5ff1a482f02dd4198a4324c0d837a1c5117d50fdb3026b6633'

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
