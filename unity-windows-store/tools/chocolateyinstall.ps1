$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/61c2feb0970d/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.20f1.exe'
$checksum64     = '0df4c692c70647288af6307b9eac1882da887c904d28919f4fb64a68903705ff'

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
