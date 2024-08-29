$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3ae09b9f03c/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.44f1.exe'
$checksum64     = 'e5d0d2e3d25c0393d9c6bcbe542b3e739b73dd69e06b354316eb5517fdb27d81'

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
