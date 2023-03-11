$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bcebec703747/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.10f1.exe'
$checksum64     = 'eb36bc4a21cbee1dbc8ba3e23c3a5b06b0eca33695ca553c3fd57e6cded4019a'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
