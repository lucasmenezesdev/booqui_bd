/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ObraAutor type in your schema. */
@immutable
class ObraAutor extends Model {
  static const classType = const _ObraAutorModelType();
  final String id;
  final Autor? _autor;
  final Obra? _obra;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  Autor get autor {
    try {
      return _autor!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Obra get obra {
    try {
      return _obra!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ObraAutor._internal({required this.id, required autor, required obra, createdAt, updatedAt}): _autor = autor, _obra = obra, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ObraAutor({String? id, required Autor autor, required Obra obra}) {
    return ObraAutor._internal(
      id: id == null ? UUID.getUUID() : id,
      autor: autor,
      obra: obra);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObraAutor &&
      id == other.id &&
      _autor == other._autor &&
      _obra == other._obra;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ObraAutor {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("autor=" + (_autor != null ? _autor!.toString() : "null") + ", ");
    buffer.write("obra=" + (_obra != null ? _obra!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ObraAutor copyWith({String? id, Autor? autor, Obra? obra}) {
    return ObraAutor._internal(
      id: id ?? this.id,
      autor: autor ?? this.autor,
      obra: obra ?? this.obra);
  }
  
  ObraAutor.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _autor = json['autor']?['serializedData'] != null
        ? Autor.fromJson(new Map<String, dynamic>.from(json['autor']['serializedData']))
        : null,
      _obra = json['obra']?['serializedData'] != null
        ? Obra.fromJson(new Map<String, dynamic>.from(json['obra']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'autor': _autor?.toJson(), 'obra': _obra?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'autor': _autor, 'obra': _obra, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField AUTOR = QueryField(
    fieldName: "autor",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Autor).toString()));
  static final QueryField OBRA = QueryField(
    fieldName: "obra",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Obra).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ObraAutor";
    modelSchemaDefinition.pluralName = "ObraAutors";
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["autorID"], name: "byAutor"),
      ModelIndex(fields: const ["obraID"], name: "byObra")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ObraAutor.AUTOR,
      isRequired: true,
      targetName: "autorID",
      ofModelName: (Autor).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ObraAutor.OBRA,
      isRequired: true,
      targetName: "obraID",
      ofModelName: (Obra).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ObraAutorModelType extends ModelType<ObraAutor> {
  const _ObraAutorModelType();
  
  @override
  ObraAutor fromJson(Map<String, dynamic> jsonData) {
    return ObraAutor.fromJson(jsonData);
  }
}