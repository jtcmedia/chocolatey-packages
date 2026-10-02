$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/12bfff696524/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.4f1.exe'
$checksum64     = '6e8e1d58840af48e695c20b5b890259d61f577cfad37a79a1556a7aa5ac8c607'

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
