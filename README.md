# fido2-tests

Test suite for FIDO2, U2F, and other security key functions

# Setup

Need python 3.6+.

`make venv` and `source venv/bin/activate`

Or simply `pip3 install --user -r requirements.txt`

# Running the tests

Run all FIDO2, U2F, and HID tests:

```
pytest tests/standard
```

Run vendor/model specific tests:

```
pytest tests/vendor
```

# Running against simulation

To run tests against a "simulation" build of the Solo authenticator, supply the `--sim` option.

```
pytest --sim tests/standard
```

