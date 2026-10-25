.class final Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# instance fields
.field private locals:[I

.field private localsTop:I

.field private rawStackMap:[B

.field private rawStackMapTop:I

.field private stack:[I

.field private stackTop:I

.field private superBlocks:[Lorg/mozilla/classfile/SuperBlock;

.field final synthetic this$0:Lorg/mozilla/classfile/ClassFileWriter;

.field private wide:Z

.field private workList:[Lorg/mozilla/classfile/SuperBlock;

.field private workListTop:I


# direct methods
.method constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    iput-boolean p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    return-void
.end method

.method private addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->isInQueue()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/SuperBlock;->setInQueue(Z)V

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/SuperBlock;->setInitialized(Z)V

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    array-length v2, v1

    if-ne v0, v2, :cond_1e

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/mozilla/classfile/SuperBlock;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    :cond_1e
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    aput-object p1, v0, v1

    :cond_28
    return-void
.end method

.method private clearStack()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    return-void
.end method

.method private computeRawStackMap()V
    .registers 14

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getTrimmedLocals()[I

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    :goto_c
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v6, v5

    if-ge v4, v6, :cond_7b

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/mozilla/classfile/SuperBlock;->getTrimmedLocals()[I

    move-result-object v6

    invoke-virtual {v5}, Lorg/mozilla/classfile/SuperBlock;->getStack()[I

    move-result-object v7

    invoke-virtual {v5}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int/2addr v8, v2

    array-length v3, v7

    if-nez v3, :cond_5f

    array-length v3, v0

    array-length v9, v6

    if-le v3, v9, :cond_2a

    array-length v3, v6

    goto :goto_2b

    :cond_2a
    array-length v3, v0

    :goto_2b
    array-length v9, v0

    array-length v10, v6

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_33
    if-ge v10, v3, :cond_3f

    aget v11, v0, v10

    aget v12, v6, v10

    if-eq v11, v12, :cond_3c

    goto :goto_3f

    :cond_3c
    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    :cond_3f
    :goto_3f
    array-length v3, v6

    if-ne v10, v3, :cond_48

    if-nez v9, :cond_48

    invoke-direct {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeSameFrame(I)V

    goto :goto_73

    :cond_48
    array-length v3, v6

    const/4 v11, 0x3

    if-ne v10, v3, :cond_52

    if-gt v9, v11, :cond_52

    invoke-direct {p0, v9, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeChopFrame(II)V

    goto :goto_73

    :cond_52
    array-length v0, v0

    if-ne v10, v0, :cond_5b

    if-gt v9, v11, :cond_5b

    invoke-direct {p0, v6, v9, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeAppendFrame([III)V

    goto :goto_73

    :cond_5b
    invoke-direct {p0, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    goto :goto_73

    :cond_5f
    array-length v3, v7

    if-ne v3, v2, :cond_70

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-direct {p0, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeSameLocalsOneStackItemFrame([II)V

    goto :goto_73

    :cond_6c
    invoke-direct {p0, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    goto :goto_73

    :cond_70
    invoke-direct {p0, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    :goto_73
    invoke-virtual {v5}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    move-object v0, v6

    goto :goto_c

    :cond_7b
    return-void
.end method

.method private execute(I)I
    .registers 13

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v0

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const-string v1, "V"

    const/16 v2, 0x29

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_3c2

    :pswitch_1a  #0xa8, 0xa9, 0xab, 0xc5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_31  #0xc4
    iput-boolean v10, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    goto/16 :goto_3ad

    :pswitch_35  #0xc0
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    add-int/2addr p1, v10

    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_46  #0xbf
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->clearStack()V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_52  #0xbd
    add-int/2addr p1, v10

    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_8b  #0xbc
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v1

    add-int/2addr p1, v10

    aget-byte p1, v1, p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(I)C

    move-result p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_c0  #0xbb
    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->UNINITIALIZED_VARIABLE(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_c9  #0xba
    add-int/2addr p1, v10

    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1000(Ljava/lang/String;)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x10

    const/4 v4, 0x0

    :goto_e1
    if-ge v4, v3, :cond_e9

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_e1

    :cond_e9
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3ad

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_10b  #0xb6, 0xb7, 0xb8, 0xb9
    add-int/2addr p1, v10

    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-virtual {p1}, Lorg/mozilla/classfile/FieldOrMethodRef;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/mozilla/classfile/FieldOrMethodRef;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$1000(Ljava/lang/String;)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x10

    const/4 v6, 0x0

    :goto_12b
    if-ge v6, v5, :cond_133

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_12b

    :cond_133
    const/16 v5, 0xb8

    if-eq v0, v5, :cond_165

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v5

    invoke-static {v5}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v6

    invoke-static {v7}, Lorg/mozilla/classfile/TypeInfo;->UNINITIALIZED_VARIABLE(I)I

    move-result v8

    if-eq v6, v8, :cond_147

    if-ne v6, v3, :cond_165

    :cond_147
    const-string v3, "<init>"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15d

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1100(Lorg/mozilla/classfile/ClassFileWriter;)S

    move-result p1

    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result p1

    invoke-direct {p0, v5, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->initializeTypeInfo(II)V

    goto :goto_165

    :cond_15d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_165
    :goto_165
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/2addr p1, v10

    invoke-virtual {v4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3ad

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_187  #0xb4
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_18a  #0xb2
    add-int/2addr p1, v10

    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-virtual {p1}, Lorg/mozilla/classfile/FieldOrMethodRef;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_1b2  #0xac, 0xad, 0xae, 0xaf, 0xb0, 0xb1
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->clearStack()V

    goto/16 :goto_3ad

    :pswitch_1b7  #0xaa
    add-int/lit8 v1, p1, 0x1

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v2, v6

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v2

    add-int/lit8 v3, v1, 0x8

    invoke-direct {p0, v3, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    sub-int/2addr v3, p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto/16 :goto_3ae

    :pswitch_1d4  #0x5f
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_1e4  #0x5e
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v3

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    invoke-direct {p0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    goto/16 :goto_3ad

    :pswitch_1f7  #0x5d
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    goto/16 :goto_3ad

    :pswitch_20a  #0x5c
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    goto/16 :goto_3ad

    :pswitch_216  #0x5b
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_229  #0x5a
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_23c  #0x59
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :pswitch_248  #0x58
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    goto/16 :goto_3ad

    :pswitch_24d  #0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_250  #0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xb5
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_253  #0x57, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0xb3, 0xc2, 0xc3, 0xc6, 0xc7
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto/16 :goto_3ad

    :pswitch_258  #0x4b, 0x4c, 0x4d, 0x4e
    add-int/lit8 p1, v0, -0x4b

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeAStore(I)V

    goto/16 :goto_3ad

    :pswitch_25f  #0x47, 0x48, 0x49, 0x4a
    add-int/lit8 p1, v0, -0x47

    invoke-direct {p0, p1, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_3ad

    :pswitch_266  #0x43, 0x44, 0x45, 0x46
    add-int/lit8 p1, v0, -0x43

    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_3ad

    :pswitch_26d  #0x3f, 0x40, 0x41, 0x42
    add-int/lit8 p1, v0, -0x3f

    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_3ad

    :pswitch_274  #0x3b, 0x3c, 0x3d, 0x3e
    add-int/lit8 p1, v0, -0x3b

    invoke-direct {p0, p1, v10}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_3ad

    :pswitch_27b  #0x3a
    add-int/2addr p1, v10

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_281

    goto :goto_282

    :cond_281
    const/4 v9, 0x1

    :goto_282
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeAStore(I)V

    goto/16 :goto_3ad

    :pswitch_28b  #0x39
    add-int/2addr p1, v10

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_291

    goto :goto_292

    :cond_291
    const/4 v9, 0x1

    :goto_292
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    invoke-direct {p0, p1, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_3ad

    :pswitch_29b  #0x38
    add-int/2addr p1, v10

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_2a1

    const/4 v10, 0x2

    :cond_2a1
    invoke-direct {p0, p1, v10}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_3ad

    :pswitch_2aa  #0x37
    add-int/2addr p1, v10

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_2b0

    goto :goto_2b1

    :cond_2b0
    const/4 v9, 0x1

    :goto_2b1
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_3ad

    :pswitch_2ba  #0x36
    add-int/2addr p1, v10

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_2c0

    goto :goto_2c1

    :cond_2c0
    const/4 v9, 0x1

    :goto_2c1
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    invoke-direct {p0, p1, v10}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_3ad

    :pswitch_2ca  #0x32
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    ushr-int/2addr p1, v5

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_301

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_3ad

    :cond_301
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad array type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_309  #0x31, 0x63, 0x67, 0x6b, 0x6f, 0x73
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_30c  #0x77, 0x87, 0x8a, 0x8d
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto/16 :goto_39a

    :pswitch_311  #0x30, 0x62, 0x66, 0x6a, 0x6e, 0x72
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_314  #0x76, 0x86, 0x89, 0x90
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto/16 :goto_39e

    :pswitch_319  #0x2f, 0x61, 0x65, 0x69, 0x6d, 0x71, 0x79, 0x7b, 0x7d, 0x7f, 0x81, 0x83
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_31c  #0x75, 0x85, 0x8c, 0x8f
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto/16 :goto_3a2

    :pswitch_321  #0x2e, 0x33, 0x34, 0x35, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x78, 0x7a, 0x7c, 0x7e, 0x80, 0x82, 0x94, 0x95, 0x96, 0x97, 0x98
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_324  #0x74, 0x88, 0x8b, 0x8e, 0x91, 0x92, 0x93, 0xbe, 0xc1
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto/16 :goto_3a6

    :pswitch_329  #0x2a, 0x2b, 0x2c, 0x2d
    add-int/lit8 p1, v0, -0x2a

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeALoad(I)V

    goto/16 :goto_3ad

    :pswitch_330  #0x19
    add-int/2addr p1, v10

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_336

    goto :goto_337

    :cond_336
    const/4 v9, 0x1

    :goto_337
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeALoad(I)V

    goto/16 :goto_3ad

    :pswitch_340  #0x12, 0x13, 0x14
    const/16 v1, 0x12

    if-ne v0, v1, :cond_34a

    add-int/2addr p1, v10

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result p1

    goto :goto_34f

    :cond_34a
    add-int/2addr p1, v10

    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    :goto_34f
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantType(I)B

    move-result p1

    if-eq p1, v6, :cond_396

    if-eq p1, v8, :cond_392

    if-eq p1, v4, :cond_38e

    if-eq p1, v3, :cond_38a

    if-ne p1, v5, :cond_373

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object p1

    const-string v1, "java/lang/String"

    invoke-static {v1, p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_3ad

    :cond_373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad const type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38a
    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_3ad

    :cond_38e
    invoke-direct {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_3ad

    :cond_392
    invoke-direct {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_3ad

    :cond_396
    invoke-direct {p0, v10}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_3ad

    :goto_39a
    :pswitch_39a  #0xe, 0xf, 0x18, 0x26, 0x27, 0x28, 0x29
    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_3ad

    :goto_39e
    :pswitch_39e  #0xb, 0xc, 0xd, 0x17, 0x22, 0x23, 0x24, 0x25
    invoke-direct {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_3ad

    :goto_3a2
    :pswitch_3a2  #0x9, 0xa, 0x16, 0x1e, 0x1f, 0x20, 0x21
    invoke-direct {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_3ad

    :goto_3a6
    :pswitch_3a6  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x10, 0x11, 0x15, 0x1a, 0x1b, 0x1c, 0x1d
    invoke-direct {p0, v10}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_3ad

    :pswitch_3aa  #0x1
    invoke-direct {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    :cond_3ad
    :goto_3ad
    :pswitch_3ad  #0x0, 0x84, 0xa7, 0xc8
    const/4 v3, 0x0

    :goto_3ae
    if-nez v3, :cond_3b6

    iget-boolean p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    invoke-static {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1300(IZ)I

    move-result v3

    :cond_3b6
    iget-boolean p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz p1, :cond_3c0

    const/16 p1, 0xc4

    if-eq v0, p1, :cond_3c0

    iput-boolean v7, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    :cond_3c0
    return v3

    nop

    :pswitch_data_3c2
    .packed-switch 0x0
        :pswitch_3ad  #00000000
        :pswitch_3aa  #00000001
        :pswitch_3a6  #00000002
        :pswitch_3a6  #00000003
        :pswitch_3a6  #00000004
        :pswitch_3a6  #00000005
        :pswitch_3a6  #00000006
        :pswitch_3a6  #00000007
        :pswitch_3a6  #00000008
        :pswitch_3a2  #00000009
        :pswitch_3a2  #0000000a
        :pswitch_39e  #0000000b
        :pswitch_39e  #0000000c
        :pswitch_39e  #0000000d
        :pswitch_39a  #0000000e
        :pswitch_39a  #0000000f
        :pswitch_3a6  #00000010
        :pswitch_3a6  #00000011
        :pswitch_340  #00000012
        :pswitch_340  #00000013
        :pswitch_340  #00000014
        :pswitch_3a6  #00000015
        :pswitch_3a2  #00000016
        :pswitch_39e  #00000017
        :pswitch_39a  #00000018
        :pswitch_330  #00000019
        :pswitch_3a6  #0000001a
        :pswitch_3a6  #0000001b
        :pswitch_3a6  #0000001c
        :pswitch_3a6  #0000001d
        :pswitch_3a2  #0000001e
        :pswitch_3a2  #0000001f
        :pswitch_3a2  #00000020
        :pswitch_3a2  #00000021
        :pswitch_39e  #00000022
        :pswitch_39e  #00000023
        :pswitch_39e  #00000024
        :pswitch_39e  #00000025
        :pswitch_39a  #00000026
        :pswitch_39a  #00000027
        :pswitch_39a  #00000028
        :pswitch_39a  #00000029
        :pswitch_329  #0000002a
        :pswitch_329  #0000002b
        :pswitch_329  #0000002c
        :pswitch_329  #0000002d
        :pswitch_321  #0000002e
        :pswitch_319  #0000002f
        :pswitch_311  #00000030
        :pswitch_309  #00000031
        :pswitch_2ca  #00000032
        :pswitch_321  #00000033
        :pswitch_321  #00000034
        :pswitch_321  #00000035
        :pswitch_2ba  #00000036
        :pswitch_2aa  #00000037
        :pswitch_29b  #00000038
        :pswitch_28b  #00000039
        :pswitch_27b  #0000003a
        :pswitch_274  #0000003b
        :pswitch_274  #0000003c
        :pswitch_274  #0000003d
        :pswitch_274  #0000003e
        :pswitch_26d  #0000003f
        :pswitch_26d  #00000040
        :pswitch_26d  #00000041
        :pswitch_26d  #00000042
        :pswitch_266  #00000043
        :pswitch_266  #00000044
        :pswitch_266  #00000045
        :pswitch_266  #00000046
        :pswitch_25f  #00000047
        :pswitch_25f  #00000048
        :pswitch_25f  #00000049
        :pswitch_25f  #0000004a
        :pswitch_258  #0000004b
        :pswitch_258  #0000004c
        :pswitch_258  #0000004d
        :pswitch_258  #0000004e
        :pswitch_24d  #0000004f
        :pswitch_24d  #00000050
        :pswitch_24d  #00000051
        :pswitch_24d  #00000052
        :pswitch_24d  #00000053
        :pswitch_24d  #00000054
        :pswitch_24d  #00000055
        :pswitch_24d  #00000056
        :pswitch_253  #00000057
        :pswitch_248  #00000058
        :pswitch_23c  #00000059
        :pswitch_229  #0000005a
        :pswitch_216  #0000005b
        :pswitch_20a  #0000005c
        :pswitch_1f7  #0000005d
        :pswitch_1e4  #0000005e
        :pswitch_1d4  #0000005f
        :pswitch_321  #00000060
        :pswitch_319  #00000061
        :pswitch_311  #00000062
        :pswitch_309  #00000063
        :pswitch_321  #00000064
        :pswitch_319  #00000065
        :pswitch_311  #00000066
        :pswitch_309  #00000067
        :pswitch_321  #00000068
        :pswitch_319  #00000069
        :pswitch_311  #0000006a
        :pswitch_309  #0000006b
        :pswitch_321  #0000006c
        :pswitch_319  #0000006d
        :pswitch_311  #0000006e
        :pswitch_309  #0000006f
        :pswitch_321  #00000070
        :pswitch_319  #00000071
        :pswitch_311  #00000072
        :pswitch_309  #00000073
        :pswitch_324  #00000074
        :pswitch_31c  #00000075
        :pswitch_314  #00000076
        :pswitch_30c  #00000077
        :pswitch_321  #00000078
        :pswitch_319  #00000079
        :pswitch_321  #0000007a
        :pswitch_319  #0000007b
        :pswitch_321  #0000007c
        :pswitch_319  #0000007d
        :pswitch_321  #0000007e
        :pswitch_319  #0000007f
        :pswitch_321  #00000080
        :pswitch_319  #00000081
        :pswitch_321  #00000082
        :pswitch_319  #00000083
        :pswitch_3ad  #00000084
        :pswitch_31c  #00000085
        :pswitch_314  #00000086
        :pswitch_30c  #00000087
        :pswitch_324  #00000088
        :pswitch_314  #00000089
        :pswitch_30c  #0000008a
        :pswitch_324  #0000008b
        :pswitch_31c  #0000008c
        :pswitch_30c  #0000008d
        :pswitch_324  #0000008e
        :pswitch_31c  #0000008f
        :pswitch_314  #00000090
        :pswitch_324  #00000091
        :pswitch_324  #00000092
        :pswitch_324  #00000093
        :pswitch_321  #00000094
        :pswitch_321  #00000095
        :pswitch_321  #00000096
        :pswitch_321  #00000097
        :pswitch_321  #00000098
        :pswitch_253  #00000099
        :pswitch_253  #0000009a
        :pswitch_253  #0000009b
        :pswitch_253  #0000009c
        :pswitch_253  #0000009d
        :pswitch_253  #0000009e
        :pswitch_250  #0000009f
        :pswitch_250  #000000a0
        :pswitch_250  #000000a1
        :pswitch_250  #000000a2
        :pswitch_250  #000000a3
        :pswitch_250  #000000a4
        :pswitch_250  #000000a5
        :pswitch_250  #000000a6
        :pswitch_3ad  #000000a7
        :pswitch_1a  #000000a8
        :pswitch_1a  #000000a9
        :pswitch_1b7  #000000aa
        :pswitch_1a  #000000ab
        :pswitch_1b2  #000000ac
        :pswitch_1b2  #000000ad
        :pswitch_1b2  #000000ae
        :pswitch_1b2  #000000af
        :pswitch_1b2  #000000b0
        :pswitch_1b2  #000000b1
        :pswitch_18a  #000000b2
        :pswitch_253  #000000b3
        :pswitch_187  #000000b4
        :pswitch_250  #000000b5
        :pswitch_10b  #000000b6
        :pswitch_10b  #000000b7
        :pswitch_10b  #000000b8
        :pswitch_10b  #000000b9
        :pswitch_c9  #000000ba
        :pswitch_c0  #000000bb
        :pswitch_8b  #000000bc
        :pswitch_52  #000000bd
        :pswitch_324  #000000be
        :pswitch_46  #000000bf
        :pswitch_35  #000000c0
        :pswitch_324  #000000c1
        :pswitch_253  #000000c2
        :pswitch_253  #000000c3
        :pswitch_31  #000000c4
        :pswitch_1a  #000000c5
        :pswitch_253  #000000c6
        :pswitch_253  #000000c7
        :pswitch_3ad  #000000c8
    .end packed-switch
.end method

.method private executeALoad(I)V
    .registers 6

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getLocal(I)I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_35

    const/4 v2, 0x6

    if-eq v1, v2, :cond_35

    const/16 v2, 0x8

    if-eq v1, v2, :cond_35

    const/4 v2, 0x5

    if-ne v1, v2, :cond_16

    goto :goto_35

    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad local variable type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at index: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    :goto_35
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    return-void
.end method

.method private executeAStore(I)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->setLocal(II)V

    return-void
.end method

.method private executeBlock(Lorg/mozilla/classfile/SuperBlock;)V
    .registers 16

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_cd

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v2

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->execute(I)I

    move-result v3

    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->isBranch(I)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getBranchTarget(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    goto :goto_66

    :cond_29
    const/16 v5, 0xaa

    if-ne v2, v5, :cond_66

    add-int/lit8 v5, v0, 0x1

    xor-int/lit8 v6, v0, -0x1

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v7

    add-int/2addr v7, v0

    invoke-direct {p0, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    add-int/lit8 v7, v5, 0x4

    invoke-direct {p0, v7, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v7

    add-int/lit8 v8, v5, 0x8

    invoke-direct {p0, v8, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v8

    sub-int/2addr v8, v7

    add-int/2addr v8, v4

    add-int/lit8 v5, v5, 0xc

    const/4 v7, 0x0

    :goto_52
    if-ge v7, v8, :cond_66

    mul-int/lit8 v9, v7, 0x4

    add-int/2addr v9, v5

    invoke-direct {p0, v9, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v9

    add-int/2addr v9, v0

    invoke-direct {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    :cond_66
    :goto_66
    const/4 v5, 0x0

    :goto_67
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v6}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v6

    if-ge v5, v6, :cond_ca

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v6}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v6

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v8, v6, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v7

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v9, v6, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v8

    if-lt v0, v7, :cond_c7

    if-lt v0, v8, :cond_8c

    goto :goto_c7

    :cond_8c
    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v8, v6, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v7

    iget-short v6, v6, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    if-nez v6, :cond_ad

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v6}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v6

    const-string v8, "java/lang/Throwable"

    invoke-virtual {v6, v8}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v6

    invoke-static {v6}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v6

    goto :goto_b1

    :cond_ad
    invoke-static {v6}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v6

    :goto_b1
    iget-object v9, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iget v10, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    new-array v11, v4, [I

    aput v6, v11, v1

    const/4 v12, 0x1

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v6}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v13

    move-object v8, v7

    invoke-virtual/range {v8 .. v13}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    invoke-direct {p0, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V

    :cond_c7
    :goto_c7
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :cond_ca
    add-int/2addr v0, v3

    goto/16 :goto_6

    :cond_cd
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->isSuperBlockEnd(I)Z

    move-result v0

    if-nez v0, :cond_e2

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getIndex()I

    move-result p1

    add-int/2addr p1, v4

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v1, v0

    if-ge p1, v1, :cond_e2

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    :cond_e2
    return-void
.end method

.method private executeStore(II)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    invoke-direct {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->setLocal(II)V

    return-void
.end method

.method private executeWorkList()V
    .registers 4

    :goto_0
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    if-lez v0, :cond_28

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    aget-object v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/SuperBlock;->setInQueue(Z)V

    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getLocals()[I

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getStack()[I

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    array-length v2, v2

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    array-length v1, v1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeBlock(Lorg/mozilla/classfile/SuperBlock;)V

    goto :goto_0

    :cond_28
    return-void
.end method

.method private flowInto(Lorg/mozilla/classfile/SuperBlock;)V
    .registers 8

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V

    :cond_18
    return-void
.end method

.method private getBranchTarget(I)Lorg/mozilla/classfile/SuperBlock;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v0

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_16

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v0

    goto :goto_1e

    :cond_16
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v0

    int-to-short v0, v0

    :goto_1e
    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object p1

    return-object p1
.end method

.method private getLocal(I)I
    .registers 3

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    aget p1, v0, p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private getOperand(I)I
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    return p1
.end method

.method private getOperand(II)I
    .registers 7

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1a

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    if-ge v0, p2, :cond_19

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v2

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    return v1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad operand size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    :goto_22
    throw p1

    :goto_23
    goto :goto_22
.end method

.method private getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    aget-object v1, v1, v0

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v2

    if-lt p1, v2, :cond_17

    invoke-virtual {v1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v2

    if-ge p1, v2, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :goto_31
    throw v0

    :goto_32
    goto :goto_31
.end method

.method private getWorstCaseWriteSize()I
    .registers 4

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1400(Lorg/mozilla/classfile/ClassFileWriter;)S

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$1500(Lorg/mozilla/classfile/ClassFileWriter;)S

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    return v0
.end method

.method private initializeTypeInfo(II)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->initializeTypeInfo(II[II)V

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->initializeTypeInfo(II[II)V

    return-void
.end method

.method private initializeTypeInfo(II[II)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_c

    aget v1, p3, v0

    if-ne v1, p1, :cond_9

    aput p2, p3, v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method private isBranch(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_a

    packed-switch p1, :pswitch_data_2c

    const/4 p1, 0x0

    return p1

    :pswitch_8  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xc6, 0xc7, 0xc8
    const/4 p1, 0x1

    return p1

    :pswitch_data_a
    .packed-switch 0x99
        :pswitch_8  #00000099
        :pswitch_8  #0000009a
        :pswitch_8  #0000009b
        :pswitch_8  #0000009c
        :pswitch_8  #0000009d
        :pswitch_8  #0000009e
        :pswitch_8  #0000009f
        :pswitch_8  #000000a0
        :pswitch_8  #000000a1
        :pswitch_8  #000000a2
        :pswitch_8  #000000a3
        :pswitch_8  #000000a4
        :pswitch_8  #000000a5
        :pswitch_8  #000000a6
        :pswitch_8  #000000a7
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0xc6
        :pswitch_8  #000000c6
        :pswitch_8  #000000c7
        :pswitch_8  #000000c8
    .end packed-switch
.end method

.method private isSuperBlockEnd(I)Z
    .registers 3

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_19

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_19

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_19

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_19

    const/16 v0, 0xb1

    if-eq p1, v0, :cond_19

    packed-switch p1, :pswitch_data_1c

    const/4 p1, 0x0

    return p1

    :cond_19
    :pswitch_19  #0xaa, 0xab, 0xac, 0xad, 0xae
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_1c
    .packed-switch 0xaa
        :pswitch_19  #000000aa
        :pswitch_19  #000000ab
        :pswitch_19  #000000ac
        :pswitch_19  #000000ad
        :pswitch_19  #000000ae
    .end packed-switch
.end method

.method private killSuperBlock(Lorg/mozilla/classfile/SuperBlock;)V
    .registers 11

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/4 v2, 0x1

    new-array v6, v2, [I

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v3

    const-string v4, "java/lang/Throwable"

    invoke-static {v4, v3}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v3

    aput v3, v6, v0

    const/4 v3, 0x0

    :goto_15
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v4

    if-ge v3, v4, :cond_67

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v7, v4, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    invoke-virtual {v5, v7}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v5

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v8, v4, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v7

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v4, v4, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {v8, v4}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v4

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v8

    if-le v8, v5, :cond_4d

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v8

    if-lt v8, v7, :cond_5f

    :cond_4d
    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v7

    if-le v5, v7, :cond_64

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v7

    if-ge v5, v7, :cond_64

    invoke-virtual {v4}, Lorg/mozilla/classfile/SuperBlock;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_64

    :cond_5f
    invoke-virtual {v4}, Lorg/mozilla/classfile/SuperBlock;->getLocals()[I

    move-result-object v1

    goto :goto_67

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_67
    :goto_67
    move-object v4, v1

    const/4 v1, 0x0

    :goto_69
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v3

    if-ge v1, v3, :cond_af

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v3, v3, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    invoke-virtual {v5, v3}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v5

    if-ne v3, v5, :cond_ad

    add-int/lit8 v3, v1, 0x1

    :goto_89
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v5

    if-ge v3, v5, :cond_a6

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v5

    add-int/lit8 v7, v3, -0x1

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v8}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v8

    aget-object v8, v8, v3

    aput-object v8, v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    :cond_a6
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$410(Lorg/mozilla/classfile/ClassFileWriter;)I

    add-int/lit8 v1, v1, -0x1

    :cond_ad
    add-int/2addr v1, v2

    goto :goto_69

    :cond_af
    array-length v5, v4

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v8

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v2

    const/16 v3, -0x41

    aput-byte v3, v2, v1

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result p1

    :goto_ce
    if-ge p1, v1, :cond_db

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v2

    aput-byte v0, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_ce

    :cond_db
    return-void
.end method

.method private pop()I
    .registers 3

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    aget v0, v0, v1

    return v0
.end method

.method private pop2()J
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v0

    int-to-long v0, v0

    long-to-int v2, v0

    invoke-static {v2}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v2

    if-eqz v2, :cond_d

    return-wide v0

    :cond_d
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private push(I)V
    .registers 6

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1a

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    :cond_1a
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    aput p1, v0, v1

    return-void
.end method

.method private push2(J)V
    .registers 8

    const-wide/32 v0, 0xffffff

    and-long v2, p1, v0

    long-to-int v3, v2

    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    const/16 v2, 0x20

    ushr-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_17

    and-long/2addr p1, v0

    long-to-int p2, p1

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    :cond_17
    return-void
.end method

.method private setLocal(II)V
    .registers 8

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    if-lt p1, v0, :cond_12

    add-int/lit8 v1, p1, 0x1

    new-array v2, v1, [I

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    :cond_12
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    aput p2, v0, p1

    return-void
.end method

.method private verify()V
    .registers 9

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$100(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    const/4 v7, 0x0

    aget-object v1, v0, v7

    array-length v3, v2

    new-array v4, v7, [I

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/mozilla/classfile/SuperBlock;

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    aget-object v2, v2, v7

    aput-object v2, v1, v7

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeWorkList()V

    :goto_28
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v1, v0

    if-ge v7, v1, :cond_3b

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->killSuperBlock(Lorg/mozilla/classfile/SuperBlock;)V

    :cond_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_3b
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeWorkList()V

    return-void
.end method

.method private writeAppendFrame([III)V
    .registers 8

    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit16 p2, p2, 0xfb

    int-to-byte p2, p2

    aput-byte p2, v1, v2

    invoke-static {p3, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iput p2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([II)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return-void
.end method

.method private writeChopFrame(II)V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    rsub-int p1, p1, 0xfb

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return-void
.end method

.method private writeFullFrame([I[II)V
    .registers 8

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/4 v3, -0x1

    aput-byte v3, v0, v1

    invoke-static {p3, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p3

    iput p3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    array-length v0, p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    invoke-static {v0, v1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p3

    iput p3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([I)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    array-length p3, p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    invoke-static {p3, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([I)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return-void
.end method

.method private writeSameFrame(I)V
    .registers 6

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_10

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_21

    :cond_10
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/4 v3, -0x5

    aput-byte v3, v0, v1

    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    :goto_21
    return-void
.end method

.method private writeSameLocalsOneStackItemFrame([II)V
    .registers 7

    const/16 v0, 0x3f

    if-gt p2, v0, :cond_12

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 p2, p2, 0x40

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    goto :goto_24

    :cond_12
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/16 v3, -0x9

    aput-byte v3, v0, v1

    invoke-static {p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iput p2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    :goto_24
    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeType(I)I

    return-void
.end method

.method private writeType(I)I
    .registers 7

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    int-to-byte v4, v0

    aput-byte v4, v1, v2

    const/16 v2, 0x8

    const/4 v4, 0x7

    if-eq v0, v4, :cond_14

    if-ne v0, v2, :cond_1b

    :cond_14
    ushr-int/2addr p1, v2

    invoke-static {p1, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    :cond_1b
    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return p1
.end method

.method private writeTypes([I)I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([II)I

    move-result p1

    return p1
.end method

.method private writeTypes([II)I
    .registers 4

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_e

    aget v0, p1, p2

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeType(I)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_e
    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return p1
.end method


# virtual methods
.method computeWriteSize()I
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getWorstCaseWriteSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->computeRawStackMap()V

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method generate()V
    .registers 7

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$000(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v0

    new-array v0, v0, [Lorg/mozilla/classfile/SuperBlock;

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$100(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$000(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v2

    if-ge v1, v2, :cond_48

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$200(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v2

    aget v2, v2, v1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$000(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_32

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$300(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v3

    goto :goto_3c

    :cond_32
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$200(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    :goto_3c
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    new-instance v5, Lorg/mozilla/classfile/SuperBlock;

    invoke-direct {v5, v1, v2, v3, v0}, Lorg/mozilla/classfile/SuperBlock;-><init>(III[I)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_48
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->verify()V

    return-void
.end method

.method write([BI)I
    .registers 6

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/2addr p2, p1

    return p2
.end method
