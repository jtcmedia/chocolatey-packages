$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a16dc32e0ff2/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.26f1.exe'
$checksum64     = '8c8a793d3ead24b7068829bbd1f3386bad09601110df81327fdb378d2c7f9b99'

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
