$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.5.1f1.exe'
$checksum       = 'e96cbccebb03412b79dfef87b84577803bf70df877fcfb8f0439dfe843349d5b'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
