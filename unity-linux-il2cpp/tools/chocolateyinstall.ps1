$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eeca29774eb5/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.14f1.exe'
$checksum64     = 'fa57f6964d3e810054f6f6b25fcdd0afd7fae4f0378f9d176e75927154bb6383'

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
