$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/99ba6aa4c552/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.4f1.exe'
$checksum64     = '7768fb6f5d3b733469fabe7ae4b082b00704f7908b01a642b4ff88117aab185d'

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
