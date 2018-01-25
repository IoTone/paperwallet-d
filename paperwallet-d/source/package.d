/**
#
#Copyright (c) 2018 IoTone, Inc. All rights reserved.
#
**/

module paperwalletd;

/*
- QRCode generator (relies on com.google.zxing)
- File Utility (could be dropped or do something similar to Apache File utils)
- HTML Utility (generates the wallet in HTML)
- Paper Wallet Utility (constructs the Ethereum client pieces needed as input into the HTML Utility)
- Passphrase Utility (Some passphrase specific handling)
- Wallet Page Utility (Brings together all of the elements to generate the wallet)
- Application (main entry point)
*/
public import paperwalletd.ethclient;
public import paperwalletd.ethwallet;
public import paperwalletd.htmlgen;