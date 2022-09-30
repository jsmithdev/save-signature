# Save Signature

## Save a user's signature in Salesforce

See [signature-pad](https://github.com/jsmithdev/signature-pad) for more about using the pad, the underlying library, etc

![screenshot](https://i.imgur.com/Bv99fIg.png)

## Usage

Add to a record page

## License

Released under the [MIT License](http://www.opensource.org/licenses/MIT)

# SFDX Deploy

Covert with SFDX; This creates a folder called `deploy`

```bash
sfdx force:source:convert -r force-app -d deploy
```

Now you can deploy from the resulting `deploy` directory

```bash
sfdx force:mdapi:deploy -d deploy -w -1 --verbose
```

📌 Above deploys to the default org set

- Add -u user@domain.com or -u alias to deploy else where
- To run tests add -l RunSpecifiedTests -r ApexTestName

Results should more or less mirror below

```bash
Using specified username me(a)jsmith.dev

Job ID | 0Af1U000015XR14SAG
MDAPI PROGRESS | ████████████████████████████████████████ | 10/10 Components

TYPE FILE NAME ID
──────────────────────── ──────────────────────────────────── ────────────────────────── ──────────────────
deploy/package.xml package.xml
ExampleClass deploy/classes/Example.cls Example 01p1U00000QWibCQAT
```

---

coded while petting a 🐶 by [Jamie Smith](https://jsmith.dev)
