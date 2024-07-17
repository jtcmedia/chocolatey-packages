$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5d5a7410213/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.38f1.exe'
$checksum64     = '5eb43009e96508414f6e99c04af1db59f3b1cfcac1cdee52eb99ba764c55f6a0'

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
