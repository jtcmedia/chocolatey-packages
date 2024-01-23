$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/57daeefc879b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.6f1.exe'
$checksum64     = 'e9028d3d787a6eff03ef66ab85066a6ef98f050f3e4b42dd45da26d7f43bcdc7'

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
