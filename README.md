# Overview

paperwallet-d is a cryptocurrency paper wallet generator written in D.  It is intended to easily support multiple currencies, as there currently are no multi-currency paper wallet generators out there.  Also, a key goal is to make sure this code is secure and reviewed so that it can be trusted for the sensitive nature of creating a secure way to store crytpocurrency.

## References

- Recreating this in D is a goal: https://github.com/matthiaszimmermann/ethereum-paper-wallet

## Design

We like the original design of the ethereum paper wallet.  It is broken up into the following packages:

- QRCode generator (relies on com.google.zxing)
- File Utility (could be dropped or do something similar to Apache File utils)
- HTML Utility (generates the wallet in HTML)
- Paper Wallet Utility (constructs the Ethereum client pieces needed as input into the HTML Utility)
- Passphrase Utility (Some passphrase specific handling)
- Wallet Page Utility (Brings together all of the elements to generate the wallet)
- Application (main entry point)

What we don't like:
- generating HTML from Java.  Programmers are great at code.  Designers are not.  It is a very challenging approach to use to not use a templating language to spit out HTML.  It's much easier to use a templating engine to spit out HTML.  This allows us to work with real desigers who don't "do" code.
- the web3j library is used heavily.  However, it does a huge lift in terms of effort to handle Ethereum transactions and protocol related items.  We can't easily incorporate web3j as an ETH client library, however we can use ethereum-cpp as a starting point and wrap them for D.



## TODO

- initial commits
- project plan
- Implement a QR Code Generator (base on the QR Code generator from https://www.nayuki.io/page/qr-code-generator-library)
- Implement an d-ethereum code base (this seems like a big project)
- Find some helpers

## General Notes

Conceptually we have a good grasp of the project.  I already did some pull requests on the original paperwallet for Ethereum.  What is difficult is there is no existing code base in D for Web4j (Ethereum client).  This is a ton of work.  I don't know anyone who wants to tackle this or who has time.  The QR Code generator seems more reasonable, however, we still need to implement a rasterizer to generate the bytes, presumably this can be done through some bytes to PNG converter.
