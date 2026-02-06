This Repo will only consider Ubuntu as a relevant Linux Distro to manage by Intune.
Step by step to enroll Ubuntu manually to Intune:

1- Install Ubuntu

2- Download and install Microsoft Edge from here: 
https://www.microsoft.com/de-de/edge/download?form=MA13FJ
on this page select "Linux (.deb)"
run the downloaded .deb file to install Edge

Installing this will also add the source to apt so that we can update Edge easily via "sudo apt upgrade"

3- Download and Install the Microsoft Intune Portal App by following the steps outlined here: 
https://learn.microsoft.com/en-us/mem/intune/user-help/microsoft-intune-app-linux

4- restart your device

5- open the Intune app, and sign in with your organizations account. After sign in, the enrollment process starts. during this you might be prompted to configure other settings based on your compliance policies.

6- open Microsoft Edge and sign in with your organizations account. After you sign in, you can access your organization's resources, like internal websites and Microsoft 365 apps.