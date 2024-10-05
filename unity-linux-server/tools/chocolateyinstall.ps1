$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/001fa5a8e29a/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.22f1.exe'
$checksum64     = 'ece325259585b95240d91161a759446f6deb61a93f2879e99f93006a2238b515'

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
