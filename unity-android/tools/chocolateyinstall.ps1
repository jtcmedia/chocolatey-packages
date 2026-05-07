$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/81a3023a9d59/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.5.0b6.exe'
$checksum64     = '4ed9201644ec324d20da241f82fa1236394087e3035b0d4adc84e94641599d45'

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
