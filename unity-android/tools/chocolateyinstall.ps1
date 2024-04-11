$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/334eb2a0b267/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.24f1.exe'
$checksum64     = '461fe087e5f26ce7fff167006b14cff77adf30c853c4a60d7eaa9f6edb970fc6'

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
