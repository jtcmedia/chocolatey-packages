$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f99f05b3e950/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.62f1.exe'
$checksum64     = '2836a1dd3b251086760a124b6ddc86520a9cea37e0005d449d4a4295a023597c'

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
