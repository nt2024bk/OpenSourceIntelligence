
---

### 4. **Social Media Profile Search Script: `profile_search.sh`**

This script uses `googlesearch-python` to search for social media profiles associated with a given name or alias.

#### Script: `profile_search.sh`
```bash
#!/bin/bash
# profile_search.sh
# Description: Performs a Google search for social media profiles associated with a name.
# Author: [Your Name]
# Version: 1.0

NAME="$1"

if [ -z "$NAME" ]; then
    echo "[ERROR] No name provided. Usage: ./profile_search.sh <name>"
    exit 1
fi

echo "[INFO] Searching for social media profiles of: $NAME"
python3 -m googlesearch "$NAME" > "profile_search_results.txt"

echo "[INFO] Profile search results saved to profile_search_results.txt"
