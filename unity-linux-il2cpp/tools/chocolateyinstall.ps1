$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2dcb6a0abc42/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.42f1.exe'
$checksum64     = '61d1427a4970d952e025a078d9003f940ef2e602b41e0543084318895e415f4c'

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
