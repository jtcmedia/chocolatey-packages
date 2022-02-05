$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ee872746220e/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.10f1.exe'
$checksum64     = '4af8b23c54317f6f5875dddf9467081ebd71902439838f8182c1e122a874f429'

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
