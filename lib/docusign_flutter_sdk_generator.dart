// Copyright 2022 Giammarco Boscaro. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library docusign_flutter_sdk_generator;

import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: AdditionalProperties(
    pubName: 'docusign_esignature_flutter_sdk',
    pubAuthor: 'Giammarco Boscaro',
  ),
  inputSpecFile: 'lib/specs/esignature.rest.swagger-v2.1.json',
  generatorName: Generator.dart,
  apiPackage: "it.docusign.sdk.esignature",
  outputDirectory: 'lib/esignature-sdk',
  overwriteExistingFiles: false,
  alwaysRun: false,
)
class DocuSignEsignatureApi extends OpenapiGeneratorConfig {}
