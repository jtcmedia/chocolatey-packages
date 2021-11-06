$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c20c6d589440/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.1f1.exe'
$checksum64     = 'bcc4349821ca05c8a9c98e938932748d504278560ed43b4b4c4569354564fc12'

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
