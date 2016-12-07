# Win7-SecurityCenterNuke
Get rid of that pesky Action/Security Center

The Action/Security Center is impossible to remove through normal means.  It is owned by the operating system itself and even administrators don't have permissions to modify it or even edit permissions.  This script fixes that issue.

Required:
- Only that you are logged on as an administrator.

What it does:
- Stops the Security Center service and sets its startup property to disabled.
- Forces ownership rights onto the current group.
- Modifies administrator permissions to grant full permissions.
- Renames `ActionCenter.dll` and `ActionCenterCPL.dll` by adding the `.BAK` suffix.

If you don't rename the files Windows has an amusing tendency to realize it's disabled and re-enable it.  Just an fyi.
