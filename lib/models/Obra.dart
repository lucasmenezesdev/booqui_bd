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


/** This is an auto generated class representing the Obra type in your schema. */
@immutable
class Obra extends Model {
  static const classType = const _ObraModelType();
  final String id;
  final String? _titulo;
  final String? _descrica;
  final String? _linguagem;
  final int? _curtidas;
  final int? _downloads;
  final int? _numComentarios;
  final List<ObraAutor>? _autores;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get titulo {
    try {
      return _titulo!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get descrica {
    try {
      return _descrica!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get linguagem {
    try {
      return _linguagem!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get curtidas {
    try {
      return _curtidas!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get downloads {
    try {
      return _downloads!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get numComentarios {
    try {
      return _numComentarios!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<ObraAutor>? get autores {
    return _autores;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Obra._internal({required this.id, required titulo, required descrica, required linguagem, required curtidas, required downloads, required numComentarios, autores, createdAt, updatedAt}): _titulo = titulo, _descrica = descrica, _linguagem = linguagem, _curtidas = curtidas, _downloads = downloads, _numComentarios = numComentarios, _autores = autores, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Obra({String? id, required String titulo, required String descrica, required String linguagem, required int curtidas, required int downloads, required int numComentarios, List<ObraAutor>? autores}) {
    return Obra._internal(
      id: id == null ? UUID.getUUID() : id,
      titulo: titulo,
      descrica: descrica,
      linguagem: linguagem,
      curtidas: curtidas,
      downloads: downloads,
      numComentarios: numComentarios,
      autores: autores != null ? List<ObraAutor>.unmodifiable(autores) : autores);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Obra &&
      id == other.id &&
      _titulo == other._titulo &&
      _descrica == other._descrica &&
      _linguagem == other._linguagem &&
      _curtidas == other._curtidas &&
      _downloads == other._downloads &&
      _numComentarios == other._numComentarios &&
      DeepCollectionEquality().equals(_autores, other._autores);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Obra {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("titulo=" + "$_titulo" + ", ");
    buffer.write("descrica=" + "$_descrica" + ", ");
    buffer.write("linguagem=" + "$_linguagem" + ", ");
    buffer.write("curtidas=" + (_curtidas != null ? _curtidas!.toString() : "null") + ", ");
    buffer.write("downloads=" + (_downloads != null ? _downloads!.toString() : "null") + ", ");
    buffer.write("numComentarios=" + (_numComentarios != null ? _numComentarios!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Obra copyWith({String? id, String? titulo, String? descrica, String? linguagem, int? curtidas, int? downloads, int? numComentarios, List<ObraAutor>? autores}) {
    return Obra._internal(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      descrica: descrica ?? this.descrica,
      linguagem: linguagem ?? this.linguagem,
      curtidas: curtidas ?? this.curtidas,
      downloads: downloads ?? this.downloads,
      numComentarios: numComentarios ?? this.numComentarios,
      autores: autores ?? this.autores);
  }
  
  Obra.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _titulo = json['titulo'],
      _descrica = json['descrica'],
      _linguagem = json['linguagem'],
      _curtidas = (json['curtidas'] as num?)?.toInt(),
      _downloads = (json['downloads'] as num?)?.toInt(),
      _numComentarios = (json['numComentarios'] as num?)?.toInt(),
      _autores = json['autores'] is List
        ? (json['autores'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ObraAutor.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'titulo': _titulo, 'descrica': _descrica, 'linguagem': _linguagem, 'curtidas': _curtidas, 'downloads': _downloads, 'numComentarios': _numComentarios, 'autores': _autores?.map((ObraAutor? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'titulo': _titulo, 'descrica': _descrica, 'linguagem': _linguagem, 'curtidas': _curtidas, 'downloads': _downloads, 'numComentarios': _numComentarios, 'autores': _autores, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TITULO = QueryField(fieldName: "titulo");
  static final QueryField DESCRICA = QueryField(fieldName: "descrica");
  static final QueryField LINGUAGEM = QueryField(fieldName: "linguagem");
  static final QueryField CURTIDAS = QueryField(fieldName: "curtidas");
  static final QueryField DOWNLOADS = QueryField(fieldName: "downloads");
  static final QueryField NUMCOMENTARIOS = QueryField(fieldName: "numComentarios");
  static final QueryField AUTORES = QueryField(
    fieldName: "autores",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ObraAutor).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Obra";
    modelSchemaDefinition.pluralName = "Obras";
    
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
      key: Obra.TITULO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Obra.DESCRICA,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Obra.LINGUAGEM,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Obra.CURTIDAS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Obra.DOWNLOADS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Obra.NUMCOMENTARIOS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Obra.AUTORES,
      isRequired: false,
      ofModelName: (ObraAutor).toString(),
      associatedKey: ObraAutor.OBRA
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

class _ObraModelType extends ModelType<Obra> {
  const _ObraModelType();
  
  @override
  Obra fromJson(Map<String, dynamic> jsonData) {
    return Obra.fromJson(jsonData);
  }
}