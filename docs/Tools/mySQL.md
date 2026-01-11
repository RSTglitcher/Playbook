---
title: "mySQL"
---

**1. Download MySQL Workbench**:

- Visit [MySQL Workbench Download Page](https://dev.mysql.com/downloads/workbench/).
- If you have an M1 MacBook, use the ARM download link.

**2. Port Forward from the `XXX` service to your laptop**

- Ensure you are connected to the VPN.
- Verify you are using the correct Kubernetes context by running:
    - `kubectx <context-name>`
- Run the following command to set up port forwarding:
    - `kubectl port-forward services/XXX` port:port
    - *Error from server (NotFound): services "gott-datahub-deps" not found*
- Leave this terminal window open and running in the background. You will need to repeat this step whenever you want to access the MySQL database.
- If you have issues, use:
  - `gcloud --project=XX-XX-XX container clusters get-credentials XX-XX --location XXX-XXXX`
- Close the MySQL container in Docker when switching instances

**3. Add a MySQL Connection in MySQL Workbench**

- Hostname: how do you find this out?
- Port: how do you find this out?
- Username: (same as DataHub username)
- Password: (same as DataHub password)
