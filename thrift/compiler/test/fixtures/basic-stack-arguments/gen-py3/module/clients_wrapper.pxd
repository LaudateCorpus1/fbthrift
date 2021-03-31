#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from cpython.ref cimport PyObject
from libc.stdint cimport (
    int8_t as cint8_t,
    int16_t as cint16_t,
    int32_t as cint32_t,
    int64_t as cint64_t,
)
from libcpp cimport bool as cbool
from libcpp.map cimport map as cmap, pair as cpair
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.set cimport set as cset
from libcpp.string cimport string
from libcpp.vector cimport vector

from folly cimport cFollyFuture, cFollyTry, cFollyUnit
cimport folly.iobuf as _fbthrift_iobuf
from thrift.py3.common cimport cRpcOptions

cimport module.types as _module_types


cdef extern from "src/gen-cpp2/MyService.h" namespace "::cpp2":
  cdef cppclass cMyServiceAsyncClient "::cpp2::MyServiceAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cMyServiceClientWrapper] move(unique_ptr[cMyServiceClientWrapper])

cdef extern from "src/gen-cpp2/MyServiceFast.h" namespace "::cpp2":
  cdef cppclass cMyServiceFastAsyncClient "::cpp2::MyServiceFastAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cMyServiceFastClientWrapper] move(unique_ptr[cMyServiceFastClientWrapper])

cdef extern from "src/gen-cpp2/DbMixedStackArguments.h" namespace "::cpp2":
  cdef cppclass cDbMixedStackArgumentsAsyncClient "::cpp2::DbMixedStackArgumentsAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cDbMixedStackArgumentsClientWrapper] move(unique_ptr[cDbMixedStackArgumentsClientWrapper])

cdef extern from "thrift/lib/cpp/TProcessorEventHandler.h" namespace "::apache::thrift":
  cdef cppclass cTProcessorEventHandler "apache::thrift::TProcessorEventHandler":
    pass

cdef extern from "src/gen-py3/module/clients_wrapper.h" namespace "::cpp2":
  cdef cppclass cMyServiceClientWrapper "::cpp2::MyServiceClientWrapper":
    void setPersistentHeader(const string& key, const string& value)
    void addEventHandler(const shared_ptr[cTProcessorEventHandler]& handler)

    cFollyFuture[cbool] hasDataById(cRpcOptions, 
      cint64_t arg_id,)
    cFollyFuture[string] getDataById(cRpcOptions, 
      cint64_t arg_id,)
    cFollyFuture[cFollyUnit] putDataById(cRpcOptions, 
      cint64_t arg_id,
      string arg_data,)
    cFollyFuture[cFollyUnit] lobDataById(cRpcOptions, 
      cint64_t arg_id,
      string arg_data,)


  cdef cppclass cMyServiceFastClientWrapper "::cpp2::MyServiceFastClientWrapper":
    void setPersistentHeader(const string& key, const string& value)
    void addEventHandler(const shared_ptr[cTProcessorEventHandler]& handler)

    cFollyFuture[cbool] hasDataById(cRpcOptions, 
      cint64_t arg_id,)
    cFollyFuture[string] getDataById(cRpcOptions, 
      cint64_t arg_id,)
    cFollyFuture[cFollyUnit] putDataById(cRpcOptions, 
      cint64_t arg_id,
      string arg_data,)
    cFollyFuture[cFollyUnit] lobDataById(cRpcOptions, 
      cint64_t arg_id,
      string arg_data,)


  cdef cppclass cDbMixedStackArgumentsClientWrapper "::cpp2::DbMixedStackArgumentsClientWrapper":
    void setPersistentHeader(const string& key, const string& value)
    void addEventHandler(const shared_ptr[cTProcessorEventHandler]& handler)

    cFollyFuture[string] getDataByKey0(cRpcOptions, 
      string arg_key,)
    cFollyFuture[string] getDataByKey1(cRpcOptions, 
      string arg_key,)

