$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55531d7fa82e/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.2.3f1.exe'
$checksum64     = 'e98fdb6a2961c03620faa10adc970599731bae9353c13b3d4080dded03709a9a'

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
