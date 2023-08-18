$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f3f94c8cdc49/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.9f1.exe'
$checksum64     = 'aba91d0eef64184ddc5592e68ac8f32b980c8638beb6eb7172fe012dc93a3c52'

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
