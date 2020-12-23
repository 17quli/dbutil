// ORM class for table 'lantasksource'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Fri Dec 04 00:55:47 NZDT 2020
// For connector: org.apache.sqoop.manager.SQLServerManager
import org.apache.hadoop.io.BytesWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapred.lib.db.DBWritable;
import org.apache.sqoop.lib.JdbcWritableBridge;
import org.apache.sqoop.lib.DelimiterSet;
import org.apache.sqoop.lib.FieldFormatter;
import org.apache.sqoop.lib.RecordParser;
import org.apache.sqoop.lib.BooleanParser;
import org.apache.sqoop.lib.BlobRef;
import org.apache.sqoop.lib.ClobRef;
import org.apache.sqoop.lib.LargeObjectLoader;
import org.apache.sqoop.lib.SqoopRecord;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

public class lantasksource extends SqoopRecord  implements DBWritable, Writable {
  private final int PROTOCOL_VERSION = 3;
  public int getClassFormatVersion() { return PROTOCOL_VERSION; }
  public static interface FieldSetterCommand {    void setField(Object value);  }  protected ResultSet __cur_result_set;
  private Map<String, FieldSetterCommand> setters = new HashMap<String, FieldSetterCommand>();
  private void init0() {
    setters.put("fstrLanguage", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        lantasksource.this.fstrLanguage = (String)value;
      }
    });
    setters.put("fstrTaskSource", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        lantasksource.this.fstrTaskSource = (String)value;
      }
    });
    setters.put("fstrDecode1", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        lantasksource.this.fstrDecode1 = (String)value;
      }
    });
    setters.put("fstrDecode2", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        lantasksource.this.fstrDecode2 = (String)value;
      }
    });
    setters.put("fstrDecodeCategory", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        lantasksource.this.fstrDecodeCategory = (String)value;
      }
    });
    setters.put("fstrDecodeType", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        lantasksource.this.fstrDecodeType = (String)value;
      }
    });
    setters.put("fstrDecodeStage", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        lantasksource.this.fstrDecodeStage = (String)value;
      }
    });
    setters.put("fstrDecodeAssignedTo", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        lantasksource.this.fstrDecodeAssignedTo = (String)value;
      }
    });
    setters.put("fstrDescription", new FieldSetterCommand() {
      @Override
      public void setField(Object value) {
        lantasksource.this.fstrDescription = (String)value;
      }
    });
  }
  public lantasksource() {
    init0();
  }
  private String fstrLanguage;
  public String get_fstrLanguage() {
    return fstrLanguage;
  }
  public void set_fstrLanguage(String fstrLanguage) {
    this.fstrLanguage = fstrLanguage;
  }
  public lantasksource with_fstrLanguage(String fstrLanguage) {
    this.fstrLanguage = fstrLanguage;
    return this;
  }
  private String fstrTaskSource;
  public String get_fstrTaskSource() {
    return fstrTaskSource;
  }
  public void set_fstrTaskSource(String fstrTaskSource) {
    this.fstrTaskSource = fstrTaskSource;
  }
  public lantasksource with_fstrTaskSource(String fstrTaskSource) {
    this.fstrTaskSource = fstrTaskSource;
    return this;
  }
  private String fstrDecode1;
  public String get_fstrDecode1() {
    return fstrDecode1;
  }
  public void set_fstrDecode1(String fstrDecode1) {
    this.fstrDecode1 = fstrDecode1;
  }
  public lantasksource with_fstrDecode1(String fstrDecode1) {
    this.fstrDecode1 = fstrDecode1;
    return this;
  }
  private String fstrDecode2;
  public String get_fstrDecode2() {
    return fstrDecode2;
  }
  public void set_fstrDecode2(String fstrDecode2) {
    this.fstrDecode2 = fstrDecode2;
  }
  public lantasksource with_fstrDecode2(String fstrDecode2) {
    this.fstrDecode2 = fstrDecode2;
    return this;
  }
  private String fstrDecodeCategory;
  public String get_fstrDecodeCategory() {
    return fstrDecodeCategory;
  }
  public void set_fstrDecodeCategory(String fstrDecodeCategory) {
    this.fstrDecodeCategory = fstrDecodeCategory;
  }
  public lantasksource with_fstrDecodeCategory(String fstrDecodeCategory) {
    this.fstrDecodeCategory = fstrDecodeCategory;
    return this;
  }
  private String fstrDecodeType;
  public String get_fstrDecodeType() {
    return fstrDecodeType;
  }
  public void set_fstrDecodeType(String fstrDecodeType) {
    this.fstrDecodeType = fstrDecodeType;
  }
  public lantasksource with_fstrDecodeType(String fstrDecodeType) {
    this.fstrDecodeType = fstrDecodeType;
    return this;
  }
  private String fstrDecodeStage;
  public String get_fstrDecodeStage() {
    return fstrDecodeStage;
  }
  public void set_fstrDecodeStage(String fstrDecodeStage) {
    this.fstrDecodeStage = fstrDecodeStage;
  }
  public lantasksource with_fstrDecodeStage(String fstrDecodeStage) {
    this.fstrDecodeStage = fstrDecodeStage;
    return this;
  }
  private String fstrDecodeAssignedTo;
  public String get_fstrDecodeAssignedTo() {
    return fstrDecodeAssignedTo;
  }
  public void set_fstrDecodeAssignedTo(String fstrDecodeAssignedTo) {
    this.fstrDecodeAssignedTo = fstrDecodeAssignedTo;
  }
  public lantasksource with_fstrDecodeAssignedTo(String fstrDecodeAssignedTo) {
    this.fstrDecodeAssignedTo = fstrDecodeAssignedTo;
    return this;
  }
  private String fstrDescription;
  public String get_fstrDescription() {
    return fstrDescription;
  }
  public void set_fstrDescription(String fstrDescription) {
    this.fstrDescription = fstrDescription;
  }
  public lantasksource with_fstrDescription(String fstrDescription) {
    this.fstrDescription = fstrDescription;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof lantasksource)) {
      return false;
    }
    lantasksource that = (lantasksource) o;
    boolean equal = true;
    equal = equal && (this.fstrLanguage == null ? that.fstrLanguage == null : this.fstrLanguage.equals(that.fstrLanguage));
    equal = equal && (this.fstrTaskSource == null ? that.fstrTaskSource == null : this.fstrTaskSource.equals(that.fstrTaskSource));
    equal = equal && (this.fstrDecode1 == null ? that.fstrDecode1 == null : this.fstrDecode1.equals(that.fstrDecode1));
    equal = equal && (this.fstrDecode2 == null ? that.fstrDecode2 == null : this.fstrDecode2.equals(that.fstrDecode2));
    equal = equal && (this.fstrDecodeCategory == null ? that.fstrDecodeCategory == null : this.fstrDecodeCategory.equals(that.fstrDecodeCategory));
    equal = equal && (this.fstrDecodeType == null ? that.fstrDecodeType == null : this.fstrDecodeType.equals(that.fstrDecodeType));
    equal = equal && (this.fstrDecodeStage == null ? that.fstrDecodeStage == null : this.fstrDecodeStage.equals(that.fstrDecodeStage));
    equal = equal && (this.fstrDecodeAssignedTo == null ? that.fstrDecodeAssignedTo == null : this.fstrDecodeAssignedTo.equals(that.fstrDecodeAssignedTo));
    equal = equal && (this.fstrDescription == null ? that.fstrDescription == null : this.fstrDescription.equals(that.fstrDescription));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof lantasksource)) {
      return false;
    }
    lantasksource that = (lantasksource) o;
    boolean equal = true;
    equal = equal && (this.fstrLanguage == null ? that.fstrLanguage == null : this.fstrLanguage.equals(that.fstrLanguage));
    equal = equal && (this.fstrTaskSource == null ? that.fstrTaskSource == null : this.fstrTaskSource.equals(that.fstrTaskSource));
    equal = equal && (this.fstrDecode1 == null ? that.fstrDecode1 == null : this.fstrDecode1.equals(that.fstrDecode1));
    equal = equal && (this.fstrDecode2 == null ? that.fstrDecode2 == null : this.fstrDecode2.equals(that.fstrDecode2));
    equal = equal && (this.fstrDecodeCategory == null ? that.fstrDecodeCategory == null : this.fstrDecodeCategory.equals(that.fstrDecodeCategory));
    equal = equal && (this.fstrDecodeType == null ? that.fstrDecodeType == null : this.fstrDecodeType.equals(that.fstrDecodeType));
    equal = equal && (this.fstrDecodeStage == null ? that.fstrDecodeStage == null : this.fstrDecodeStage.equals(that.fstrDecodeStage));
    equal = equal && (this.fstrDecodeAssignedTo == null ? that.fstrDecodeAssignedTo == null : this.fstrDecodeAssignedTo.equals(that.fstrDecodeAssignedTo));
    equal = equal && (this.fstrDescription == null ? that.fstrDescription == null : this.fstrDescription.equals(that.fstrDescription));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.fstrLanguage = JdbcWritableBridge.readString(1, __dbResults);
    this.fstrTaskSource = JdbcWritableBridge.readString(2, __dbResults);
    this.fstrDecode1 = JdbcWritableBridge.readString(3, __dbResults);
    this.fstrDecode2 = JdbcWritableBridge.readString(4, __dbResults);
    this.fstrDecodeCategory = JdbcWritableBridge.readString(5, __dbResults);
    this.fstrDecodeType = JdbcWritableBridge.readString(6, __dbResults);
    this.fstrDecodeStage = JdbcWritableBridge.readString(7, __dbResults);
    this.fstrDecodeAssignedTo = JdbcWritableBridge.readString(8, __dbResults);
    this.fstrDescription = JdbcWritableBridge.readString(9, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.fstrLanguage = JdbcWritableBridge.readString(1, __dbResults);
    this.fstrTaskSource = JdbcWritableBridge.readString(2, __dbResults);
    this.fstrDecode1 = JdbcWritableBridge.readString(3, __dbResults);
    this.fstrDecode2 = JdbcWritableBridge.readString(4, __dbResults);
    this.fstrDecodeCategory = JdbcWritableBridge.readString(5, __dbResults);
    this.fstrDecodeType = JdbcWritableBridge.readString(6, __dbResults);
    this.fstrDecodeStage = JdbcWritableBridge.readString(7, __dbResults);
    this.fstrDecodeAssignedTo = JdbcWritableBridge.readString(8, __dbResults);
    this.fstrDescription = JdbcWritableBridge.readString(9, __dbResults);
  }
  public void loadLargeObjects(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void loadLargeObjects0(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void write(PreparedStatement __dbStmt) throws SQLException {
    write(__dbStmt, 0);
  }

  public int write(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(fstrLanguage, 1 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrTaskSource, 2 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecode1, 3 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecode2, 4 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecodeCategory, 5 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecodeType, 6 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecodeStage, 7 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecodeAssignedTo, 8 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDescription, 9 + __off, -9, __dbStmt);
    return 9;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(fstrLanguage, 1 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrTaskSource, 2 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecode1, 3 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecode2, 4 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecodeCategory, 5 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecodeType, 6 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecodeStage, 7 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDecodeAssignedTo, 8 + __off, -9, __dbStmt);
    JdbcWritableBridge.writeString(fstrDescription, 9 + __off, -9, __dbStmt);
  }
  public void readFields(DataInput __dataIn) throws IOException {
this.readFields0(__dataIn);  }
  public void readFields0(DataInput __dataIn) throws IOException {
    if (__dataIn.readBoolean()) { 
        this.fstrLanguage = null;
    } else {
    this.fstrLanguage = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.fstrTaskSource = null;
    } else {
    this.fstrTaskSource = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.fstrDecode1 = null;
    } else {
    this.fstrDecode1 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.fstrDecode2 = null;
    } else {
    this.fstrDecode2 = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.fstrDecodeCategory = null;
    } else {
    this.fstrDecodeCategory = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.fstrDecodeType = null;
    } else {
    this.fstrDecodeType = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.fstrDecodeStage = null;
    } else {
    this.fstrDecodeStage = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.fstrDecodeAssignedTo = null;
    } else {
    this.fstrDecodeAssignedTo = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.fstrDescription = null;
    } else {
    this.fstrDescription = Text.readString(__dataIn);
    }
  }
  public void write(DataOutput __dataOut) throws IOException {
    if (null == this.fstrLanguage) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrLanguage);
    }
    if (null == this.fstrTaskSource) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrTaskSource);
    }
    if (null == this.fstrDecode1) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecode1);
    }
    if (null == this.fstrDecode2) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecode2);
    }
    if (null == this.fstrDecodeCategory) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecodeCategory);
    }
    if (null == this.fstrDecodeType) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecodeType);
    }
    if (null == this.fstrDecodeStage) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecodeStage);
    }
    if (null == this.fstrDecodeAssignedTo) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecodeAssignedTo);
    }
    if (null == this.fstrDescription) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDescription);
    }
  }
  public void write0(DataOutput __dataOut) throws IOException {
    if (null == this.fstrLanguage) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrLanguage);
    }
    if (null == this.fstrTaskSource) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrTaskSource);
    }
    if (null == this.fstrDecode1) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecode1);
    }
    if (null == this.fstrDecode2) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecode2);
    }
    if (null == this.fstrDecodeCategory) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecodeCategory);
    }
    if (null == this.fstrDecodeType) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecodeType);
    }
    if (null == this.fstrDecodeStage) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecodeStage);
    }
    if (null == this.fstrDecodeAssignedTo) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDecodeAssignedTo);
    }
    if (null == this.fstrDescription) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, fstrDescription);
    }
  }
  private static final DelimiterSet __outputDelimiters = new DelimiterSet((char) 1, (char) 10, (char) 34, (char) 92, false);
  public String toString() {
    return toString(__outputDelimiters, true);
  }
  public String toString(DelimiterSet delimiters) {
    return toString(delimiters, true);
  }
  public String toString(boolean useRecordDelim) {
    return toString(__outputDelimiters, useRecordDelim);
  }
  public String toString(DelimiterSet delimiters, boolean useRecordDelim) {
    StringBuilder __sb = new StringBuilder();
    char fieldDelim = delimiters.getFieldsTerminatedBy();
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrLanguage==null?"\\N":fstrLanguage, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrTaskSource==null?"\\N":fstrTaskSource, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecode1==null?"\\N":fstrDecode1, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecode2==null?"\\N":fstrDecode2, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecodeCategory==null?"\\N":fstrDecodeCategory, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecodeType==null?"\\N":fstrDecodeType, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecodeStage==null?"\\N":fstrDecodeStage, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecodeAssignedTo==null?"\\N":fstrDecodeAssignedTo, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDescription==null?"\\N":fstrDescription, " ", delimiters));
    if (useRecordDelim) {
      __sb.append(delimiters.getLinesTerminatedBy());
    }
    return __sb.toString();
  }
  public void toString0(DelimiterSet delimiters, StringBuilder __sb, char fieldDelim) {
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrLanguage==null?"\\N":fstrLanguage, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrTaskSource==null?"\\N":fstrTaskSource, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecode1==null?"\\N":fstrDecode1, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecode2==null?"\\N":fstrDecode2, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecodeCategory==null?"\\N":fstrDecodeCategory, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecodeType==null?"\\N":fstrDecodeType, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecodeStage==null?"\\N":fstrDecodeStage, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDecodeAssignedTo==null?"\\N":fstrDecodeAssignedTo, " ", delimiters));
    __sb.append(fieldDelim);
    // special case for strings hive, replacing delimiters \n,\r,\01 with ' ' from strings
    __sb.append(FieldFormatter.hiveStringReplaceDelims(fstrDescription==null?"\\N":fstrDescription, " ", delimiters));
  }
  private static final DelimiterSet __inputDelimiters = new DelimiterSet((char) 1, (char) 10, (char) 34, (char) 92, false);
  private RecordParser __parser;
  public void parse(Text __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharSequence __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(byte [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(char [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(ByteBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  private void __loadFromFields(List<String> fields) {
    Iterator<String> __it = fields.listIterator();
    String __cur_str = null;
    try {
    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrLanguage = null; } else {
      this.fstrLanguage = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrTaskSource = null; } else {
      this.fstrTaskSource = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecode1 = null; } else {
      this.fstrDecode1 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecode2 = null; } else {
      this.fstrDecode2 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecodeCategory = null; } else {
      this.fstrDecodeCategory = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecodeType = null; } else {
      this.fstrDecodeType = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecodeStage = null; } else {
      this.fstrDecodeStage = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecodeAssignedTo = null; } else {
      this.fstrDecodeAssignedTo = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDescription = null; } else {
      this.fstrDescription = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  private void __loadFromFields0(Iterator<String> __it) {
    String __cur_str = null;
    try {
    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrLanguage = null; } else {
      this.fstrLanguage = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrTaskSource = null; } else {
      this.fstrTaskSource = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecode1 = null; } else {
      this.fstrDecode1 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecode2 = null; } else {
      this.fstrDecode2 = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecodeCategory = null; } else {
      this.fstrDecodeCategory = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecodeType = null; } else {
      this.fstrDecodeType = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecodeStage = null; } else {
      this.fstrDecodeStage = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDecodeAssignedTo = null; } else {
      this.fstrDecodeAssignedTo = __cur_str;
    }

    if (__it.hasNext()) {
        __cur_str = __it.next();
    } else {
        __cur_str = "null";
    }
    if (__cur_str.equals("null")) { this.fstrDescription = null; } else {
      this.fstrDescription = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    lantasksource o = (lantasksource) super.clone();
    return o;
  }

  public void clone0(lantasksource o) throws CloneNotSupportedException {
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new HashMap<String, Object>();
    __sqoop$field_map.put("fstrLanguage", this.fstrLanguage);
    __sqoop$field_map.put("fstrTaskSource", this.fstrTaskSource);
    __sqoop$field_map.put("fstrDecode1", this.fstrDecode1);
    __sqoop$field_map.put("fstrDecode2", this.fstrDecode2);
    __sqoop$field_map.put("fstrDecodeCategory", this.fstrDecodeCategory);
    __sqoop$field_map.put("fstrDecodeType", this.fstrDecodeType);
    __sqoop$field_map.put("fstrDecodeStage", this.fstrDecodeStage);
    __sqoop$field_map.put("fstrDecodeAssignedTo", this.fstrDecodeAssignedTo);
    __sqoop$field_map.put("fstrDescription", this.fstrDescription);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("fstrLanguage", this.fstrLanguage);
    __sqoop$field_map.put("fstrTaskSource", this.fstrTaskSource);
    __sqoop$field_map.put("fstrDecode1", this.fstrDecode1);
    __sqoop$field_map.put("fstrDecode2", this.fstrDecode2);
    __sqoop$field_map.put("fstrDecodeCategory", this.fstrDecodeCategory);
    __sqoop$field_map.put("fstrDecodeType", this.fstrDecodeType);
    __sqoop$field_map.put("fstrDecodeStage", this.fstrDecodeStage);
    __sqoop$field_map.put("fstrDecodeAssignedTo", this.fstrDecodeAssignedTo);
    __sqoop$field_map.put("fstrDescription", this.fstrDescription);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if (!setters.containsKey(__fieldName)) {
      throw new RuntimeException("No such field:"+__fieldName);
    }
    setters.get(__fieldName).setField(__fieldVal);
  }

}