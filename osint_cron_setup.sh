
---

### 5. **Combined Cron Setup: `osint_cron_setup.sh`**

This script automates the setup of cron jobs for periodic OSINT data collection tasks.

#### Script: `osint_cron_setup.sh`
```bash
#!/bin/bash
# osint_cron_setup.sh
# Description: Automates the setup of cron jobs for OSINT data collection tasks.
# Author: [Your Name]
# Version: 1.0

(crontab -l 2>/dev/null; echo "0 0 * * * /path/to/ip_info.sh <IP>") | crontab -
(crontab -l 2>/dev/null; echo "0 0 * * * /path/to/domain_info.sh <domain>") | crontab -
(crontab -l 2>/dev/null; echo "0 0 * * * /path/to/social_search.sh <keyword>") | crontab -

echo "[INFO] Cron jobs set up successfully."
