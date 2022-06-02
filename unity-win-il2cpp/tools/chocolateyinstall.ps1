$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cedbfe38737/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.3f1.exe'
$checksum64     = '05f18c93b600e287f0a94cf9f8e8b3b1e75eca0b11e195417194ff528dc90dd8'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
