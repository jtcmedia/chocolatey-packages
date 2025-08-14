$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/67bef3276ff1/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.1.16f1.exe'
$checksum64     = '49598550bbb29ace817f73139dcfff708c28b53fe121817d0ee35fe3016ef7e7'

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
