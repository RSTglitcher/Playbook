# Secure by Design

## Backups

When an application allows creating backups, it's subject to a backup exploit. This backup exploit can be executed on non-rooted devices. 
The exploit allows an adversary to modify or inject code into the application.

When explicitly setting the allowBackup to false the potential backup exploit will be completely prevented. It's good practice to put the allowBackup attribute to false when creating a new project.


## Autofill

When deleting the method call users would have to authenticate themselves. However, an adversary could reverse engineer the app thus niticing the bypass method. An adversary could abuse the method to gain unauthorized access to the platform.

When using a self-made boolean to control developer features, the application could be exposed to code tampering. The compiler will include the bypass methods into the production APK file. This way an adversary could exploit the existing bypass methods and gain unauthorized acces to the platform.

Code which is written under the BuildConfig.DEBUG boolean isn't compiled when building the production APK file. This will prevent an adversary to abuse the autofill method. However, the correct configuration of your build settings is very important.