$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/923722cbbcfc/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.5f1.exe'
$checksum64     = '2294dd1904648ab3c7bcc0dde1991df33658df9e6bcb667d4f36f3a61aaa1f82'

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
