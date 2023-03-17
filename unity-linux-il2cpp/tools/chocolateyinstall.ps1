$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1b156197d683/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.21f1.exe'
$checksum64     = 'ffdd9a4d5ada77c4ad5cd1b5e3101581c83c3b1ee12235432183217b2aa9762c'

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
