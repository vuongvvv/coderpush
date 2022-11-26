## Steps to run

- Install docker
- Clone the repository
- docker run --shm-size=1g -v {full path to the repo folder}:/opt/robotframework/tests:Z -e BROWSER=chrome vuongvvv/robot-framework-real-browser:latest /opt/robotframework/bin/run-tests-in-virtual-screen.sh

Example: docker run --shm-size=1g -v /Users/vuongvietvan/Documents/GitHub/coderpush:/opt/robotframework/tests:Z -e BROWSER=chrome vuongvvv/robot-framework-real-browser:latest /opt/robotframework/bin/run-tests-in-virtual-screen.sh

- [Demo video. Please check google drive link](https://drive.google.com/file/d/19nVu3YJa4NRytiJWC0CL1VRY14XCptQc/view?usp=share_link)