# Build a Build Script

## Project Overview

In this project, a release script is created to copy certain files from a source directory into a build directory. The script ensures that files containing developer resources or private information are handled appropriately. The project involves several steps, each meticulously handled to ensure a clean and efficient build process.

## Steps

1. **Start the Script**: The script begins with adding a header to identify it as a bash script.
2. **Welcome Message**: A welcome message is printed to the console to notify the user that the build process is starting.
3. **Verify Changelog**: The script verifies that the user has updated `changelog.md` with the current release version. It reads the first line of the file to get the version number.
4. **Split the Version String**: The first line is split into an array to extract the version number.
5. **User Confirmation**: The user is prompted to confirm if they want to continue with the build process.
6. **Conditional Execution**: Based on the user's input, the script either continues or exits.
7. **Copy Files**: The script iterates over all files in the source directory. It copies all files except `secretinfo.md` to the build directory, informing the user about each action.
8. **List Build Directory**: The script changes to the build directory, lists its contents, and then changes back to the original directory. It notifies the user about the contents of the build directory, referencing the version.

## Conclusion
The script efficiently manages the build process by copying necessary files and excluding confidential information. It ensures that the user is informed and can confirm each step, making the build process transparent and controlled.

### Additional Ideas for Improvement
- Copy `secretinfo.md` but replace "42" with "XX".
- Enhance the script's character with more emojis or stylistic messages.

## Outputs

![image](https://github.com/user-attachments/assets/b5c18a7d-8ec8-457d-a030-438cf85183ea)
![image](https://github.com/user-attachments/assets/4d3feb2f-4af8-463c-8a25-b99c4ab85af3)


