$ErrorActionPreference = 'Stop';

$packageName= 'nodejs-lts'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$installerFile = if ((Get-ProcessorBits 64) -and $env:chocolateyForceX86 -ne 'true') {
         Write-Host "Installing x64 bit version"; Get-Item "$toolsDir\*_x64.msi"
} else { Write-Host "Installing x32 bit version"; Get-Item "$toolsDir\*_x32.msi" }

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  file          = $installerFile
  softwareName  = 'Node.js'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs

# Don't need installers anymore
Remove-Item ($toolsDir + '\*.' + $packageArgs.fileType)