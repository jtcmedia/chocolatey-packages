$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/660cd1701bd5/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.45f1.exe'
$checksum64     = '049fcb40d641baf53da44fad17de115a6ee8618a14ab8a9873a9a5b840c148a0'

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
