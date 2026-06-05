$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf0352b38e81/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.3.17f1.exe'
$checksum64     = '93194db516f865e163a04dfba27dca1a9e18a970d7e8398b56c0f9260f89dad7'

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
