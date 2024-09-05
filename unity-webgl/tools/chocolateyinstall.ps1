$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a13dfa44d684/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.45f1.exe'
$checksum64     = '086fc91b215365704c6fb16a5c866e001b4c07273c5190856f194adcbab773ee'

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
