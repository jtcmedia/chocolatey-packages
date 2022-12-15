$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4fead5835099/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.1f1.exe'
$checksum64     = '6eb749189b06e27061f9d0a38900e576ddeebe2a82617b0a251eec47b1c165c3'

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
