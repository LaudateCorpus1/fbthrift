/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include <thrift/lib/cpp/Thrift.h>
#include <thrift/lib/cpp/TApplicationException.h>
#include <thrift/lib/cpp/protocol/TProtocol.h>
#include <thrift/lib/cpp/transport/TTransport.h>

namespace apache { namespace thrift { namespace reflection {
class Schema;
}}}




enum EmptyEnum {
};

using _EmptyEnum_EnumMapFactory = apache::thrift::detail::TEnumMapFactory<EmptyEnum, int>;

extern const _EmptyEnum_EnumMapFactory::ValuesToNamesMapType _EmptyEnum_VALUES_TO_NAMES;

extern const _EmptyEnum_EnumMapFactory::NamesToValuesMapType _EmptyEnum_NAMES_TO_VALUES;


namespace apache { namespace thrift {
template <> struct TEnumDataStorage< ::EmptyEnum>;
}} // apache::thrift



enum City {
  NYC = 0,
  MPK = 1,
  SEA = 2,
  LON = 3,
};

using _City_EnumMapFactory = apache::thrift::detail::TEnumMapFactory<City, int>;

extern const _City_EnumMapFactory::ValuesToNamesMapType _City_VALUES_TO_NAMES;

extern const _City_EnumMapFactory::NamesToValuesMapType _City_NAMES_TO_VALUES;


namespace apache { namespace thrift {
template <> struct TEnumDataStorage< ::City>;
}} // apache::thrift




namespace apache { namespace thrift {
template<>
struct TEnumTraits< ::City> : public TEnumTraitsBase< ::City>
{
inline static constexpr  ::City min() {
return  ::City::NYC;
}
inline static constexpr  ::City max() {
return  ::City::LON;
}
};
}} // apache:thrift


enum Company {
  FACEBOOK = 0,
  WHATSAPP = 1,
  OCULUS = 2,
  INSTAGRAM = 3,
};

using _Company_EnumMapFactory = apache::thrift::detail::TEnumMapFactory<Company, int>;

extern const _Company_EnumMapFactory::ValuesToNamesMapType _Company_VALUES_TO_NAMES;

extern const _Company_EnumMapFactory::NamesToValuesMapType _Company_NAMES_TO_VALUES;


namespace apache { namespace thrift {
template <> struct TEnumDataStorage< ::Company>;
}} // apache::thrift




namespace apache { namespace thrift {
template<>
struct TEnumTraits< ::Company> : public TEnumTraitsBase< ::Company>
{
inline static constexpr  ::Company min() {
return  ::Company::FACEBOOK;
}
inline static constexpr  ::Company max() {
return  ::Company::INSTAGRAM;
}
};
}} // apache:thrift


class Internship;

class UnEnumStruct;

class Range;

void swap(Internship &a, Internship &b);

class Internship : public apache::thrift::TStructType<Internship> {
 public:

  static const uint64_t _reflection_id = 9022508676980868684U;
  static void _reflection_register(::apache::thrift::reflection::Schema&);
  Internship() : weeks(0), employer(static_cast<Company>(0)) {
  }
  template <
    typename T__ThriftWrappedArgument__Ctor,
    typename... Args__ThriftWrappedArgument__Ctor
  >
  explicit Internship(
    ::apache::thrift::detail::argument_wrapper<1, T__ThriftWrappedArgument__Ctor> arg,
    Args__ThriftWrappedArgument__Ctor&&... args
  ):
    Internship(std::forward<Args__ThriftWrappedArgument__Ctor>(args)...)
  {
    weeks = arg.move();
  }
  template <
    typename T__ThriftWrappedArgument__Ctor,
    typename... Args__ThriftWrappedArgument__Ctor
  >
  explicit Internship(
    ::apache::thrift::detail::argument_wrapper<2, T__ThriftWrappedArgument__Ctor> arg,
    Args__ThriftWrappedArgument__Ctor&&... args
  ):
    Internship(std::forward<Args__ThriftWrappedArgument__Ctor>(args)...)
  {
    title = arg.move();
    __isset.title = true;
  }
  template <
    typename T__ThriftWrappedArgument__Ctor,
    typename... Args__ThriftWrappedArgument__Ctor
  >
  explicit Internship(
    ::apache::thrift::detail::argument_wrapper<3, T__ThriftWrappedArgument__Ctor> arg,
    Args__ThriftWrappedArgument__Ctor&&... args
  ):
    Internship(std::forward<Args__ThriftWrappedArgument__Ctor>(args)...)
  {
    employer = arg.move();
    __isset.employer = true;
  }

  Internship(const Internship&) = default;
  Internship& operator=(const Internship& src)= default;
  Internship(Internship&&) = default;
  Internship& operator=(Internship&&) = default;

  void __clear();

  virtual ~Internship() throw() {}

  int32_t weeks;
  std::string title;
  Company employer;

  struct __isset {
    __isset() { __clear(); } 
    void __clear() {
      title = false;
      employer = false;
    }
    bool title;
    bool employer;
  } __isset;

  bool operator == (const Internship &) const;
  bool operator != (const Internship& rhs) const {
    return !(*this == rhs);
  }

  bool operator < (const Internship & ) const;

  uint32_t read(apache::thrift::protocol::TProtocol* iprot);
  uint32_t write(apache::thrift::protocol::TProtocol* oprot) const;

};

class Internship;
void merge(const Internship& from, Internship& to);
void merge(Internship&& from, Internship& to);
void swap(UnEnumStruct &a, UnEnumStruct &b);

class UnEnumStruct : public apache::thrift::TStructType<UnEnumStruct> {
 public:

  static const uint64_t _reflection_id = 18314195816413397484U;
  static void _reflection_register(::apache::thrift::reflection::Schema&);
  UnEnumStruct() : city(City(-1)) {
  }
  template <
    typename T__ThriftWrappedArgument__Ctor,
    typename... Args__ThriftWrappedArgument__Ctor
  >
  explicit UnEnumStruct(
    ::apache::thrift::detail::argument_wrapper<1, T__ThriftWrappedArgument__Ctor> arg,
    Args__ThriftWrappedArgument__Ctor&&... args
  ):
    UnEnumStruct(std::forward<Args__ThriftWrappedArgument__Ctor>(args)...)
  {
    city = arg.move();
    __isset.city = true;
  }

  UnEnumStruct(const UnEnumStruct&) = default;
  UnEnumStruct& operator=(const UnEnumStruct& src)= default;
  UnEnumStruct(UnEnumStruct&&) = default;
  UnEnumStruct& operator=(UnEnumStruct&&) = default;

  void __clear();

  virtual ~UnEnumStruct() throw() {}

  City city;

  struct __isset {
    __isset() { __clear(); } 
    void __clear() {
      city = false;
    }
    bool city;
  } __isset;

  bool operator == (const UnEnumStruct &) const;
  bool operator != (const UnEnumStruct& rhs) const {
    return !(*this == rhs);
  }

  bool operator < (const UnEnumStruct & ) const;

  uint32_t read(apache::thrift::protocol::TProtocol* iprot);
  uint32_t write(apache::thrift::protocol::TProtocol* oprot) const;

};

class UnEnumStruct;
void merge(const UnEnumStruct& from, UnEnumStruct& to);
void merge(UnEnumStruct&& from, UnEnumStruct& to);
void swap(Range &a, Range &b);

class Range : public apache::thrift::TStructType<Range> {
 public:

  static const uint64_t _reflection_id = 7757081658652615948U;
  static void _reflection_register(::apache::thrift::reflection::Schema&);
  Range() : min(0), max(0) {
  }
  template <
    typename T__ThriftWrappedArgument__Ctor,
    typename... Args__ThriftWrappedArgument__Ctor
  >
  explicit Range(
    ::apache::thrift::detail::argument_wrapper<1, T__ThriftWrappedArgument__Ctor> arg,
    Args__ThriftWrappedArgument__Ctor&&... args
  ):
    Range(std::forward<Args__ThriftWrappedArgument__Ctor>(args)...)
  {
    min = arg.move();
  }
  template <
    typename T__ThriftWrappedArgument__Ctor,
    typename... Args__ThriftWrappedArgument__Ctor
  >
  explicit Range(
    ::apache::thrift::detail::argument_wrapper<2, T__ThriftWrappedArgument__Ctor> arg,
    Args__ThriftWrappedArgument__Ctor&&... args
  ):
    Range(std::forward<Args__ThriftWrappedArgument__Ctor>(args)...)
  {
    max = arg.move();
  }

  Range(const Range&) = default;
  Range& operator=(const Range& src)= default;
  Range(Range&&) = default;
  Range& operator=(Range&&) = default;

  void __clear();

  virtual ~Range() throw() {}

  int32_t min;
  int32_t max;

  bool operator == (const Range &) const;
  bool operator != (const Range& rhs) const {
    return !(*this == rhs);
  }

  bool operator < (const Range & ) const;

  uint32_t read(apache::thrift::protocol::TProtocol* iprot);
  uint32_t write(apache::thrift::protocol::TProtocol* oprot) const;

};

class Range;
void merge(const Range& from, Range& to);
void merge(Range&& from, Range& to);


