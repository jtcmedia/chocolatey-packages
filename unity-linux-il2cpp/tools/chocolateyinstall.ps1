$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e50cafbb4399/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.11f1.exe'
$checksum64     = 'aa95229ae53b4b35129324873e15cfbfd1ccbb9358ce669f19f41957203d8cc1'

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
