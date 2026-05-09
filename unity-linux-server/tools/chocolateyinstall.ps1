$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1aa84e375f6/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.3.15f1.exe'
$checksum64     = '3da41ba11b0fa8d493217dfe8e5fc0053dfe77d66b887d94b6a3ec491977b6ee'

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
