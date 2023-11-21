$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d0d63d039a6f/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.0f1.exe'
$checksum64     = '8d5bf32ab3de0b2e5ae0474fcae307c379d6093cef776a4fadff8b4881451ec0'

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
