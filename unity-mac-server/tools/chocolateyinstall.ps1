$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95c298372b1e/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.19f1.exe'
$checksum64     = '1817316d2ccf90ffc9dd2973baf777e233c7f84427474ed0329624f0c53546c4'

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
