# Check Security

Adding known root cloakers and packages is the most effective way of root detection. However, it is recommended to add detection for su and busybox for weaker rooting software packages.

Adding busybox as a detection method does enhance the root detection slightly, but is insufficient as a security measure. Most of the rooting software will have a workaround for both the su and busybox detection methods. 

A robust root detection method has been implemented. The isRooted() method, however, is never called. Please note that these are best-effort measures. It is nearly impossible to detect all possible rooting software. It is nonetheless still important to limit the amount of active rooted users as much as possible.

Checking for both known root cloakers and known root packages will detect the more advanced rooting software. Using su and busybox will detect the less advanced rooting software. Root detection should be performed during app initialisation. Please note that these are best-effort measured. It is nearly impossible to detect all possible rooting software. It is nonetheless crucial to limit the amount of active rooted users as much as possible.


## Secure Actions

**Clean up by-pass**

Leaving in a bypass method meant for development in production makes the code susceptible to abuse by adversaries.
