$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5f859a4cfee5/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.2.11f1.exe'
$checksum64     = '06558584ab43cf7fc0866e2c5fa24513db637b1e196771ac8ae4682d48692c71'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
