$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53d4abb44f07/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.0b7.exe'
$checksum64     = '9911aadf7b5b15d68119838aa3e8a8e3ed3ce935e69ac9a748e858fabe953f80'

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
