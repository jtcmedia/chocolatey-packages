$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bbf64de26e34/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.2.18f1.exe'
$checksum64     = 'ba6c564cf6baf7efb68db12066a509d51ade024b8da6ca09ec995262764a553c'

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
