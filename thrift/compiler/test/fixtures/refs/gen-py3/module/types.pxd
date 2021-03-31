#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libc.stdint cimport (
    int8_t as cint8_t,
    int16_t as cint16_t,
    int32_t as cint32_t,
    int64_t as cint64_t,
    uint32_t as cuint32_t,
)
from libcpp.string cimport string
from libcpp cimport bool as cbool, nullptr, nullptr_t
from cpython cimport bool as pbool
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.utility cimport move as cmove
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap, pair as cpair
from thrift.py3.exceptions cimport cTException
cimport folly.iobuf as _fbthrift_iobuf
cimport thrift.py3.exceptions
cimport thrift.py3.types
from thrift.py3.types cimport (
    bstring,
    bytes_to_string,
    field_ref as __field_ref,
    optional_field_ref as __optional_field_ref,
    required_field_ref as __required_field_ref,
)
from thrift.py3.common cimport (
    RpcOptions as __RpcOptions,
    Protocol as __Protocol,
    cThriftMetadata as __fbthrift_cThriftMetadata,
    MetadataBox as __MetadataBox,
)
from folly.optional cimport cOptional as __cOptional

cimport module.types_fields as _fbthrift_types_fields

cdef extern from "src/gen-py3/module/types.h":
  pass


cdef extern from "src/gen-cpp2/module_metadata.h" namespace "apache::thrift::detail::md":
    cdef cppclass EnumMetadata[T]:
        @staticmethod
        void gen(__fbthrift_cThriftMetadata &metadata)
cdef extern from "src/gen-cpp2/module_types.h" namespace "::cpp2":
    cdef cppclass cTypedEnum "::cpp2::TypedEnum":
        pass





cdef class TypedEnum(thrift.py3.types.CompiledEnum):
    pass

cdef extern from "src/gen-cpp2/module_metadata.h" namespace "apache::thrift::detail::md":
    cdef cppclass ExceptionMetadata[T]:
        @staticmethod
        void gen(__fbthrift_cThriftMetadata &metadata)
cdef extern from "src/gen-cpp2/module_metadata.h" namespace "apache::thrift::detail::md":
    cdef cppclass StructMetadata[T]:
        @staticmethod
        void gen(__fbthrift_cThriftMetadata &metadata)
cdef extern from "src/gen-cpp2/module_types_custom_protocol.h" namespace "::cpp2":
    cdef enum cMyUnion__type "::cpp2::MyUnion::Type":
        cMyUnion__type___EMPTY__ "::cpp2::MyUnion::Type::__EMPTY__",
        cMyUnion__type_anInteger "::cpp2::MyUnion::Type::anInteger",
        cMyUnion__type_aString "::cpp2::MyUnion::Type::aString",

    cdef cppclass cMyUnion "::cpp2::MyUnion":
        cMyUnion() except +
        cMyUnion(const cMyUnion&) except +
        bint operator==(cMyUnion&)
        bint operator!=(cMyUnion&)
        bint operator<(cMyUnion&)
        bint operator>(cMyUnion&)
        bint operator<=(cMyUnion&)
        bint operator>=(cMyUnion&)
        cMyUnion__type getType() const
        const cint32_t& get_anInteger() const
        cint32_t& set_anInteger(const cint32_t&)
        const string& get_aString() const
        string& set_aString(const string&)

    cdef cppclass cMyField__isset "::cpp2::MyField::__isset":
        bint opt_value
        bint value
        bint req_value

    cdef cppclass cMyField "::cpp2::MyField":
        cMyField() except +
        cMyField(const cMyField&) except +
        bint operator==(cMyField&)
        bint operator!=(cMyField&)
        bint operator<(cMyField&)
        bint operator>(cMyField&)
        bint operator<=(cMyField&)
        bint operator>=(cMyField&)
        __optional_field_ref[cint64_t] opt_value_ref()
        __field_ref[cint64_t] value_ref()
        __required_field_ref[cint64_t] req_value_ref()
        cint64_t opt_value
        cint64_t value
        cint64_t req_value
        cMyField__isset __isset

    cdef cppclass cMyStruct__isset "::cpp2::MyStruct::__isset":
        bint opt_ref
        bint ref
        bint req_ref

    cdef cppclass cMyStruct "::cpp2::MyStruct":
        cMyStruct() except +
        cMyStruct(const cMyStruct&) except +
        bint operator==(cMyStruct&)
        bint operator!=(cMyStruct&)
        bint operator<(cMyStruct&)
        bint operator>(cMyStruct&)
        bint operator<=(cMyStruct&)
        bint operator>=(cMyStruct&)
        unique_ptr[cMyField] opt_ref
        unique_ptr[cMyField] ref
        unique_ptr[cMyField] req_ref
        cMyStruct__isset __isset

    cdef cppclass cStructWithUnion__isset "::cpp2::StructWithUnion::__isset":
        bint u
        bint aDouble
        bint f

    cdef cppclass cStructWithUnion "::cpp2::StructWithUnion":
        cStructWithUnion() except +
        cStructWithUnion(const cStructWithUnion&) except +
        bint operator==(cStructWithUnion&)
        bint operator!=(cStructWithUnion&)
        bint operator<(cStructWithUnion&)
        bint operator>(cStructWithUnion&)
        bint operator<=(cStructWithUnion&)
        bint operator>=(cStructWithUnion&)
        __field_ref[double] aDouble_ref()
        __field_ref[cMyField] f_ref()
        unique_ptr[cMyUnion] u
        double aDouble
        cMyField f
        cStructWithUnion__isset __isset

    cdef cppclass cRecursiveStruct__isset "::cpp2::RecursiveStruct::__isset":
        bint mes

    cdef cppclass cRecursiveStruct "::cpp2::RecursiveStruct":
        cRecursiveStruct() except +
        cRecursiveStruct(const cRecursiveStruct&) except +
        bint operator==(cRecursiveStruct&)
        bint operator!=(cRecursiveStruct&)
        bint operator<(cRecursiveStruct&)
        bint operator>(cRecursiveStruct&)
        bint operator<=(cRecursiveStruct&)
        bint operator>=(cRecursiveStruct&)
        __optional_field_ref[vector[cRecursiveStruct]] mes_ref()
        vector[cRecursiveStruct] mes
        cRecursiveStruct__isset __isset

    cdef cppclass cStructWithContainers__isset "::cpp2::StructWithContainers::__isset":
        bint list_ref
        bint set_ref
        bint map_ref
        bint list_ref_unique
        bint set_ref_shared
        bint list_ref_shared_const

    cdef cppclass cStructWithContainers "::cpp2::StructWithContainers":
        cStructWithContainers() except +
        cStructWithContainers(const cStructWithContainers&) except +
        bint operator==(cStructWithContainers&)
        bint operator!=(cStructWithContainers&)
        bint operator<(cStructWithContainers&)
        bint operator>(cStructWithContainers&)
        bint operator<=(cStructWithContainers&)
        bint operator>=(cStructWithContainers&)
        unique_ptr[vector[cint32_t]] list_ref
        unique_ptr[cset[cint32_t]] set_ref
        unique_ptr[cmap[cint32_t,cint32_t]] map_ref
        unique_ptr[vector[cint32_t]] list_ref_unique
        shared_ptr[cset[cint32_t]] set_ref_shared
        shared_ptr[const vector[cint32_t]] list_ref_shared_const
        cStructWithContainers__isset __isset

    cdef cppclass cStructWithSharedConst__isset "::cpp2::StructWithSharedConst::__isset":
        bint opt_shared_const
        bint shared_const
        bint req_shared_const

    cdef cppclass cStructWithSharedConst "::cpp2::StructWithSharedConst":
        cStructWithSharedConst() except +
        cStructWithSharedConst(const cStructWithSharedConst&) except +
        bint operator==(cStructWithSharedConst&)
        bint operator!=(cStructWithSharedConst&)
        bint operator<(cStructWithSharedConst&)
        bint operator>(cStructWithSharedConst&)
        bint operator<=(cStructWithSharedConst&)
        bint operator>=(cStructWithSharedConst&)
        shared_ptr[const cMyField] opt_shared_const
        shared_ptr[const cMyField] shared_const
        shared_ptr[const cMyField] req_shared_const
        cStructWithSharedConst__isset __isset

    cdef cppclass cEmpty__isset "::cpp2::Empty::__isset":
        pass

    cdef cppclass cEmpty "::cpp2::Empty":
        cEmpty() except +
        cEmpty(const cEmpty&) except +
        bint operator==(cEmpty&)
        bint operator!=(cEmpty&)
        bint operator<(cEmpty&)
        bint operator>(cEmpty&)
        bint operator<=(cEmpty&)
        bint operator>=(cEmpty&)
        cEmpty__isset __isset

    cdef cppclass cStructWithRef__isset "::cpp2::StructWithRef::__isset":
        bint def_field
        bint opt_field
        bint req_field

    cdef cppclass cStructWithRef "::cpp2::StructWithRef":
        cStructWithRef() except +
        cStructWithRef(const cStructWithRef&) except +
        bint operator==(cStructWithRef&)
        bint operator!=(cStructWithRef&)
        bint operator<(cStructWithRef&)
        bint operator>(cStructWithRef&)
        bint operator<=(cStructWithRef&)
        bint operator>=(cStructWithRef&)
        unique_ptr[cEmpty] def_field
        unique_ptr[cEmpty] opt_field
        unique_ptr[cEmpty] req_field
        cStructWithRef__isset __isset

    cdef cppclass cStructWithRefTypeUnique__isset "::cpp2::StructWithRefTypeUnique::__isset":
        bint def_field
        bint opt_field
        bint req_field

    cdef cppclass cStructWithRefTypeUnique "::cpp2::StructWithRefTypeUnique":
        cStructWithRefTypeUnique() except +
        cStructWithRefTypeUnique(const cStructWithRefTypeUnique&) except +
        bint operator==(cStructWithRefTypeUnique&)
        bint operator!=(cStructWithRefTypeUnique&)
        bint operator<(cStructWithRefTypeUnique&)
        bint operator>(cStructWithRefTypeUnique&)
        bint operator<=(cStructWithRefTypeUnique&)
        bint operator>=(cStructWithRefTypeUnique&)
        unique_ptr[cEmpty] def_field
        unique_ptr[cEmpty] opt_field
        unique_ptr[cEmpty] req_field
        cStructWithRefTypeUnique__isset __isset

    cdef cppclass cStructWithRefTypeShared__isset "::cpp2::StructWithRefTypeShared::__isset":
        bint def_field
        bint opt_field
        bint req_field

    cdef cppclass cStructWithRefTypeShared "::cpp2::StructWithRefTypeShared":
        cStructWithRefTypeShared() except +
        cStructWithRefTypeShared(const cStructWithRefTypeShared&) except +
        bint operator==(cStructWithRefTypeShared&)
        bint operator!=(cStructWithRefTypeShared&)
        bint operator<(cStructWithRefTypeShared&)
        bint operator>(cStructWithRefTypeShared&)
        bint operator<=(cStructWithRefTypeShared&)
        bint operator>=(cStructWithRefTypeShared&)
        shared_ptr[cEmpty] def_field
        shared_ptr[cEmpty] opt_field
        shared_ptr[cEmpty] req_field
        cStructWithRefTypeShared__isset __isset

    cdef cppclass cStructWithRefTypeSharedConst__isset "::cpp2::StructWithRefTypeSharedConst::__isset":
        bint def_field
        bint opt_field
        bint req_field

    cdef cppclass cStructWithRefTypeSharedConst "::cpp2::StructWithRefTypeSharedConst":
        cStructWithRefTypeSharedConst() except +
        cStructWithRefTypeSharedConst(const cStructWithRefTypeSharedConst&) except +
        bint operator==(cStructWithRefTypeSharedConst&)
        bint operator!=(cStructWithRefTypeSharedConst&)
        bint operator<(cStructWithRefTypeSharedConst&)
        bint operator>(cStructWithRefTypeSharedConst&)
        bint operator<=(cStructWithRefTypeSharedConst&)
        bint operator>=(cStructWithRefTypeSharedConst&)
        shared_ptr[const cEmpty] def_field
        shared_ptr[const cEmpty] opt_field
        shared_ptr[const cEmpty] req_field
        cStructWithRefTypeSharedConst__isset __isset

    cdef cppclass cStructWithRefAndAnnotCppNoexceptMoveCtor__isset "::cpp2::StructWithRefAndAnnotCppNoexceptMoveCtor::__isset":
        bint def_field

    cdef cppclass cStructWithRefAndAnnotCppNoexceptMoveCtor "::cpp2::StructWithRefAndAnnotCppNoexceptMoveCtor":
        cStructWithRefAndAnnotCppNoexceptMoveCtor() except +
        cStructWithRefAndAnnotCppNoexceptMoveCtor(const cStructWithRefAndAnnotCppNoexceptMoveCtor&) except +
        bint operator==(cStructWithRefAndAnnotCppNoexceptMoveCtor&)
        bint operator!=(cStructWithRefAndAnnotCppNoexceptMoveCtor&)
        bint operator<(cStructWithRefAndAnnotCppNoexceptMoveCtor&)
        bint operator>(cStructWithRefAndAnnotCppNoexceptMoveCtor&)
        bint operator<=(cStructWithRefAndAnnotCppNoexceptMoveCtor&)
        bint operator>=(cStructWithRefAndAnnotCppNoexceptMoveCtor&)
        unique_ptr[cEmpty] def_field
        cStructWithRefAndAnnotCppNoexceptMoveCtor__isset __isset


cdef class __MyUnionType(thrift.py3.types.CompiledEnum):
    pass




cdef class MyUnion(thrift.py3.types.Union):
    cdef shared_ptr[cMyUnion] _cpp_obj
    cdef readonly __MyUnionType type
    cdef readonly object value
    cdef _load_cache(MyUnion self)

    @staticmethod
    cdef unique_ptr[cMyUnion] _make_instance(
        cMyUnion* base_instance,
        object anInteger,
        str aString
    ) except *

    @staticmethod
    cdef create(shared_ptr[cMyUnion])



cdef class MyField(thrift.py3.types.Struct):
    cdef shared_ptr[cMyField] _cpp_obj
    cdef _fbthrift_types_fields.__MyField_FieldsSetter _fields_setter

    @staticmethod
    cdef create(shared_ptr[cMyField])



cdef class MyStruct(thrift.py3.types.Struct):
    cdef shared_ptr[cMyStruct] _cpp_obj
    cdef _fbthrift_types_fields.__MyStruct_FieldsSetter _fields_setter
    cdef MyField __fbthrift_cached_opt_ref
    cdef MyField __fbthrift_cached_ref
    cdef MyField __fbthrift_cached_req_ref

    @staticmethod
    cdef create(shared_ptr[cMyStruct])



cdef class StructWithUnion(thrift.py3.types.Struct):
    cdef shared_ptr[cStructWithUnion] _cpp_obj
    cdef _fbthrift_types_fields.__StructWithUnion_FieldsSetter _fields_setter
    cdef MyUnion __fbthrift_cached_u
    cdef MyField __fbthrift_cached_f

    @staticmethod
    cdef create(shared_ptr[cStructWithUnion])



cdef class RecursiveStruct(thrift.py3.types.Struct):
    cdef shared_ptr[cRecursiveStruct] _cpp_obj
    cdef _fbthrift_types_fields.__RecursiveStruct_FieldsSetter _fields_setter
    cdef List__RecursiveStruct __fbthrift_cached_mes

    @staticmethod
    cdef create(shared_ptr[cRecursiveStruct])



cdef class StructWithContainers(thrift.py3.types.Struct):
    cdef shared_ptr[cStructWithContainers] _cpp_obj
    cdef _fbthrift_types_fields.__StructWithContainers_FieldsSetter _fields_setter
    cdef List__i32 __fbthrift_cached_list_ref
    cdef Set__i32 __fbthrift_cached_set_ref
    cdef Map__i32_i32 __fbthrift_cached_map_ref
    cdef List__i32 __fbthrift_cached_list_ref_unique
    cdef Set__i32 __fbthrift_cached_set_ref_shared
    cdef List__i32 __fbthrift_cached_list_ref_shared_const

    @staticmethod
    cdef create(shared_ptr[cStructWithContainers])



cdef class StructWithSharedConst(thrift.py3.types.Struct):
    cdef shared_ptr[cStructWithSharedConst] _cpp_obj
    cdef _fbthrift_types_fields.__StructWithSharedConst_FieldsSetter _fields_setter
    cdef MyField __fbthrift_cached_opt_shared_const
    cdef MyField __fbthrift_cached_shared_const
    cdef MyField __fbthrift_cached_req_shared_const

    @staticmethod
    cdef create(shared_ptr[cStructWithSharedConst])



cdef class Empty(thrift.py3.types.Struct):
    cdef shared_ptr[cEmpty] _cpp_obj
    cdef _fbthrift_types_fields.__Empty_FieldsSetter _fields_setter

    @staticmethod
    cdef create(shared_ptr[cEmpty])



cdef class StructWithRef(thrift.py3.types.Struct):
    cdef shared_ptr[cStructWithRef] _cpp_obj
    cdef _fbthrift_types_fields.__StructWithRef_FieldsSetter _fields_setter
    cdef Empty __fbthrift_cached_def_field
    cdef Empty __fbthrift_cached_opt_field
    cdef Empty __fbthrift_cached_req_field

    @staticmethod
    cdef create(shared_ptr[cStructWithRef])



cdef class StructWithRefTypeUnique(thrift.py3.types.Struct):
    cdef shared_ptr[cStructWithRefTypeUnique] _cpp_obj
    cdef _fbthrift_types_fields.__StructWithRefTypeUnique_FieldsSetter _fields_setter
    cdef Empty __fbthrift_cached_def_field
    cdef Empty __fbthrift_cached_opt_field
    cdef Empty __fbthrift_cached_req_field

    @staticmethod
    cdef create(shared_ptr[cStructWithRefTypeUnique])



cdef class StructWithRefTypeShared(thrift.py3.types.Struct):
    cdef shared_ptr[cStructWithRefTypeShared] _cpp_obj
    cdef _fbthrift_types_fields.__StructWithRefTypeShared_FieldsSetter _fields_setter
    cdef Empty __fbthrift_cached_def_field
    cdef Empty __fbthrift_cached_opt_field
    cdef Empty __fbthrift_cached_req_field

    @staticmethod
    cdef create(shared_ptr[cStructWithRefTypeShared])



cdef class StructWithRefTypeSharedConst(thrift.py3.types.Struct):
    cdef shared_ptr[cStructWithRefTypeSharedConst] _cpp_obj
    cdef _fbthrift_types_fields.__StructWithRefTypeSharedConst_FieldsSetter _fields_setter
    cdef Empty __fbthrift_cached_def_field
    cdef Empty __fbthrift_cached_opt_field
    cdef Empty __fbthrift_cached_req_field

    @staticmethod
    cdef create(shared_ptr[cStructWithRefTypeSharedConst])



cdef class StructWithRefAndAnnotCppNoexceptMoveCtor(thrift.py3.types.Struct):
    cdef shared_ptr[cStructWithRefAndAnnotCppNoexceptMoveCtor] _cpp_obj
    cdef _fbthrift_types_fields.__StructWithRefAndAnnotCppNoexceptMoveCtor_FieldsSetter _fields_setter
    cdef Empty __fbthrift_cached_def_field

    @staticmethod
    cdef create(shared_ptr[cStructWithRefAndAnnotCppNoexceptMoveCtor])


cdef class List__RecursiveStruct(thrift.py3.types.List):
    cdef shared_ptr[vector[cRecursiveStruct]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cRecursiveStruct]])
    @staticmethod
    cdef shared_ptr[vector[cRecursiveStruct]] _make_instance(object items) except *

cdef class List__i32(thrift.py3.types.List):
    cdef shared_ptr[vector[cint32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cint32_t]])
    @staticmethod
    cdef shared_ptr[vector[cint32_t]] _make_instance(object items) except *

cdef class Set__i32(thrift.py3.types.Set):
    cdef shared_ptr[cset[cint32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[cint32_t]])
    @staticmethod
    cdef shared_ptr[cset[cint32_t]] _make_instance(object items) except *

cdef class Map__i32_i32(thrift.py3.types.Map):
    cdef shared_ptr[cmap[cint32_t,cint32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[cint32_t,cint32_t]])
    @staticmethod
    cdef shared_ptr[cmap[cint32_t,cint32_t]] _make_instance(object items) except *


cdef extern from "src/gen-cpp2/module_constants.h" namespace "::cpp2":
    cdef cStructWithRef ckStructWithRef "::cpp2::module_constants::kStructWithRef"()
    cdef cStructWithRefTypeUnique ckStructWithRefTypeUnique "::cpp2::module_constants::kStructWithRefTypeUnique"()
    cdef cStructWithRefTypeShared ckStructWithRefTypeShared "::cpp2::module_constants::kStructWithRefTypeShared"()
    cdef cStructWithRefTypeSharedConst ckStructWithRefTypeSharedConst "::cpp2::module_constants::kStructWithRefTypeSharedConst"()
