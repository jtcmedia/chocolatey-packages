$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/40eb3a945986/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.3.5f1.exe'
$checksum64     = 'c59e005c36109f19af96b6f7903471353d0999d0c733598cd3b6c0c39378b086'

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
