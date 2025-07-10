$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9b156bbbd4df/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.1.11f1.exe'
$checksum64     = 'a0478823e9344526bcc483483be8549e56e34f1b99265463b039fd91f701d01c'

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
