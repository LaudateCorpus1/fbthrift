/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Collections;
import java.util.BitSet;
import java.util.Arrays;
import com.facebook.thrift.*;
import com.facebook.thrift.annotations.*;
import com.facebook.thrift.async.*;
import com.facebook.thrift.meta_data.*;
import com.facebook.thrift.server.*;
import com.facebook.thrift.transport.*;
import com.facebook.thrift.protocol.*;

@SuppressWarnings({ "unused", "serial" })
public class StructWithContainers implements TBase, java.io.Serializable, Cloneable {
  private static final TStruct STRUCT_DESC = new TStruct("StructWithContainers");
  private static final TField LIST_REF_FIELD_DESC = new TField("list_ref", TType.LIST, (short)1);
  private static final TField SET_REF_FIELD_DESC = new TField("set_ref", TType.SET, (short)2);
  private static final TField MAP_REF_FIELD_DESC = new TField("map_ref", TType.MAP, (short)3);
  private static final TField LIST_REF_UNIQUE_FIELD_DESC = new TField("list_ref_unique", TType.LIST, (short)4);
  private static final TField SET_REF_SHARED_FIELD_DESC = new TField("set_ref_shared", TType.SET, (short)5);
  private static final TField LIST_REF_SHARED_CONST_FIELD_DESC = new TField("list_ref_shared_const", TType.LIST, (short)6);

  public final List<Integer> list_ref;
  public final Set<Integer> set_ref;
  public final Map<Integer,Integer> map_ref;
  public final List<Integer> list_ref_unique;
  public final Set<Integer> set_ref_shared;
  public final List<Integer> list_ref_shared_const;
  public static final int LIST_REF = 1;
  public static final int SET_REF = 2;
  public static final int MAP_REF = 3;
  public static final int LIST_REF_UNIQUE = 4;
  public static final int SET_REF_SHARED = 5;
  public static final int LIST_REF_SHARED_CONST = 6;

  public StructWithContainers(
      List<Integer> list_ref,
      Set<Integer> set_ref,
      Map<Integer,Integer> map_ref,
      List<Integer> list_ref_unique,
      Set<Integer> set_ref_shared,
      List<Integer> list_ref_shared_const) {
    this.list_ref = list_ref;
    this.set_ref = set_ref;
    this.map_ref = map_ref;
    this.list_ref_unique = list_ref_unique;
    this.set_ref_shared = set_ref_shared;
    this.list_ref_shared_const = list_ref_shared_const;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public StructWithContainers(StructWithContainers other) {
    if (other.isSetList_ref()) {
      this.list_ref = TBaseHelper.deepCopy(other.list_ref);
    } else {
      this.list_ref = null;
    }
    if (other.isSetSet_ref()) {
      this.set_ref = TBaseHelper.deepCopy(other.set_ref);
    } else {
      this.set_ref = null;
    }
    if (other.isSetMap_ref()) {
      this.map_ref = TBaseHelper.deepCopy(other.map_ref);
    } else {
      this.map_ref = null;
    }
    if (other.isSetList_ref_unique()) {
      this.list_ref_unique = TBaseHelper.deepCopy(other.list_ref_unique);
    } else {
      this.list_ref_unique = null;
    }
    if (other.isSetSet_ref_shared()) {
      this.set_ref_shared = TBaseHelper.deepCopy(other.set_ref_shared);
    } else {
      this.set_ref_shared = null;
    }
    if (other.isSetList_ref_shared_const()) {
      this.list_ref_shared_const = TBaseHelper.deepCopy(other.list_ref_shared_const);
    } else {
      this.list_ref_shared_const = null;
    }
  }

  public StructWithContainers deepCopy() {
    return new StructWithContainers(this);
  }

  public List<Integer> getList_ref() {
    return this.list_ref;
  }

  // Returns true if field list_ref is set (has been assigned a value) and false otherwise
  public boolean isSetList_ref() {
    return this.list_ref != null;
  }

  public Set<Integer> getSet_ref() {
    return this.set_ref;
  }

  // Returns true if field set_ref is set (has been assigned a value) and false otherwise
  public boolean isSetSet_ref() {
    return this.set_ref != null;
  }

  public Map<Integer,Integer> getMap_ref() {
    return this.map_ref;
  }

  // Returns true if field map_ref is set (has been assigned a value) and false otherwise
  public boolean isSetMap_ref() {
    return this.map_ref != null;
  }

  public List<Integer> getList_ref_unique() {
    return this.list_ref_unique;
  }

  // Returns true if field list_ref_unique is set (has been assigned a value) and false otherwise
  public boolean isSetList_ref_unique() {
    return this.list_ref_unique != null;
  }

  public Set<Integer> getSet_ref_shared() {
    return this.set_ref_shared;
  }

  // Returns true if field set_ref_shared is set (has been assigned a value) and false otherwise
  public boolean isSetSet_ref_shared() {
    return this.set_ref_shared != null;
  }

  public List<Integer> getList_ref_shared_const() {
    return this.list_ref_shared_const;
  }

  // Returns true if field list_ref_shared_const is set (has been assigned a value) and false otherwise
  public boolean isSetList_ref_shared_const() {
    return this.list_ref_shared_const != null;
  }

  @Override
  public boolean equals(Object _that) {
    if (_that == null)
      return false;
    if (this == _that)
      return true;
    if (!(_that instanceof StructWithContainers))
      return false;
    StructWithContainers that = (StructWithContainers)_that;

    if (!TBaseHelper.equalsNobinary(this.isSetList_ref(), that.isSetList_ref(), this.list_ref, that.list_ref)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetSet_ref(), that.isSetSet_ref(), this.set_ref, that.set_ref)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetMap_ref(), that.isSetMap_ref(), this.map_ref, that.map_ref)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetList_ref_unique(), that.isSetList_ref_unique(), this.list_ref_unique, that.list_ref_unique)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetSet_ref_shared(), that.isSetSet_ref_shared(), this.set_ref_shared, that.set_ref_shared)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetList_ref_shared_const(), that.isSetList_ref_shared_const(), this.list_ref_shared_const, that.list_ref_shared_const)) { return false; }

    return true;
  }

  @Override
  public int hashCode() {
    return Arrays.deepHashCode(new Object[] {list_ref, set_ref, map_ref, list_ref_unique, set_ref_shared, list_ref_shared_const});
  }

  // This is required to satisfy the TBase interface, but can't be implemented on immutable struture.
  public void read(TProtocol iprot) throws TException {
    throw new TException("unimplemented in android immutable structure");
  }

  public static StructWithContainers deserialize(TProtocol iprot) throws TException {
    List<Integer> tmp_list_ref = null;
    Set<Integer> tmp_set_ref = null;
    Map<Integer,Integer> tmp_map_ref = null;
    List<Integer> tmp_list_ref_unique = null;
    Set<Integer> tmp_set_ref_shared = null;
    List<Integer> tmp_list_ref_shared_const = null;
    TField __field;
    iprot.readStructBegin();
    while (true)
    {
      __field = iprot.readFieldBegin();
      if (__field.type == TType.STOP) { 
        break;
      }
      switch (__field.id)
      {
        case LIST_REF:
          if (__field.type == TType.LIST) {
            {
              TList _list16 = iprot.readListBegin();
              tmp_list_ref = new ArrayList<Integer>(Math.max(0, _list16.size));
              for (int _i17 = 0; 
                   (_list16.size < 0) ? iprot.peekList() : (_i17 < _list16.size); 
                   ++_i17)
              {
                Integer _elem18;
                _elem18 = iprot.readI32();
                tmp_list_ref.add(_elem18);
              }
              iprot.readListEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case SET_REF:
          if (__field.type == TType.SET) {
            {
              TSet _set19 = iprot.readSetBegin();
              tmp_set_ref = new HashSet<Integer>(Math.max(0, 2*_set19.size));
              for (int _i20 = 0; 
                   (_set19.size < 0) ? iprot.peekSet() : (_i20 < _set19.size); 
                   ++_i20)
              {
                Integer _elem21;
                _elem21 = iprot.readI32();
                tmp_set_ref.add(_elem21);
              }
              iprot.readSetEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case MAP_REF:
          if (__field.type == TType.MAP) {
            {
              TMap _map22 = iprot.readMapBegin();
              tmp_map_ref = new HashMap<Integer,Integer>(Math.max(0, 2*_map22.size));
              for (int _i23 = 0; 
                   (_map22.size < 0) ? iprot.peekMap() : (_i23 < _map22.size); 
                   ++_i23)
              {
                Integer _key24;
                Integer _val25;
                _key24 = iprot.readI32();
                _val25 = iprot.readI32();
                tmp_map_ref.put(_key24, _val25);
              }
              iprot.readMapEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case LIST_REF_UNIQUE:
          if (__field.type == TType.LIST) {
            {
              TList _list26 = iprot.readListBegin();
              tmp_list_ref_unique = new ArrayList<Integer>(Math.max(0, _list26.size));
              for (int _i27 = 0; 
                   (_list26.size < 0) ? iprot.peekList() : (_i27 < _list26.size); 
                   ++_i27)
              {
                Integer _elem28;
                _elem28 = iprot.readI32();
                tmp_list_ref_unique.add(_elem28);
              }
              iprot.readListEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case SET_REF_SHARED:
          if (__field.type == TType.SET) {
            {
              TSet _set29 = iprot.readSetBegin();
              tmp_set_ref_shared = new HashSet<Integer>(Math.max(0, 2*_set29.size));
              for (int _i30 = 0; 
                   (_set29.size < 0) ? iprot.peekSet() : (_i30 < _set29.size); 
                   ++_i30)
              {
                Integer _elem31;
                _elem31 = iprot.readI32();
                tmp_set_ref_shared.add(_elem31);
              }
              iprot.readSetEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case LIST_REF_SHARED_CONST:
          if (__field.type == TType.LIST) {
            {
              TList _list32 = iprot.readListBegin();
              tmp_list_ref_shared_const = new ArrayList<Integer>(Math.max(0, _list32.size));
              for (int _i33 = 0; 
                   (_list32.size < 0) ? iprot.peekList() : (_i33 < _list32.size); 
                   ++_i33)
              {
                Integer _elem34;
                _elem34 = iprot.readI32();
                tmp_list_ref_shared_const.add(_elem34);
              }
              iprot.readListEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, __field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    StructWithContainers _that;
    _that = new StructWithContainers(
      tmp_list_ref
      ,tmp_set_ref
      ,tmp_map_ref
      ,tmp_list_ref_unique
      ,tmp_set_ref_shared
      ,tmp_list_ref_shared_const
    );
    _that.validate();
    return _that;
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.list_ref != null) {
      oprot.writeFieldBegin(LIST_REF_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.I32, this.list_ref.size()));
        for (Integer _iter35 : this.list_ref)        {
          oprot.writeI32(_iter35);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.set_ref != null) {
      oprot.writeFieldBegin(SET_REF_FIELD_DESC);
      {
        oprot.writeSetBegin(new TSet(TType.I32, this.set_ref.size()));
        for (Integer _iter36 : this.set_ref)        {
          oprot.writeI32(_iter36);
        }
        oprot.writeSetEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.map_ref != null) {
      oprot.writeFieldBegin(MAP_REF_FIELD_DESC);
      {
        oprot.writeMapBegin(new TMap(TType.I32, TType.I32, this.map_ref.size()));
        for (Map.Entry<Integer, Integer> _iter37 : this.map_ref.entrySet())        {
          oprot.writeI32(_iter37.getKey());
          oprot.writeI32(_iter37.getValue());
        }
        oprot.writeMapEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.list_ref_unique != null) {
      oprot.writeFieldBegin(LIST_REF_UNIQUE_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.I32, this.list_ref_unique.size()));
        for (Integer _iter38 : this.list_ref_unique)        {
          oprot.writeI32(_iter38);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.set_ref_shared != null) {
      oprot.writeFieldBegin(SET_REF_SHARED_FIELD_DESC);
      {
        oprot.writeSetBegin(new TSet(TType.I32, this.set_ref_shared.size()));
        for (Integer _iter39 : this.set_ref_shared)        {
          oprot.writeI32(_iter39);
        }
        oprot.writeSetEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.list_ref_shared_const != null) {
      oprot.writeFieldBegin(LIST_REF_SHARED_CONST_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.I32, this.list_ref_shared_const.size()));
        for (Integer _iter40 : this.list_ref_shared_const)        {
          oprot.writeI32(_iter40);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @Override
  public String toString() {
    return toString(1, true);
  }

  @Override
  public String toString(int indent, boolean prettyPrint) {
    return TBaseHelper.toStringHelper(this, indent, prettyPrint);
  }

  public void validate() throws TException {
    // check for required fields
  }

}
