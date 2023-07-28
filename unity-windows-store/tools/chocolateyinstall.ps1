$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/964b2488c462/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.6f1.exe'
$checksum64     = '79bd569460dedabcf536ed92889454c1f2d76830de3b63c1f6a2404bc90b031c'

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
