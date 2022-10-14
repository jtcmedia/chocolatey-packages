$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/01d83b40d570/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.20f1.exe'
$checksum64     = '031f9c18344dbe70348da360d6171a31d2a05927238aa13bab8501ebae474e6b'

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
