$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2ada23e432bd/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.0b8.exe'
$checksum64     = '28ba50001eef22bb048f42080e9e10e699256487837830506267106260e5c182'

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
