$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4dae1bb8668d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.49f1.exe'
$checksum64     = '80376676afb83d496ce49200059019aea630d7a7a3cc63139473116434279bae'

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
