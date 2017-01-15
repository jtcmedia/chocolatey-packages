$ErrorActionPreference = 'Stop';

$packageName   = 'unity'
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32         = 'http://netstorage.unity3d.com/unity/38b4efef76f0/Windows32EditorInstaller/UnitySetup32-5.5.0f3.exe'
$url64         = 'http://netstorage.unity3d.com/unity/38b4efef76f0/Windows64EditorInstaller/UnitySetup64-5.5.0f3.exe'
$checksum32    = '63ba231501656aa3a733a2ca2d11a1ed755e52206a3a5aeb81407f1db0a30f2a'
$checksum64    = '34ed4e70d9f152fcc14e25aac816d237b542828490f7ad09579073734eb180e6'
$url_sa        = 'http://netstorage.unity3d.com/unity/38b4efef76f0/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.0f3.exe'
$checksum_sa   = 'c77681ae9612f956351ebd19a9cdac3990e02b0b6be566b3d8ec69c5f714fe15'
$url_ep        = 'http://netstorage.unity3d.com/unity/38b4efef76f0/WindowsExampleProjectInstaller/UnityExampleProjectSetup-5.5.0f3.exe'
$checksum_ep   = 'f6aa75ecdcf069f7ea3da5577e6709fcda4942622d9fc1e52a74bda392a3c3c7'
$url_docs      = 'http://netstorage.unity3d.com/unity/38b4efef76f0/WindowsDocumentationInstaller/UnityDocumentationSetup-5.5.0f3.exe'
$checksum_docs = '005995880702efa3e33c603783a64d394a4ed408a683b6eddb2ab8297453acde'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64
  softwareName  = 'Unity'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

$pp = Get-PackageParameters
if ($pp.StandardAssets) { Write-Host 'Param: The Standard Assets will be installed' }
if ($pp.ExampleProject) { Write-Host 'Param: The Example Project will be installed' }
if ($pp.Documentation) { Write-Host 'Param: Unity Documentation will be installed' }

if ($pp.StandardAssets) {
    Write-Host 'Installing Standard Assets...'
    
    $packageArgs = @{
        packageName   = $packageName
        fileType      = 'EXE'
        url           = $url_sa
        softwareName  = 'Unity'
        checksum      = $checksum_sa
        checksumType  = 'sha256'
        silentArgs   = '/S'
        validExitCodes= @(0)
    }
    
    Install-ChocolateyPackage @packageArgs
}

if ($pp.ExampleProject) {
    Write-Host 'Installing the Example Project...'
    
    $packageArgs = @{
        packageName   = $packageName
        fileType      = 'EXE'
        url           = $url_ep
        softwareName  = 'Unity'
        checksum      = $checksum_ep
        checksumType  = 'sha256'
        silentArgs   = '/S'
        validExitCodes= @(0)
    }
    
    Install-ChocolateyPackage @packageArgs
}

if ($pp.Documentation) {
    Write-Host 'Installing Documentation...'
    
    $packageArgs = @{
        packageName   = $packageName
        fileType      = 'EXE'
        url           = $url_docs
        softwareName  = 'Unity'
        checksum      = $checksum_docs
        checksumType  = 'sha256'
        silentArgs   = '/S'
        validExitCodes= @(0)
    }
    
    Install-ChocolateyPackage @packageArgs
}
