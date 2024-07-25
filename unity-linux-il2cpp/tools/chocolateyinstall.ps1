$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e1b0f82c39a/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.39f1.exe'
$checksum64     = '95ee7eeb60014ffb5b0d7805d71d144e83c1a2d7d1b2319398fea3193591a47f'

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
