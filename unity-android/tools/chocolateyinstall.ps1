$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cbdda657d2f0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.40f1.exe'
$checksum64     = 'b7d23a126c92f3fafcfe94c1133635487c4b9e94d20eb4971ac563bcfbd07034'

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
