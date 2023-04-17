$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/213b516bf396/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.23f1.exe'
$checksum64     = 'beed5a83cb473157ed443bcff72e2faf9ed4116fd9930e0ce67dd4e6527631e2'

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
