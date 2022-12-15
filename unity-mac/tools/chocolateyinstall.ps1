$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4fead5835099/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.1f1.exe'
$checksum64     = 'ff4e21f71cd9d376682af95955203a47c117d5beab552e62881b75db1b6b06f8'

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
