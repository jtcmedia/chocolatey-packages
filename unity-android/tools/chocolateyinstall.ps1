$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fd6670bb8be9/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.39f1.exe'
$checksum64     = 'c59cf3425454859ada197b7a9212129e64704b91047b0de096623e8c6d6b7036'

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
