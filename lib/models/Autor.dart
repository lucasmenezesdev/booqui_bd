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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Autor type in your schema. */
@immutable
class Autor extends Model {
  static const classType = const _AutorModelType();
  final String id;
  final String? _nome;
  final String? _sobre;
  final TemporalDateTime? _dataNascimento;
  final String? _urlImagem;
  final List<ObraAutor>? _obras;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get nome {
    try {
      return _nome!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get sobre {
    try {
      return _sobre!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get dataNascimento {
    return _dataNascimento;
  }
  
  String? get urlImagem {
    return _urlImagem;
  }
  
  List<ObraAutor>? get obras {
    return _obras;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Autor._internal({required this.id, required nome, required sobre, dataNascimento, urlImagem, obras, createdAt, updatedAt}): _nome = nome, _sobre = sobre, _dataNascimento = dataNascimento, _urlImagem = urlImagem, _obras = obras, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Autor({String? id, required String nome, required String sobre, TemporalDateTime? dataNascimento, String? urlImagem, List<ObraAutor>? obras}) {
    return Autor._internal(
      id: id == null ? UUID.getUUID() : id,
      nome: nome,
      sobre: sobre,
      dataNascimento: dataNascimento,
      urlImagem: urlImagem,
      obras: obras != null ? List<ObraAutor>.unmodifiable(obras) : obras);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Autor &&
      id == other.id &&
      _nome == other._nome &&
      _sobre == other._sobre &&
      _dataNascimento == other._dataNascimento &&
      _urlImagem == other._urlImagem &&
      DeepCollectionEquality().equals(_obras, other._obras);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Autor {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("nome=" + "$_nome" + ", ");
    buffer.write("sobre=" + "$_sobre" + ", ");
    buffer.write("dataNascimento=" + (_dataNascimento != null ? _dataNascimento!.format() : "null") + ", ");
    buffer.write("urlImagem=" + "$_urlImagem" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Autor copyWith({String? id, String? nome, String? sobre, TemporalDateTime? dataNascimento, String? urlImagem, List<ObraAutor>? obras}) {
    return Autor._internal(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      sobre: sobre ?? this.sobre,
      dataNascimento: dataNascimento ?? this.dataNascimento,
      urlImagem: urlImagem ?? this.urlImagem,
      obras: obras ?? this.obras);
  }
  
  Autor.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _nome = json['nome'],
      _sobre = json['sobre'],
      _dataNascimento = json['dataNascimento'] != null ? TemporalDateTime.fromString(json['dataNascimento']) : null,
      _urlImagem = json['urlImagem'],
      _obras = json['obras'] is List
        ? (json['obras'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ObraAutor.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'nome': _nome, 'sobre': _sobre, 'dataNascimento': _dataNascimento?.format(), 'urlImagem': _urlImagem, 'obras': _obras?.map((ObraAutor? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'nome': _nome, 'sobre': _sobre, 'dataNascimento': _dataNascimento, 'urlImagem': _urlImagem, 'obras': _obras, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NOME = QueryField(fieldName: "nome");
  static final QueryField SOBRE = QueryField(fieldName: "sobre");
  static final QueryField DATANASCIMENTO = QueryField(fieldName: "dataNascimento");
  static final QueryField URLIMAGEM = QueryField(fieldName: "urlImagem");
  static final QueryField OBRAS = QueryField(
    fieldName: "obras",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ObraAutor).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Autor";
    modelSchemaDefinition.pluralName = "Autors";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Autor.NOME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Autor.SOBRE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Autor.DATANASCIMENTO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Autor.URLIMAGEM,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Autor.OBRAS,
      isRequired: false,
      ofModelName: (ObraAutor).toString(),
      associatedKey: ObraAutor.AUTOR
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

class _AutorModelType extends ModelType<Autor> {
  const _AutorModelType();
  
  @override
  Autor fromJson(Map<String, dynamic> jsonData) {
    return Autor.fromJson(jsonData);
  }
}