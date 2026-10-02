$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/12bfff696524/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.4f1.exe'
$checksum64     = '4f3aef1f224dc83cf54a4ee3b6b9ebdea805498aeb6a6f67e95427aa42812e18'

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
