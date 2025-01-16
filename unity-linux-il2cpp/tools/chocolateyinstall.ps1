$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ab2d9ed9190/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.34f1.exe'
$checksum64     = 'bae4b513574a0d029bd7dc1f85dc8394a5d6f66353bc6263d571d38de4f988cc'

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
