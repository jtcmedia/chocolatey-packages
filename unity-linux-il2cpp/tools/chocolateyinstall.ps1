$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7f159b6136da/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.44f1.exe'
$checksum64     = '42c47e871c4a3cc713707ce837157b7349d59be5ac0f89e2b34357bb78ffc4d3'

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
