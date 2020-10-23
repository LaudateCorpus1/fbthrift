/**
 * Autogenerated by Thrift for src/module.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include <thrift/lib/cpp2/gen/module_metadata_h.h>
#include "thrift/compiler/test/fixtures/sink/gen-cpp2/module_types.h"

namespace cpp2 {
class SinkServiceSvIf;
} // namespace cpp2

namespace apache {
namespace thrift {
namespace detail {
namespace md {

template <>
class StructMetadata<::cpp2::InitialResponse> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class StructMetadata<::cpp2::FinalResponse> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class StructMetadata<::cpp2::SinkPayload> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class StructMetadata<::cpp2::CompatibleWithKeywordSink> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class StructMetadata<::cpp2::InitialException> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class StructMetadata<::cpp2::SinkException1> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class StructMetadata<::cpp2::SinkException2> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class ExceptionMetadata<::cpp2::InitialException> {
 public:
  static void gen(ThriftMetadata& metadata);
};
template <>
class ExceptionMetadata<::cpp2::SinkException1> {
 public:
  static void gen(ThriftMetadata& metadata);
};
template <>
class ExceptionMetadata<::cpp2::SinkException2> {
 public:
  static void gen(ThriftMetadata& metadata);
};
template <>
class ServiceMetadata<::cpp2::SinkServiceSvIf> {
 public:
  static void gen(ThriftMetadata& metadata, ThriftServiceContext& context);
 private:
  static void gen_method(ThriftMetadata& metadata, ThriftService& context);
  static void gen_methodAndReponse(ThriftMetadata& metadata, ThriftService& context);
  static void gen_methodThrow(ThriftMetadata& metadata, ThriftService& context);
  static void gen_methodSinkThrow(ThriftMetadata& metadata, ThriftService& context);
  static void gen_methodFinalThrow(ThriftMetadata& metadata, ThriftService& context);
  static void gen_methodBothThrow(ThriftMetadata& metadata, ThriftService& context);
  static void gen_methodFast(ThriftMetadata& metadata, ThriftService& context);
};
} // namespace md
} // namespace detail
} // namespace thrift
} // namespace apache
