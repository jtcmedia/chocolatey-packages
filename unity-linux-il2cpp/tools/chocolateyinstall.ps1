$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2d349551e475/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.17f1.exe'
$checksum64     = 'b8e9eede978f16c4a4fbd11fd0c4926fe650a53adfbbd8f4bf9bcf9b59671101'

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
