$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1490908003ac/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.9f1.exe'
$checksum64     = '4b98a2d5748baa94bc9666333fc32bfce0c220a5e23f55266f44bfe582dffdae'

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
