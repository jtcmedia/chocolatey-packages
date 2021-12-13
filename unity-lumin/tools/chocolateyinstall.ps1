$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8c4e826ba445/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.2.6f1.exe'
$checksum64     = '0e7d0a671b9740931ee8e4823192ba943bd5cb43f74a0c750b687d9b89755096'

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
