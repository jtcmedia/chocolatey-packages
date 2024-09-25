$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/94d194ca434d/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.44f1.exe'
$checksum64     = '78e927dc53a468695530727dc7b78949d082ca3057806d31de6e7c1143386452'

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
