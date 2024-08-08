$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0f988161febf/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.41f1.exe'
$checksum64     = '14126e09357ea30a1acd0bda94a829babd33993a92519492ba0ef70cad59e2d8'

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
