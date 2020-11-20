/**
 * Autogenerated by Thrift for src/module.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include "thrift/compiler/test/fixtures/frozen-struct/gen-cpp2/module_metadata.h"
#include <thrift/lib/cpp2/visitation/for_each.h>

namespace apache {
namespace thrift {
namespace detail {

template <>
struct ForEachField<::some::ns::ModuleA> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    f(0, static_cast<T&&>(t).i32Field_ref()...);
    f(1, static_cast<T&&>(t).strField_ref()...);
    f(2, static_cast<T&&>(t).listField_ref()...);
    f(3, static_cast<T&&>(t).mapField_ref()...);
    f(4, static_cast<T&&>(t).inclAField_ref()...);
    f(5, static_cast<T&&>(t).inclBField_ref()...);
  }
};

template <>
struct ForEachField<::some::ns::ModuleB> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    f(0, static_cast<T&&>(t).i32Field_ref()...);
    f(1, static_cast<T&&>(t).inclEnumB_ref()...);
  }
};
} // namespace detail
} // namespace thrift
} // namespace apache