:: Action Center Disable
:: Disables ActionCenter and ActionCenterCPL
::
@ECHO OFF

SC stop wscsvc
SC config wscsvc start=disabled

TAKEOWN /F "%SystemRoot%\system32\ActionCenter.dll"
ICACLS "%SystemRoot%\system32\ActionCenter.dll" /grant :r administrators:F
REN "%SystemRoot%\system32\ActionCenter.dll" ActionCenter.bak

TAKEOWN /F "%SystemRoot%\system32\ActionCenterCPL.dll"
ICACLS "%SystemRoot%\system32\ActionCenterCPL.dll" /grant :r administrators:F
REN "%SystemRoot%\system32\ActionCenterCPL.dll" ActionCenterCPL.bak

ECHO Operations completed.
PAUSE > NUL