# Cirrus Solar
Initial starting point for adding the Cirrus Solar IoT demo to your Developer Edition org.

## Installation Instructions

1. Authenticate with your hub org (if not already done):
    ```
    sfdx force:auth:web:login -d -a myhuborg
    ```

1. Clone the northern-trail repository:
    ```
    git clone https://github.com/dschultz-mo/CirrusSolar.git
    cd CirrusSolar
    ```

1. Create a scratch org and provide it with an alias (cs):
    ```
    sfdx force:org:create -s -f config/project-scratch-def.json -a cs
    ```

1. Push the app to your scratch org:
    ```
    sfdx force:source:push
    ```

1. Open the scratch org:
    ```
    sfdx force:org:open
    ```



## Resources


## Description of Files and Directories
Platform Events:
* Tracker Event
* Inverter Event
* recordCDC

Fields:
* External_ID on the Asset object

Triggers (simply use a System.debug statement for User Debugging):
* TrackerEventTrigger
* InverterEventTrigger
* recordCDCEventTrigger

## Issues
* Note that as of this time, package manager does not support Context nor Orchestration so those artifacts are not included.

