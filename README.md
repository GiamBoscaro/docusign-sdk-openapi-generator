# DocuSign SDK OpenAPI Generator

This package is used to generate the Flutter code for the DocuSign APIs from its *Swagger API Specs*.

## Generate Code

To generate the API code follow these instructions:

1. Copy the Swagger or OpenAPI spec file in the `lib/specs` folder.
2. Define the new API to be generated in the `lib/docusign_flutter_sdk_generator.dart`
3. Run the `build_runner`:

```shell
flutter pub run build_runner build --delete-conflicting-outputs
```

The generated code will be found on `lib/out` folder.

### Fix

Some changes are needed to make the generated code work correctly:

* Replace all `@dart=2.12` with `@dart=2.17`
* Replace all `openapi.api` with `it.docusign.sdk.esignature`
* Replace all `BCCEmail` with `BccEmail`
* Replace all `List<DateTime>` with `List<ModelDate>`
* Replace all `DateTime.listFromJson` with `ModelDate.listFromJson`

### Notes

* `offlineAttributes`: the definition of this object was missing and has been added manually based on
the examples seen at the and of the api spec file.

## Author

Giammarco Boscaro <giammarco.boscaro@tutanota.com>

## References

1. [DocuSign Official OpenAPI Specs](https://github.com/docusign/OpenAPI-Specifications)