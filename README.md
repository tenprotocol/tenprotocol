# Threat Exposure Notification Protocol

## Introduction

The Threat Exposure Notification Protocol defines a HTTP- and JSON-based protocol for uploading and querying diagnosis
keys collected by devices.  This protocol does not specify how contacts or exposures are collected, as there are other
protocols for that such as those from Google/Apple and TCN Protocol.

## The Specification

The specification is available in [draft-yates-threat-exposure-notification-protocol-00.txt](draft-yates-threat-exposure-notification-protocol-00.txt) [TXT]
or [draft-yates-threat-exposure-notification-protocol-00.html](draft-yates-threat-exposure-notification-protocol-00.html) [HTML].

## Contributing

We intend for this specification to be an open standard and welcome other contributors and collaborators to ensure the
protocol is as widely usable as possible.

Start by creating an Issue in this GitHub repository, where we can discuss any change proposal.

Changes can be made by creating a Pull Request and modifying `draft-yates-threat-exposure-notification-protocol-00.xml`
(note do not edit the html and txt files as they are generated files). The Makefile should be used to regenerate the
html and txt files and include those updates in the Pull Request. You must have the `xml2rfc` tool installed.
