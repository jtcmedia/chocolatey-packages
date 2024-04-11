$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/334eb2a0b267/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.24f1.exe'
$checksum64     = '7cbea8ea5bd5cff9cc19f9239191605c35c4f43a70aaa45f06eefad3b601d6af'

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
