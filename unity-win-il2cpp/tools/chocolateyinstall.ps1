$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e9b8558c41a/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.46f1.exe'
$checksum64     = '1fd9f603590360f657e3cc7c0086fb76ba625d6abe29ddea5a9965b8202db23a'

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
