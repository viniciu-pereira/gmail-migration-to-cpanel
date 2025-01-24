# Gmail Migration Guide with IMAPSync

This tutorial provides instructions for performing email migration using IMAPSync.

## Steps to Configure Your Gmail Account

### 1. Access Your Google Account
1. Open your browser and go to: [https://myaccount.google.com/](https://myaccount.google.com/).
2. Log in with the Gmail account you want to migrate the emails from.

### 2. Enable Two-Step Verification
1. Click on **Security** in the left menu.
2. In the "How you sign in to Google" section, look for **Two-step verification** and click on it.
3. Set up two-step verification:
   - Click **Get Started**.
   - Confirm your password.
   - Follow the instructions to enable it.

### 3. Generate an App Password
1. While still on the **Security** page, search for “app passwords”.
2. Click on **App passwords** (you may need to enter your password again).
3. On the page displayed:
   - In the **Select app** field, choose **Other**.
   - Enter a name, such as "migration".
   - Click **Generate**.
4. Note down or copy the 16-character password generated.

**Example:** `abcd efgh ijkl mnop`

### 4. Enable IMAP Access in Gmail
1. Access Gmail at [https://mail.google.com](https://mail.google.com).
2. Click the gear icon in the upper right corner.
3. Choose **See all settings**.
4. Go to the **Forwarding and POP/IMAP** tab:
   - Enable the **Enable IMAP** and **Enable POP** options.
   - Click **Save Changes**.

## Installing and Configuring IMAPSync

### 1. Download IMAPSync
Download IMAPSync from the official website: [https://imapsync.lamiral.info/](https://imapsync.lamiral.info/).

### 2. Configure the Script
1. Grant permission to the `.sh` file.
2. Change the server in the `.sh` file and the users in the `user.txt` file.
3. Execute the process with the command `./file.sh`.
