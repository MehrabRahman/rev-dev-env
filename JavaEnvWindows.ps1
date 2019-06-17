# Powershell installation script for Chocolatey & Week 1 environment
# Run as Administrator, and have set `ExecutionPolicy` to AllSigned
# See https://chocolatey.org/install#install-with-powershellexe

Write-Output "Installing Chocolatey..."
Invoke-Expression ((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))

RefreshEnv

Write-Output "Installing CLI tools..."
cinst -y git.install
cinst -y adoptopenjdk8
cinst -y maven --ignore-dependencies

Write-Output "Installing editors & IDE..."
cinst -y notepadplusplus
cinst -y springtoolsuite 

RefreshEnv

Write-Host "Finished. Make sure you see output for the git, java, javac, and mvn commands."
