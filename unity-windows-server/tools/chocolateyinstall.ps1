$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0a9195b3d453/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.7f1.exe'
$checksum64     = '9d45a781bf23b13fdf3a65d2ab5a931811ef71cf5a8e14f7ed5a93234cf14f10'

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
