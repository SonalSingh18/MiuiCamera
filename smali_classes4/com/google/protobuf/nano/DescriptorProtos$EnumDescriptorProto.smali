.class public final Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;


# instance fields
.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

.field public reservedName:[Ljava/lang/String;

.field public reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

.field public value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 4
    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 4
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    .line 5
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v3

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 7
    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    .line 8
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-eqz v1, :cond_3

    const/4 v4, 0x3

    .line 10
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v3

    .line 12
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    array-length v5, v4

    if-ge v1, v5, :cond_5

    .line 13
    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    const/4 v5, 0x4

    .line 14
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v3

    move v4, v1

    .line 16
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_7

    .line 17
    aget-object v5, v5, v3

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    .line 18
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v0, v1

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_10

    const/16 v1, 0xa

    if-eq v0, v1, :cond_f

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 3
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 6
    new-array v3, v0, [Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 11
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 14
    new-array v3, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    if-eqz v1, :cond_7

    .line 15
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    .line 16
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;-><init>()V

    aput-object v2, v3, v1

    .line 17
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 19
    :cond_8
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;-><init>()V

    aput-object v0, v3, v1

    .line 20
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 21
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    goto/16 :goto_0

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_a

    .line 23
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 25
    :cond_b
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_5

    :cond_c
    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 27
    new-array v3, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-eqz v1, :cond_d

    .line 28
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_e

    .line 29
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    aput-object v2, v3, v1

    .line 30
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 32
    :cond_e
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    aput-object v0, v3, v1

    .line 33
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 34
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    goto/16 :goto_0

    .line 35
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 5
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 6
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 8
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 10
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 11
    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    .line 12
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    .line 14
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 15
    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x5

    .line 16
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
