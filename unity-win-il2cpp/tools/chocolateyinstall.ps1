$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/316c1fd686f6/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.10f1.exe'
$checksum64     = 'ab65d7265156880edf6f46497f1d4c76327ae0ba53e5f446ee21434e3cc02d99'

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
