
---

### 3. **Social Media Search Script: `social_search.sh`**

This script uses the `theHarvester` tool to search for emails, subdomains, and other publicly available information associated with a given domain or keyword.

#### Script: `social_search.sh`
```bash
#!/bin/bash
# social_search.sh
# Description: Performs a social media and OSINT search using theHarvester.
# Author: [Your Name]
# Version: 1.0

KEYWORD="$1"

if [ -z "$KEYWORD" ]; then
    echo "[ERROR] No keyword provided. Usage: ./social_search.sh <keyword>"
    exit 1
fi

echo "[INFO] Performing OSINT search for: $KEYWORD"
theharvester -d "$KEYWORD" -b all -l 100 -f "social_report.html"

echo "[INFO] Report saved to social_report.html"
