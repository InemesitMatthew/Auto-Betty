
```markdown
# AUTO-BETTY - Betty Style Checker Script

## Overview

This project provides a Bash script that automates the process of checking and formatting your C code to comply with the Betty coding style guidelines. Betty is a popular coding style checker for C programming.

## Requirements

Before using this script, make sure you have the following requirements installed:

- [Betty Style Checker](https://github.com/holbertonschool/Betty): Ensure that you have Betty's style guidelines and checker installed on your system.

## Installation

To install and set up Auto Betty for global use within your environment, follow these steps:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/InemesitMatthew/auto-betty.git
   ```


2. Navigate to the Auto-Betty directory:

   ```bash
   cd Auto-Betty/
   cd autoBetty/
   ```

3. Run the installation script:

   ```bash
   ./installAutoBetty.sh
   ```

   This script will automatically search for and install `auto_betty.sh`, making it globally accessible within your environment.

## Usage

To use Auto Betty for formatting your C code, open your terminal and run:

```bash
auto_betty <filename>
```

Replace `<filename>` with the name of the C source file you want to format. Auto Betty will automatically apply the required formatting according to Betty's style guidelines.

Please note that this script provides basic automatic fixes for common style issues. It may not address all issues, especially those related to function length. Manual code refactoring may be necessary for such cases.

Always make sure to back up your code before running automated formatting scripts, as they can potentially introduce unintended changes.

Review and customize the sed commands in the script to match your coding style and Betty's specific recommendations.

## License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.

## Acknowledgments

- Betty Style Checker for providing a valuable tool for enforcing coding style guidelines in C programming.
