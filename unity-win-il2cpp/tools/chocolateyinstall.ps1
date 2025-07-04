$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf6d2d083ec9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.0b8.exe'
$checksum64     = '57ae30ae4a0235d9439321ed4cdc017993364c5009e1a2838be19f7074bb9a3b'

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
