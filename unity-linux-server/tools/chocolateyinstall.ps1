$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6b6e9fc2adda/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.22f1.exe'
$checksum64     = 'eb1607bda76222516e6d6cb57062739e7911c76072a1dd37ae513daa072df597'

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
