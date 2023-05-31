$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4907324dc95b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.21f1.exe'
$checksum64     = '7a7cfa7c13776d0ca5d6a93647a3e061fc0499c2225b69b438a9f7e98978b085'

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
