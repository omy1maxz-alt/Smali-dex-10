.class public Lorg/mozilla/classfile/ClassFileWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# static fields
.field private static final GenerateStackMap:Z

.field private static final MajorVersion:I

.field private static final MinorVersion:I


# instance fields
.field private generatedClassName:Ljava/lang/String;

.field private itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

.field private itsBootstrapMethodsLength:I

.field private itsCodeBuffer:[B

.field private itsCodeBufferTop:I

.field private itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

.field private itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

.field private itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

.field private itsExceptionTableTop:I

.field private itsFields:Lorg/mozilla/javascript/ObjArray;

.field private itsFixupTable:[J

.field private itsFixupTableTop:I

.field private itsFlags:S

.field private itsInterfaces:Lorg/mozilla/javascript/ObjArray;

.field private itsJumpFroms:Lorg/mozilla/javascript/UintMap;

.field private itsLabelTable:[I

.field private itsLabelTableTop:I

.field private itsLineNumberTable:[I

.field private itsLineNumberTableTop:I

.field private itsMaxLocals:S

.field private itsMaxStack:S

.field private itsMethods:Lorg/mozilla/javascript/ObjArray;

.field private itsSourceFileNameIndex:S

.field private itsStackTop:S

.field private itsSuperBlockStarts:[I

.field private itsSuperBlockStartsTop:I

.field private itsSuperClassIndex:S

.field private itsThisClassIndex:S

.field private itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

.field private tmpCharBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x30

    :try_start_4
    const-class v3, Lorg/mozilla/classfile/ClassFileWriter;

    const-string v4, "ClassFileWriter.class"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_14

    const-string v3, "org/mozilla/classfile/ClassFileWriter.class"

    invoke-static {v3}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_14
    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v3, :cond_2b

    rsub-int/lit8 v6, v5, 0x8

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_25

    add-int/2addr v5, v6

    goto :goto_19

    :cond_25
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_2b
    const/4 v5, 0x4

    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    const/4 v6, 0x5

    aget-byte v6, v4, v6
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_32} :catch_61
    .catchall {:try_start_4 .. :try_end_32} :catchall_53

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/4 v6, 0x6

    :try_start_36
    aget-byte v6, v4, v6

    shl-int/lit8 v3, v6, 0x8

    const/4 v6, 0x7

    aget-byte v2, v4, v6
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_62
    .catchall {:try_start_36 .. :try_end_3d} :catchall_51

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    sput v5, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    sput v2, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    const/16 v3, 0x32

    if-lt v2, v3, :cond_49

    const/4 v0, 0x1

    :cond_49
    sput-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v1, :cond_6b

    :goto_4d
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_6b

    goto :goto_6b

    :catchall_51
    move-exception v3

    goto :goto_55

    :catchall_53
    move-exception v3

    const/4 v5, 0x0

    :goto_55
    sput v5, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    sput v2, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    sput-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v1, :cond_60

    :try_start_5d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_60

    :catch_60
    :cond_60
    throw v3

    :catch_61
    const/4 v5, 0x0

    :catch_62
    sput v5, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    sput v2, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    sput-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v1, :cond_6b

    goto :goto_4d

    :catch_6b
    :cond_6b
    :goto_6b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->generatedClassName:Ljava/lang/String;

    new-instance v0, Lorg/mozilla/classfile/ConstantPool;

    invoke-direct {v0, p0}, Lorg/mozilla/classfile/ConstantPool;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:S

    if-eqz p3, :cond_4f

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    :cond_4f
    const/16 p1, 0x21

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:S

    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/classfile/ClassFileWriter;)I
    .registers 1

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    return p0
.end method

.method static synthetic access$100(Lorg/mozilla/classfile/ClassFileWriter;)[I
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->createInitialLocals()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/mozilla/classfile/ClassFileWriter;)S
    .registers 1

    iget-short p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    return p0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(IZ)I
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->opcodeLength(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/mozilla/classfile/ClassFileWriter;)S
    .registers 1

    iget-short p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    return p0
.end method

.method static synthetic access$1500(Lorg/mozilla/classfile/ClassFileWriter;)S
    .registers 1

    iget-short p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    return p0
.end method

.method static synthetic access$200(Lorg/mozilla/classfile/ClassFileWriter;)[I
    .registers 1

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    return-object p0
.end method

.method static synthetic access$300(Lorg/mozilla/classfile/ClassFileWriter;)I
    .registers 1

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return p0
.end method

.method static synthetic access$400(Lorg/mozilla/classfile/ClassFileWriter;)I
    .registers 1

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return p0
.end method

.method static synthetic access$410(Lorg/mozilla/classfile/ClassFileWriter;)I
    .registers 3

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return v0
.end method

.method static synthetic access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    return-object p0
.end method

.method static synthetic access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B
    .registers 1

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    return-object p0
.end method

.method static synthetic access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    return-object p0
.end method

.method static synthetic access$900(I)C
    .registers 1

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->arrayTypeToName(I)C

    move-result p0

    return p0
.end method

.method private addLabelFixup(II)V
    .registers 7

    if-gez p1, :cond_3e

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-ge p1, v0, :cond_36

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    if-eqz v1, :cond_13

    array-length v2, v1

    if-ne v0, v2, :cond_27

    :cond_13
    if-nez v1, :cond_1c

    const/16 v1, 0x28

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    goto :goto_27

    :cond_1c
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    :cond_27
    :goto_27
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long p1, p2

    or-long/2addr p1, v2

    aput-wide p1, v1, v0

    return-void

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label, no biscuit"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addReservedCodeSpace(I)I
    .registers 6

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-eqz v0, :cond_1d

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    array-length v2, v1

    if-le p1, v2, :cond_1a

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_12

    move v2, p1

    :cond_12
    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    :cond_1a
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return v0

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No method to add to"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addSuperBlockStart(I)V
    .registers 6

    sget-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    if-nez v0, :cond_e

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    goto :goto_1d

    :cond_e
    array-length v1, v0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    if-ne v1, v2, :cond_1d

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    aput p1, v0, v1

    :cond_27
    return-void
.end method

.method private addToCodeBuffer(I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void
.end method

.method private addToCodeInt16(I)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p1, v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    return-void
.end method

.method private static arrayTypeToName(I)C
    .registers 2

    packed-switch p0, :pswitch_data_24

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad operand"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b  #0xb
    const/16 p0, 0x4a

    return p0

    :pswitch_e  #0xa
    const/16 p0, 0x49

    return p0

    :pswitch_11  #0x9
    const/16 p0, 0x53

    return p0

    :pswitch_14  #0x8
    const/16 p0, 0x42

    return p0

    :pswitch_17  #0x7
    const/16 p0, 0x44

    return p0

    :pswitch_1a  #0x6
    const/16 p0, 0x46

    return p0

    :pswitch_1d  #0x5
    const/16 p0, 0x43

    return p0

    :pswitch_20  #0x4
    const/16 p0, 0x5a

    return p0

    nop

    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_20  #00000004
        :pswitch_1d  #00000005
        :pswitch_1a  #00000006
        :pswitch_17  #00000007
        :pswitch_14  #00000008
        :pswitch_11  #00000009
        :pswitch_e  #0000000a
        :pswitch_b  #0000000b
    .end packed-switch
.end method

.method private static badStack(I)V
    .registers 3

    if-gez p0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack underflow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too big stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static classDescriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static classNameToSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [C

    const/16 v4, 0x4c

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/16 v4, 0x3b

    aput-char v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {p0, v5, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_17
    if-eq v4, v1, :cond_26

    aget-char p0, v3, v4

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_23

    const/16 p0, 0x2f

    aput-char p0, v3, v4

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method private createInitialLocals()[I
    .registers 11

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileMethod;->getFlags()S

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileMethod;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "<init>"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x6

    aput v1, v0, v2

    goto :goto_2a

    :cond_22
    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    invoke-static {v1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v1

    aput v1, v0, v2

    :goto_2a
    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileMethod;->getType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x29

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-nez v5, :cond_ae

    if-ltz v6, :cond_ae

    add-int/2addr v5, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_49
    if-ge v5, v6, :cond_ad

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x46

    if-eq v8, v9, :cond_85

    const/16 v9, 0x4c

    if-eq v8, v9, :cond_75

    const/16 v9, 0x53

    if-eq v8, v9, :cond_85

    const/16 v9, 0x49

    if-eq v8, v9, :cond_85

    const/16 v9, 0x4a

    if-eq v8, v9, :cond_85

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_85

    const/16 v9, 0x5b

    if-eq v8, v9, :cond_6f

    packed-switch v8, :pswitch_data_b8

    goto :goto_8e

    :cond_6f
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_75
    const/16 v8, 0x3b

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v8

    goto :goto_8e

    :cond_85
    :pswitch_85  #0x42, 0x43, 0x44
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :goto_8e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-static {v8, v9}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v8

    add-int/lit8 v9, v1, 0x1

    aput v8, v0, v1

    invoke-static {v8}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v1

    if-eqz v1, :cond_a8

    add-int/lit8 v9, v9, 0x1

    :cond_a8
    move v1, v9

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_49

    :cond_ad
    return-object v0

    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad method type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b7

    :goto_b6
    throw v0

    :goto_b7
    goto :goto_b6

    :pswitch_data_b8
    .packed-switch 0x42
        :pswitch_85  #00000042
        :pswitch_85  #00000043
        :pswitch_85  #00000044
    .end packed-switch
.end method

.method private static descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_43

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x53

    if-eq v0, v1, :cond_43

    const/16 v1, 0x56

    if-eq v0, v1, :cond_43

    const/16 v1, 0x49

    if-eq v0, v1, :cond_43

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_43

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_43

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_43

    packed-switch v0, :pswitch_data_44

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->classDescriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_43
    :pswitch_43  #0x42, 0x43, 0x44
    return-object p0

    :pswitch_data_44
    .packed-switch 0x42
        :pswitch_43  #00000042
        :pswitch_43  #00000043
        :pswitch_43  #00000044
    .end packed-switch
.end method

.method private finalizeSuperBlockStarts()V
    .registers 7

    sget-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aget-object v2, v2, v1

    iget v2, v2, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->sort([III)V

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_28
    iget v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    if-ge v2, v4, :cond_3c

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    aget v5, v4, v2

    if-eq v0, v5, :cond_39

    if-eq v3, v2, :cond_36

    aput v5, v4, v3

    :cond_36
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3c
    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    add-int/lit8 v2, v3, -0x1

    aget v0, v0, v2

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    if-ne v0, v2, :cond_4b

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    :cond_4b
    return-void
.end method

.method private fixLabelGotos()V
    .registers 9

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    if-ge v2, v3, :cond_45

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    aget-wide v4, v3, v2

    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    long-to-int v5, v4

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget v3, v4, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3c

    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v3, v6}, Lorg/mozilla/javascript/UintMap;->put(II)V

    sub-int/2addr v3, v6

    int-to-short v4, v3

    if-ne v4, v3, :cond_34

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_34
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v1, "Program too complex: too big jump offset"

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unlocated label"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    return-void
.end method

.method static getSlashedForm(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWriteSize()I
    .registers 5

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    :cond_b
    const/16 v0, 0x8

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ConstantPool;->getWriteSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_29
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/classfile/ClassFileField;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileField;->getWriteSize()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_41
    add-int/lit8 v0, v0, 0x2

    :goto_43
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileMethod;->getWriteSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_5b
    add-int/lit8 v0, v0, 0x2

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v1, :cond_67

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    :cond_67
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    if-eqz v1, :cond_74

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    add-int/2addr v0, v1

    :cond_74
    return v0
.end method

.method private static opcodeCount(I)I
    .registers 4

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_2b

    const/16 v0, 0xff

    if-eq p0, v0, :cond_2b

    packed-switch p0, :pswitch_data_2e

    packed-switch p0, :pswitch_data_1a6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25  #0xaa, 0xab
    const/4 p0, -0x1

    return p0

    :pswitch_27  #0x84, 0xc5
    const/4 p0, 0x2

    return p0

    :pswitch_29  #0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xbb, 0xbc, 0xbd, 0xc0, 0xc1, 0xc6, 0xc7, 0xc8, 0xc9
    const/4 p0, 0x1

    return p0

    :cond_2b
    :pswitch_2b  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0xac, 0xad, 0xae, 0xaf, 0xb0, 0xb1, 0xbe, 0xbf, 0xc2, 0xc3, 0xc4, 0xca
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b  #00000000
        :pswitch_2b  #00000001
        :pswitch_2b  #00000002
        :pswitch_2b  #00000003
        :pswitch_2b  #00000004
        :pswitch_2b  #00000005
        :pswitch_2b  #00000006
        :pswitch_2b  #00000007
        :pswitch_2b  #00000008
        :pswitch_2b  #00000009
        :pswitch_2b  #0000000a
        :pswitch_2b  #0000000b
        :pswitch_2b  #0000000c
        :pswitch_2b  #0000000d
        :pswitch_2b  #0000000e
        :pswitch_2b  #0000000f
        :pswitch_29  #00000010
        :pswitch_29  #00000011
        :pswitch_29  #00000012
        :pswitch_29  #00000013
        :pswitch_29  #00000014
        :pswitch_29  #00000015
        :pswitch_29  #00000016
        :pswitch_29  #00000017
        :pswitch_29  #00000018
        :pswitch_29  #00000019
        :pswitch_2b  #0000001a
        :pswitch_2b  #0000001b
        :pswitch_2b  #0000001c
        :pswitch_2b  #0000001d
        :pswitch_2b  #0000001e
        :pswitch_2b  #0000001f
        :pswitch_2b  #00000020
        :pswitch_2b  #00000021
        :pswitch_2b  #00000022
        :pswitch_2b  #00000023
        :pswitch_2b  #00000024
        :pswitch_2b  #00000025
        :pswitch_2b  #00000026
        :pswitch_2b  #00000027
        :pswitch_2b  #00000028
        :pswitch_2b  #00000029
        :pswitch_2b  #0000002a
        :pswitch_2b  #0000002b
        :pswitch_2b  #0000002c
        :pswitch_2b  #0000002d
        :pswitch_2b  #0000002e
        :pswitch_2b  #0000002f
        :pswitch_2b  #00000030
        :pswitch_2b  #00000031
        :pswitch_2b  #00000032
        :pswitch_2b  #00000033
        :pswitch_2b  #00000034
        :pswitch_2b  #00000035
        :pswitch_29  #00000036
        :pswitch_29  #00000037
        :pswitch_29  #00000038
        :pswitch_29  #00000039
        :pswitch_29  #0000003a
        :pswitch_2b  #0000003b
        :pswitch_2b  #0000003c
        :pswitch_2b  #0000003d
        :pswitch_2b  #0000003e
        :pswitch_2b  #0000003f
        :pswitch_2b  #00000040
        :pswitch_2b  #00000041
        :pswitch_2b  #00000042
        :pswitch_2b  #00000043
        :pswitch_2b  #00000044
        :pswitch_2b  #00000045
        :pswitch_2b  #00000046
        :pswitch_2b  #00000047
        :pswitch_2b  #00000048
        :pswitch_2b  #00000049
        :pswitch_2b  #0000004a
        :pswitch_2b  #0000004b
        :pswitch_2b  #0000004c
        :pswitch_2b  #0000004d
        :pswitch_2b  #0000004e
        :pswitch_2b  #0000004f
        :pswitch_2b  #00000050
        :pswitch_2b  #00000051
        :pswitch_2b  #00000052
        :pswitch_2b  #00000053
        :pswitch_2b  #00000054
        :pswitch_2b  #00000055
        :pswitch_2b  #00000056
        :pswitch_2b  #00000057
        :pswitch_2b  #00000058
        :pswitch_2b  #00000059
        :pswitch_2b  #0000005a
        :pswitch_2b  #0000005b
        :pswitch_2b  #0000005c
        :pswitch_2b  #0000005d
        :pswitch_2b  #0000005e
        :pswitch_2b  #0000005f
        :pswitch_2b  #00000060
        :pswitch_2b  #00000061
        :pswitch_2b  #00000062
        :pswitch_2b  #00000063
        :pswitch_2b  #00000064
        :pswitch_2b  #00000065
        :pswitch_2b  #00000066
        :pswitch_2b  #00000067
        :pswitch_2b  #00000068
        :pswitch_2b  #00000069
        :pswitch_2b  #0000006a
        :pswitch_2b  #0000006b
        :pswitch_2b  #0000006c
        :pswitch_2b  #0000006d
        :pswitch_2b  #0000006e
        :pswitch_2b  #0000006f
        :pswitch_2b  #00000070
        :pswitch_2b  #00000071
        :pswitch_2b  #00000072
        :pswitch_2b  #00000073
        :pswitch_2b  #00000074
        :pswitch_2b  #00000075
        :pswitch_2b  #00000076
        :pswitch_2b  #00000077
        :pswitch_2b  #00000078
        :pswitch_2b  #00000079
        :pswitch_2b  #0000007a
        :pswitch_2b  #0000007b
        :pswitch_2b  #0000007c
        :pswitch_2b  #0000007d
        :pswitch_2b  #0000007e
        :pswitch_2b  #0000007f
        :pswitch_2b  #00000080
        :pswitch_2b  #00000081
        :pswitch_2b  #00000082
        :pswitch_2b  #00000083
        :pswitch_27  #00000084
        :pswitch_2b  #00000085
        :pswitch_2b  #00000086
        :pswitch_2b  #00000087
        :pswitch_2b  #00000088
        :pswitch_2b  #00000089
        :pswitch_2b  #0000008a
        :pswitch_2b  #0000008b
        :pswitch_2b  #0000008c
        :pswitch_2b  #0000008d
        :pswitch_2b  #0000008e
        :pswitch_2b  #0000008f
        :pswitch_2b  #00000090
        :pswitch_2b  #00000091
        :pswitch_2b  #00000092
        :pswitch_2b  #00000093
        :pswitch_2b  #00000094
        :pswitch_2b  #00000095
        :pswitch_2b  #00000096
        :pswitch_2b  #00000097
        :pswitch_2b  #00000098
        :pswitch_29  #00000099
        :pswitch_29  #0000009a
        :pswitch_29  #0000009b
        :pswitch_29  #0000009c
        :pswitch_29  #0000009d
        :pswitch_29  #0000009e
        :pswitch_29  #0000009f
        :pswitch_29  #000000a0
        :pswitch_29  #000000a1
        :pswitch_29  #000000a2
        :pswitch_29  #000000a3
        :pswitch_29  #000000a4
        :pswitch_29  #000000a5
        :pswitch_29  #000000a6
        :pswitch_29  #000000a7
        :pswitch_29  #000000a8
        :pswitch_29  #000000a9
        :pswitch_25  #000000aa
        :pswitch_25  #000000ab
        :pswitch_2b  #000000ac
        :pswitch_2b  #000000ad
        :pswitch_2b  #000000ae
        :pswitch_2b  #000000af
        :pswitch_2b  #000000b0
        :pswitch_2b  #000000b1
        :pswitch_29  #000000b2
        :pswitch_29  #000000b3
        :pswitch_29  #000000b4
        :pswitch_29  #000000b5
        :pswitch_29  #000000b6
        :pswitch_29  #000000b7
        :pswitch_29  #000000b8
        :pswitch_29  #000000b9
    .end packed-switch

    :pswitch_data_1a6
    .packed-switch 0xbb
        :pswitch_29  #000000bb
        :pswitch_29  #000000bc
        :pswitch_29  #000000bd
        :pswitch_2b  #000000be
        :pswitch_2b  #000000bf
        :pswitch_29  #000000c0
        :pswitch_29  #000000c1
        :pswitch_2b  #000000c2
        :pswitch_2b  #000000c3
        :pswitch_2b  #000000c4
        :pswitch_27  #000000c5
        :pswitch_29  #000000c6
        :pswitch_29  #000000c7
        :pswitch_29  #000000c8
        :pswitch_29  #000000c9
        :pswitch_2b  #000000ca
    .end packed-switch
.end method

.method private static opcodeLength(IZ)I
    .registers 5

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_36

    const/16 v0, 0xff

    if-eq p0, v0, :cond_36

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x3

    packed-switch p0, :pswitch_data_38

    packed-switch p0, :pswitch_data_190

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_28  #0xc5
    const/4 p0, 0x4

    return p0

    :pswitch_2a  #0xb9, 0xba, 0xc8, 0xc9
    return v0

    :pswitch_2b  #0x84
    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x3

    :goto_2f
    return v0

    :pswitch_30  #0x15, 0x16, 0x17, 0x18, 0x19, 0x36, 0x37, 0x38, 0x39, 0x3a, 0xa9
    if-eqz p1, :cond_33

    const/4 v1, 0x3

    :cond_33
    return v1

    :pswitch_34  #0x11, 0x13, 0x14, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xbb, 0xbd, 0xc0, 0xc1, 0xc6, 0xc7
    return v2

    :pswitch_35  #0x10, 0x12, 0xbc
    return v1

    :cond_36
    :pswitch_36  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0xac, 0xad, 0xae, 0xaf, 0xb0, 0xb1, 0xbe, 0xbf, 0xc2, 0xc3, 0xc4, 0xca
    const/4 p0, 0x1

    return p0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_36  #00000001
        :pswitch_36  #00000002
        :pswitch_36  #00000003
        :pswitch_36  #00000004
        :pswitch_36  #00000005
        :pswitch_36  #00000006
        :pswitch_36  #00000007
        :pswitch_36  #00000008
        :pswitch_36  #00000009
        :pswitch_36  #0000000a
        :pswitch_36  #0000000b
        :pswitch_36  #0000000c
        :pswitch_36  #0000000d
        :pswitch_36  #0000000e
        :pswitch_36  #0000000f
        :pswitch_35  #00000010
        :pswitch_34  #00000011
        :pswitch_35  #00000012
        :pswitch_34  #00000013
        :pswitch_34  #00000014
        :pswitch_30  #00000015
        :pswitch_30  #00000016
        :pswitch_30  #00000017
        :pswitch_30  #00000018
        :pswitch_30  #00000019
        :pswitch_36  #0000001a
        :pswitch_36  #0000001b
        :pswitch_36  #0000001c
        :pswitch_36  #0000001d
        :pswitch_36  #0000001e
        :pswitch_36  #0000001f
        :pswitch_36  #00000020
        :pswitch_36  #00000021
        :pswitch_36  #00000022
        :pswitch_36  #00000023
        :pswitch_36  #00000024
        :pswitch_36  #00000025
        :pswitch_36  #00000026
        :pswitch_36  #00000027
        :pswitch_36  #00000028
        :pswitch_36  #00000029
        :pswitch_36  #0000002a
        :pswitch_36  #0000002b
        :pswitch_36  #0000002c
        :pswitch_36  #0000002d
        :pswitch_36  #0000002e
        :pswitch_36  #0000002f
        :pswitch_36  #00000030
        :pswitch_36  #00000031
        :pswitch_36  #00000032
        :pswitch_36  #00000033
        :pswitch_36  #00000034
        :pswitch_36  #00000035
        :pswitch_30  #00000036
        :pswitch_30  #00000037
        :pswitch_30  #00000038
        :pswitch_30  #00000039
        :pswitch_30  #0000003a
        :pswitch_36  #0000003b
        :pswitch_36  #0000003c
        :pswitch_36  #0000003d
        :pswitch_36  #0000003e
        :pswitch_36  #0000003f
        :pswitch_36  #00000040
        :pswitch_36  #00000041
        :pswitch_36  #00000042
        :pswitch_36  #00000043
        :pswitch_36  #00000044
        :pswitch_36  #00000045
        :pswitch_36  #00000046
        :pswitch_36  #00000047
        :pswitch_36  #00000048
        :pswitch_36  #00000049
        :pswitch_36  #0000004a
        :pswitch_36  #0000004b
        :pswitch_36  #0000004c
        :pswitch_36  #0000004d
        :pswitch_36  #0000004e
        :pswitch_36  #0000004f
        :pswitch_36  #00000050
        :pswitch_36  #00000051
        :pswitch_36  #00000052
        :pswitch_36  #00000053
        :pswitch_36  #00000054
        :pswitch_36  #00000055
        :pswitch_36  #00000056
        :pswitch_36  #00000057
        :pswitch_36  #00000058
        :pswitch_36  #00000059
        :pswitch_36  #0000005a
        :pswitch_36  #0000005b
        :pswitch_36  #0000005c
        :pswitch_36  #0000005d
        :pswitch_36  #0000005e
        :pswitch_36  #0000005f
        :pswitch_36  #00000060
        :pswitch_36  #00000061
        :pswitch_36  #00000062
        :pswitch_36  #00000063
        :pswitch_36  #00000064
        :pswitch_36  #00000065
        :pswitch_36  #00000066
        :pswitch_36  #00000067
        :pswitch_36  #00000068
        :pswitch_36  #00000069
        :pswitch_36  #0000006a
        :pswitch_36  #0000006b
        :pswitch_36  #0000006c
        :pswitch_36  #0000006d
        :pswitch_36  #0000006e
        :pswitch_36  #0000006f
        :pswitch_36  #00000070
        :pswitch_36  #00000071
        :pswitch_36  #00000072
        :pswitch_36  #00000073
        :pswitch_36  #00000074
        :pswitch_36  #00000075
        :pswitch_36  #00000076
        :pswitch_36  #00000077
        :pswitch_36  #00000078
        :pswitch_36  #00000079
        :pswitch_36  #0000007a
        :pswitch_36  #0000007b
        :pswitch_36  #0000007c
        :pswitch_36  #0000007d
        :pswitch_36  #0000007e
        :pswitch_36  #0000007f
        :pswitch_36  #00000080
        :pswitch_36  #00000081
        :pswitch_36  #00000082
        :pswitch_36  #00000083
        :pswitch_2b  #00000084
        :pswitch_36  #00000085
        :pswitch_36  #00000086
        :pswitch_36  #00000087
        :pswitch_36  #00000088
        :pswitch_36  #00000089
        :pswitch_36  #0000008a
        :pswitch_36  #0000008b
        :pswitch_36  #0000008c
        :pswitch_36  #0000008d
        :pswitch_36  #0000008e
        :pswitch_36  #0000008f
        :pswitch_36  #00000090
        :pswitch_36  #00000091
        :pswitch_36  #00000092
        :pswitch_36  #00000093
        :pswitch_36  #00000094
        :pswitch_36  #00000095
        :pswitch_36  #00000096
        :pswitch_36  #00000097
        :pswitch_36  #00000098
        :pswitch_34  #00000099
        :pswitch_34  #0000009a
        :pswitch_34  #0000009b
        :pswitch_34  #0000009c
        :pswitch_34  #0000009d
        :pswitch_34  #0000009e
        :pswitch_34  #0000009f
        :pswitch_34  #000000a0
        :pswitch_34  #000000a1
        :pswitch_34  #000000a2
        :pswitch_34  #000000a3
        :pswitch_34  #000000a4
        :pswitch_34  #000000a5
        :pswitch_34  #000000a6
        :pswitch_34  #000000a7
        :pswitch_34  #000000a8
        :pswitch_30  #000000a9
    .end packed-switch

    :pswitch_data_190
    .packed-switch 0xac
        :pswitch_36  #000000ac
        :pswitch_36  #000000ad
        :pswitch_36  #000000ae
        :pswitch_36  #000000af
        :pswitch_36  #000000b0
        :pswitch_36  #000000b1
        :pswitch_34  #000000b2
        :pswitch_34  #000000b3
        :pswitch_34  #000000b4
        :pswitch_34  #000000b5
        :pswitch_34  #000000b6
        :pswitch_34  #000000b7
        :pswitch_34  #000000b8
        :pswitch_2a  #000000b9
        :pswitch_2a  #000000ba
        :pswitch_34  #000000bb
        :pswitch_35  #000000bc
        :pswitch_34  #000000bd
        :pswitch_36  #000000be
        :pswitch_36  #000000bf
        :pswitch_34  #000000c0
        :pswitch_34  #000000c1
        :pswitch_36  #000000c2
        :pswitch_36  #000000c3
        :pswitch_36  #000000c4
        :pswitch_28  #000000c5
        :pswitch_34  #000000c6
        :pswitch_34  #000000c7
        :pswitch_2a  #000000c8
        :pswitch_2a  #000000c9
        :pswitch_36  #000000ca
    .end packed-switch
.end method

.method static putInt16(I[BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x0

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x2

    return p2
.end method

.method static putInt32(I[BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x0

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x4

    return p2
.end method

.method static putInt64(J[BI)I
    .registers 6

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    invoke-static {v1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p3

    long-to-int p1, p0

    invoke-static {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p0

    return p0
.end method

.method private static sizeOfParameters(Ljava/lang/String;)I
    .registers 16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x3

    if-gt v2, v0, :cond_b2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_b2

    const/4 v3, 0x1

    if-gt v3, v1, :cond_b2

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_b2

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_20
    const/16 v7, 0x5b

    const/16 v8, 0x5a

    const/16 v9, 0x4a

    const/16 v10, 0x49

    const/16 v11, 0x53

    const/16 v12, 0x4c

    const/16 v13, 0x46

    if-eq v0, v1, :cond_84

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v13, :cond_7d

    if-eq v14, v12, :cond_69

    if-eq v14, v11, :cond_7d

    if-eq v14, v10, :cond_7d

    if-eq v14, v9, :cond_66

    if-eq v14, v8, :cond_7d

    if-eq v14, v7, :cond_47

    packed-switch v14, :pswitch_data_cc

    :cond_45
    :goto_45
    const/4 v0, 0x0

    goto :goto_85

    :cond_47
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_4d
    if-ne v14, v7, :cond_56

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_4d

    :cond_56
    if-eq v14, v13, :cond_7d

    if-eq v14, v12, :cond_69

    if-eq v14, v11, :cond_7d

    if-eq v14, v8, :cond_7d

    if-eq v14, v10, :cond_7d

    if-eq v14, v9, :cond_7d

    packed-switch v14, :pswitch_data_d6

    goto :goto_45

    :cond_66
    :pswitch_66  #0x44
    add-int/lit8 v5, v5, -0x1

    goto :goto_7d

    :cond_69
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v3

    const/16 v14, 0x3b

    invoke-virtual {p0, v14, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    add-int/2addr v0, v3

    if-gt v0, v14, :cond_45

    if-lt v14, v1, :cond_7a

    goto :goto_45

    :cond_7a
    add-int/lit8 v0, v14, 0x1

    goto :goto_20

    :cond_7d
    :goto_7d
    :pswitch_7d  #0x42, 0x43, 0x42, 0x43, 0x44
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_84
    const/4 v0, 0x1

    :goto_85
    if-eqz v0, :cond_b2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_a6

    if-eq v1, v12, :cond_a6

    if-eq v1, v11, :cond_a6

    const/16 v4, 0x56

    if-eq v1, v4, :cond_a4

    if-eq v1, v10, :cond_a6

    if-eq v1, v9, :cond_a1

    if-eq v1, v8, :cond_a6

    if-eq v1, v7, :cond_a6

    packed-switch v1, :pswitch_data_e0

    goto :goto_a8

    :cond_a1
    :pswitch_a1  #0x44
    add-int/lit8 v5, v5, 0x1

    goto :goto_a6

    :cond_a4
    :goto_a4
    move v2, v0

    goto :goto_a8

    :cond_a6
    :goto_a6
    :pswitch_a6  #0x42, 0x43
    add-int/2addr v5, v3

    goto :goto_a4

    :goto_a8
    if-eqz v2, :cond_b2

    shl-int/lit8 p0, v6, 0x10

    const v0, 0xffff

    and-int/2addr v0, v5

    or-int/2addr p0, v0

    return p0

    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad parameter signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_ca

    :goto_c9
    throw v0

    :goto_ca
    goto :goto_c9

    nop

    :pswitch_data_cc
    .packed-switch 0x42
        :pswitch_7d  #00000042
        :pswitch_7d  #00000043
        :pswitch_66  #00000044
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x42
        :pswitch_7d  #00000042
        :pswitch_7d  #00000043
        :pswitch_7d  #00000044
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x42
        :pswitch_a6  #00000042
        :pswitch_a6  #00000043
        :pswitch_a1  #00000044
    .end packed-switch
.end method

.method private static stackChange(I)I
    .registers 4

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_2e

    const/16 v0, 0xff

    if-eq p0, v0, :cond_2e

    packed-switch p0, :pswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x50, 0x52
    const/4 p0, -0x4

    return p0

    :pswitch_24  #0x4f, 0x51, 0x53, 0x54, 0x55, 0x56, 0x94, 0x97, 0x98
    const/4 p0, -0x3

    return p0

    :pswitch_26  #0x37, 0x39, 0x3f, 0x40, 0x41, 0x42, 0x47, 0x48, 0x49, 0x4a, 0x58, 0x61, 0x63, 0x65, 0x67, 0x69, 0x6b, 0x6d, 0x6f, 0x71, 0x73, 0x7f, 0x81, 0x83, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xad, 0xaf
    const/4 p0, -0x2

    return p0

    :pswitch_28  #0x2e, 0x30, 0x32, 0x33, 0x34, 0x35, 0x36, 0x38, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x43, 0x44, 0x45, 0x46, 0x4b, 0x4c, 0x4d, 0x4e, 0x57, 0x60, 0x62, 0x64, 0x66, 0x68, 0x6a, 0x6c, 0x6e, 0x70, 0x72, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x80, 0x82, 0x88, 0x89, 0x8e, 0x90, 0x95, 0x96, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0xaa, 0xab, 0xac, 0xae, 0xb0, 0xb4, 0xb5, 0xb6, 0xb7, 0xb9, 0xbf, 0xc2, 0xc3, 0xc6, 0xc7
    const/4 p0, -0x1

    return p0

    :pswitch_2a  #0x9, 0xa, 0xe, 0xf, 0x14, 0x16, 0x18, 0x1e, 0x1f, 0x20, 0x21, 0x26, 0x27, 0x28, 0x29, 0x5c, 0x5d, 0x5e
    const/4 p0, 0x2

    return p0

    :pswitch_2c  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xb, 0xc, 0xd, 0x10, 0x11, 0x12, 0x13, 0x15, 0x17, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x22, 0x23, 0x24, 0x25, 0x2a, 0x2b, 0x2c, 0x2d, 0x59, 0x5a, 0x5b, 0x85, 0x87, 0x8c, 0x8d, 0xa8, 0xbb, 0xc5, 0xc9
    const/4 p0, 0x1

    return p0

    :cond_2e
    :pswitch_2e  #0x0, 0x2f, 0x31, 0x5f, 0x74, 0x75, 0x76, 0x77, 0x84, 0x86, 0x8a, 0x8b, 0x8f, 0x91, 0x92, 0x93, 0xa7, 0xa9, 0xb1, 0xb2, 0xb3, 0xb8, 0xba, 0xbc, 0xbd, 0xbe, 0xc0, 0xc1, 0xc4, 0xc8, 0xca
    const/4 p0, 0x0

    return p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_2c  #00000001
        :pswitch_2c  #00000002
        :pswitch_2c  #00000003
        :pswitch_2c  #00000004
        :pswitch_2c  #00000005
        :pswitch_2c  #00000006
        :pswitch_2c  #00000007
        :pswitch_2c  #00000008
        :pswitch_2a  #00000009
        :pswitch_2a  #0000000a
        :pswitch_2c  #0000000b
        :pswitch_2c  #0000000c
        :pswitch_2c  #0000000d
        :pswitch_2a  #0000000e
        :pswitch_2a  #0000000f
        :pswitch_2c  #00000010
        :pswitch_2c  #00000011
        :pswitch_2c  #00000012
        :pswitch_2c  #00000013
        :pswitch_2a  #00000014
        :pswitch_2c  #00000015
        :pswitch_2a  #00000016
        :pswitch_2c  #00000017
        :pswitch_2a  #00000018
        :pswitch_2c  #00000019
        :pswitch_2c  #0000001a
        :pswitch_2c  #0000001b
        :pswitch_2c  #0000001c
        :pswitch_2c  #0000001d
        :pswitch_2a  #0000001e
        :pswitch_2a  #0000001f
        :pswitch_2a  #00000020
        :pswitch_2a  #00000021
        :pswitch_2c  #00000022
        :pswitch_2c  #00000023
        :pswitch_2c  #00000024
        :pswitch_2c  #00000025
        :pswitch_2a  #00000026
        :pswitch_2a  #00000027
        :pswitch_2a  #00000028
        :pswitch_2a  #00000029
        :pswitch_2c  #0000002a
        :pswitch_2c  #0000002b
        :pswitch_2c  #0000002c
        :pswitch_2c  #0000002d
        :pswitch_28  #0000002e
        :pswitch_2e  #0000002f
        :pswitch_28  #00000030
        :pswitch_2e  #00000031
        :pswitch_28  #00000032
        :pswitch_28  #00000033
        :pswitch_28  #00000034
        :pswitch_28  #00000035
        :pswitch_28  #00000036
        :pswitch_26  #00000037
        :pswitch_28  #00000038
        :pswitch_26  #00000039
        :pswitch_28  #0000003a
        :pswitch_28  #0000003b
        :pswitch_28  #0000003c
        :pswitch_28  #0000003d
        :pswitch_28  #0000003e
        :pswitch_26  #0000003f
        :pswitch_26  #00000040
        :pswitch_26  #00000041
        :pswitch_26  #00000042
        :pswitch_28  #00000043
        :pswitch_28  #00000044
        :pswitch_28  #00000045
        :pswitch_28  #00000046
        :pswitch_26  #00000047
        :pswitch_26  #00000048
        :pswitch_26  #00000049
        :pswitch_26  #0000004a
        :pswitch_28  #0000004b
        :pswitch_28  #0000004c
        :pswitch_28  #0000004d
        :pswitch_28  #0000004e
        :pswitch_24  #0000004f
        :pswitch_22  #00000050
        :pswitch_24  #00000051
        :pswitch_22  #00000052
        :pswitch_24  #00000053
        :pswitch_24  #00000054
        :pswitch_24  #00000055
        :pswitch_24  #00000056
        :pswitch_28  #00000057
        :pswitch_26  #00000058
        :pswitch_2c  #00000059
        :pswitch_2c  #0000005a
        :pswitch_2c  #0000005b
        :pswitch_2a  #0000005c
        :pswitch_2a  #0000005d
        :pswitch_2a  #0000005e
        :pswitch_2e  #0000005f
        :pswitch_28  #00000060
        :pswitch_26  #00000061
        :pswitch_28  #00000062
        :pswitch_26  #00000063
        :pswitch_28  #00000064
        :pswitch_26  #00000065
        :pswitch_28  #00000066
        :pswitch_26  #00000067
        :pswitch_28  #00000068
        :pswitch_26  #00000069
        :pswitch_28  #0000006a
        :pswitch_26  #0000006b
        :pswitch_28  #0000006c
        :pswitch_26  #0000006d
        :pswitch_28  #0000006e
        :pswitch_26  #0000006f
        :pswitch_28  #00000070
        :pswitch_26  #00000071
        :pswitch_28  #00000072
        :pswitch_26  #00000073
        :pswitch_2e  #00000074
        :pswitch_2e  #00000075
        :pswitch_2e  #00000076
        :pswitch_2e  #00000077
        :pswitch_28  #00000078
        :pswitch_28  #00000079
        :pswitch_28  #0000007a
        :pswitch_28  #0000007b
        :pswitch_28  #0000007c
        :pswitch_28  #0000007d
        :pswitch_28  #0000007e
        :pswitch_26  #0000007f
        :pswitch_28  #00000080
        :pswitch_26  #00000081
        :pswitch_28  #00000082
        :pswitch_26  #00000083
        :pswitch_2e  #00000084
        :pswitch_2c  #00000085
        :pswitch_2e  #00000086
        :pswitch_2c  #00000087
        :pswitch_28  #00000088
        :pswitch_28  #00000089
        :pswitch_2e  #0000008a
        :pswitch_2e  #0000008b
        :pswitch_2c  #0000008c
        :pswitch_2c  #0000008d
        :pswitch_28  #0000008e
        :pswitch_2e  #0000008f
        :pswitch_28  #00000090
        :pswitch_2e  #00000091
        :pswitch_2e  #00000092
        :pswitch_2e  #00000093
        :pswitch_24  #00000094
        :pswitch_28  #00000095
        :pswitch_28  #00000096
        :pswitch_24  #00000097
        :pswitch_24  #00000098
        :pswitch_28  #00000099
        :pswitch_28  #0000009a
        :pswitch_28  #0000009b
        :pswitch_28  #0000009c
        :pswitch_28  #0000009d
        :pswitch_28  #0000009e
        :pswitch_26  #0000009f
        :pswitch_26  #000000a0
        :pswitch_26  #000000a1
        :pswitch_26  #000000a2
        :pswitch_26  #000000a3
        :pswitch_26  #000000a4
        :pswitch_26  #000000a5
        :pswitch_26  #000000a6
        :pswitch_2e  #000000a7
        :pswitch_2c  #000000a8
        :pswitch_2e  #000000a9
        :pswitch_28  #000000aa
        :pswitch_28  #000000ab
        :pswitch_28  #000000ac
        :pswitch_26  #000000ad
        :pswitch_28  #000000ae
        :pswitch_26  #000000af
        :pswitch_28  #000000b0
        :pswitch_2e  #000000b1
        :pswitch_2e  #000000b2
        :pswitch_2e  #000000b3
        :pswitch_28  #000000b4
        :pswitch_28  #000000b5
        :pswitch_28  #000000b6
        :pswitch_28  #000000b7
        :pswitch_2e  #000000b8
        :pswitch_28  #000000b9
        :pswitch_2e  #000000ba
        :pswitch_2c  #000000bb
        :pswitch_2e  #000000bc
        :pswitch_2e  #000000bd
        :pswitch_2e  #000000be
        :pswitch_28  #000000bf
        :pswitch_2e  #000000c0
        :pswitch_2e  #000000c1
        :pswitch_28  #000000c2
        :pswitch_28  #000000c3
        :pswitch_2e  #000000c4
        :pswitch_2c  #000000c5
        :pswitch_28  #000000c6
        :pswitch_28  #000000c7
        :pswitch_2e  #000000c8
        :pswitch_2c  #000000c9
        :pswitch_2e  #000000ca
    .end packed-switch
.end method

.method private xop(III)V
    .registers 5

    if-eqz p3, :cond_1e

    const/4 v0, 0x1

    if-eq p3, v0, :cond_19

    const/4 v0, 0x2

    if-eq p3, v0, :cond_14

    const/4 v0, 0x3

    if-eq p3, v0, :cond_f

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_21

    :cond_f
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_21

    :cond_14
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_21

    :cond_19
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_21

    :cond_1e
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_21
    return-void
.end method


# virtual methods
.method public acquireLabel()I
    .registers 5

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    if-eqz v1, :cond_9

    array-length v2, v1

    if-ne v0, v2, :cond_1d

    :cond_9
    if-nez v1, :cond_12

    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    goto :goto_1d

    :cond_12
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    :cond_1d
    :goto_1d
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    return v0
.end method

.method public add(I)V
    .registers 5

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->opcodeCount(I)I

    move-result v0

    if-nez v0, :cond_2c

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_13

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_16

    :cond_13
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_16
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    int-to-short v1, v0

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, v2, :cond_22

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_22
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_2b

    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    :cond_2b
    return-void

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected operands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(II)V
    .registers 8

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_d

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_10

    :cond_d
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_10
    const/16 v1, 0xb4

    const/high16 v2, 0x10000

    if-eq p1, v1, :cond_114

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_114

    const/16 v1, 0xbc

    const-string v3, "out of range index"

    const/16 v4, 0x100

    if-eq p1, v1, :cond_103

    const/16 v1, 0xc6

    if-eq p1, v1, :cond_ba

    const/16 v1, 0xc7

    if-eq p1, v1, :cond_ba

    packed-switch p1, :pswitch_data_130

    packed-switch p1, :pswitch_data_148

    packed-switch p1, :pswitch_data_156

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected opcode for 1 operand"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3b  #0xa7
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    goto/16 :goto_ba

    :pswitch_44  #0x15, 0x16, 0x17, 0x18, 0x19, 0x36, 0x37, 0x38, 0x39, 0x3a, 0xa9
    if-ltz p2, :cond_5f

    if-le v2, p2, :cond_5f

    if-lt p2, v4, :cond_57

    const/16 v1, 0xc4

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_11e

    :cond_57
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_11e

    :cond_5f
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string p2, "out of range variable"

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_67  #0x12, 0x13, 0x14
    if-ltz p2, :cond_8e

    if-ge p2, v2, :cond_8e

    const/16 v1, 0x13

    if-ge p2, v4, :cond_7e

    if-eq p1, v1, :cond_7e

    const/16 v2, 0x14

    if-ne p1, v2, :cond_76

    goto :goto_7e

    :cond_76
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_11e

    :cond_7e
    :goto_7e
    const/16 v2, 0x12

    if-ne p1, v2, :cond_86

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_89

    :cond_86
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    :goto_89
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_11e

    :cond_8e
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    invoke-direct {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_94  #0x11
    int-to-short v1, p2

    if-ne v1, p2, :cond_9f

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_11e

    :cond_9f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range short"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a7  #0x10
    int-to-byte v1, p2

    if-ne v1, p2, :cond_b2

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_11e

    :cond_b2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range byte"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ba
    :goto_ba
    :pswitch_ba  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa8
    const/high16 v1, -0x80000000

    and-int v2, p2, v1

    if-eq v2, v1, :cond_d0

    if-ltz p2, :cond_c8

    const v3, 0xffff

    if-gt p2, v3, :cond_c8

    goto :goto_d0

    :cond_c8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label for branch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d0
    :goto_d0
    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    if-eq v2, v1, :cond_e4

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    add-int/2addr p2, v3

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, p2, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    goto :goto_11e

    :cond_e4
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_f9

    sub-int p2, p1, v3

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p2, p1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    goto :goto_11e

    :cond_f9
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addLabelFixup(II)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto :goto_11e

    :cond_103
    if-ltz p2, :cond_10e

    if-ge p2, v4, :cond_10e

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_11e

    :cond_10e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_114
    if-ltz p2, :cond_128

    if-ge p2, v2, :cond_128

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    :goto_11e
    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, p2, :cond_127

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_127
    return-void

    :cond_128
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_130
    .packed-switch 0x10
        :pswitch_a7  #00000010
        :pswitch_94  #00000011
        :pswitch_67  #00000012
        :pswitch_67  #00000013
        :pswitch_67  #00000014
        :pswitch_44  #00000015
        :pswitch_44  #00000016
        :pswitch_44  #00000017
        :pswitch_44  #00000018
        :pswitch_44  #00000019
    .end packed-switch

    :pswitch_data_148
    .packed-switch 0x36
        :pswitch_44  #00000036
        :pswitch_44  #00000037
        :pswitch_44  #00000038
        :pswitch_44  #00000039
        :pswitch_44  #0000003a
    .end packed-switch

    :pswitch_data_156
    .packed-switch 0x99
        :pswitch_ba  #00000099
        :pswitch_ba  #0000009a
        :pswitch_ba  #0000009b
        :pswitch_ba  #0000009c
        :pswitch_ba  #0000009d
        :pswitch_ba  #0000009e
        :pswitch_ba  #0000009f
        :pswitch_ba  #000000a0
        :pswitch_ba  #000000a1
        :pswitch_ba  #000000a2
        :pswitch_ba  #000000a3
        :pswitch_ba  #000000a4
        :pswitch_ba  #000000a5
        :pswitch_ba  #000000a6
        :pswitch_3b  #000000a7
        :pswitch_ba  #000000a8
        :pswitch_44  #000000a9
    .end packed-switch
.end method

.method public add(ILjava/lang/String;)V
    .registers 5

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_d

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_10

    :cond_d
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_10
    const/16 v1, 0xbb

    if-eq p1, v1, :cond_29

    const/16 v1, 0xbd

    if-eq p1, v1, :cond_29

    const/16 v1, 0xc0

    if-eq p1, v1, :cond_29

    const/16 v1, 0xc1

    if-ne p1, v1, :cond_21

    goto :goto_29

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for class reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    :goto_29
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p2

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, p2, :cond_3e

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_3e
    return-void
.end method

.method public add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_17

    const/16 v2, 0x44

    if-ne v1, v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x2

    :goto_18
    packed-switch p1, :pswitch_data_46

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for field reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_23  #0xb3, 0xb5
    sub-int/2addr v0, v1

    goto :goto_26

    :pswitch_25  #0xb2, 0xb4
    add-int/2addr v0, v1

    :goto_26
    if-ltz v0, :cond_2c

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_2f

    :cond_2c
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_2f
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, p2, :cond_44

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0xb2
        :pswitch_25  #000000b2
        :pswitch_23  #000000b3
        :pswitch_25  #000000b4
        :pswitch_23  #000000b5
    .end packed-switch
.end method

.method public addALoad(I)V
    .registers 4

    const/16 v0, 0x2a

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addAStore(I)V
    .registers 4

    const/16 v0, 0x4b

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addDLoad(I)V
    .registers 4

    const/16 v0, 0x26

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addDStore(I)V
    .registers 4

    const/16 v0, 0x47

    const/16 v1, 0x39

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addExceptionHandler(IIILjava/lang/String;)V
    .registers 7

    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-ne v1, v0, :cond_4f

    and-int v1, p2, v0

    if-ne v1, v0, :cond_47

    and-int v1, p3, v0

    if-ne v1, v0, :cond_3f

    const/4 v0, 0x0

    if-nez p4, :cond_13

    const/4 p4, 0x0

    goto :goto_19

    :cond_13
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p4}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p4

    :goto_19
    new-instance v1, Lorg/mozilla/classfile/ExceptionTableEntry;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/mozilla/classfile/ExceptionTableEntry;-><init>(IIIS)V

    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-nez p1, :cond_28

    const/4 p2, 0x4

    new-array p2, p2, [Lorg/mozilla/classfile/ExceptionTableEntry;

    iput-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    goto :goto_36

    :cond_28
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    array-length p3, p2

    if-ne p1, p3, :cond_36

    mul-int/lit8 p3, p1, 0x2

    new-array p3, p3, [Lorg/mozilla/classfile/ExceptionTableEntry;

    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    :cond_36
    :goto_36
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return-void

    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad handlerLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad endLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad startLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFLoad(I)V
    .registers 4

    const/16 v0, 0x22

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;S)V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    new-instance v1, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v1, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addILoad(I)V
    .registers 4

    const/16 v0, 0x1a

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addIStore(I)V
    .registers 4

    const/16 v0, 0x3b

    const/16 v1, 0x36

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {p4}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x10

    int-to-short v0, v0

    iget-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    add-int/2addr v2, v0

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v0

    add-int/2addr v2, v0

    if-ltz v2, :cond_15

    const/16 v0, 0x7fff

    if-ge v0, v2, :cond_18

    :cond_15
    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_18
    packed-switch p1, :pswitch_data_50

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for method reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_23  #0xb6, 0xb7, 0xb8, 0xb9
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_3d

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_46

    :cond_3d
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    :goto_46
    int-to-short p1, v2

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v2, p2, :cond_4f

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_4f
    return-void

    :pswitch_data_50
    .packed-switch 0xb6
        :pswitch_23  #000000b6
        :pswitch_23  #000000b7
        :pswitch_23  #000000b8
        :pswitch_23  #000000b9
    .end packed-switch
.end method

.method public addLLoad(I)V
    .registers 4

    const/16 v0, 0x1e

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addLineNumberEntry(S)V
    .registers 7

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-eqz v0, :cond_2c

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    const/16 v1, 0x10

    if-nez v0, :cond_f

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    goto :goto_1e

    :cond_f
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    array-length v3, v2

    if-ne v0, v3, :cond_1e

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    :cond_1e
    :goto_1e
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    shl-int/lit8 v1, v3, 0x10

    add-int/2addr v1, p1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    return-void

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No method to stop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLoadConstant(D)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(D)I

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadConstant(I)V
    .registers 6

    const/4 v0, 0x3

    if-eqz p1, :cond_35

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v1, :cond_31

    const/4 v1, 0x2

    const/4 v3, 0x5

    if-eq p1, v1, :cond_2d

    if-eq p1, v0, :cond_28

    if-eq p1, v2, :cond_23

    if-eq p1, v3, :cond_1d

    const/16 v0, 0x12

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_38

    :cond_1d
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_38

    :cond_23
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_38

    :cond_28
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_38

    :cond_2d
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_38

    :cond_31
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_38

    :cond_35
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_38
    return-void
.end method

.method public addLoadConstant(J)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(J)I

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadConstant(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadThis()V
    .registers 2

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method

.method public addPush(D)V
    .registers 9

    const/16 v0, 0x77

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    const-wide/16 v3, 0x0

    cmpl-double v5, p1, v3

    if-nez v5, :cond_18

    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    div-double/2addr v1, p1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_33

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_33

    :cond_18
    cmpl-double v5, p1, v1

    if-eqz v5, :cond_27

    const-wide/high16 v1, -0x4010000000000000L  # -1.0

    cmpl-double v5, p1, v1

    if-nez v5, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(D)V

    goto :goto_33

    :cond_27
    :goto_27
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    cmpg-double v1, p1, v3

    if-gez v1, :cond_33

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_33
    :goto_33
    return-void
.end method

.method public addPush(I)V
    .registers 4

    int-to-byte v0, p1

    if-ne v0, p1, :cond_1d

    const/4 v1, -0x1

    if-ne p1, v1, :cond_b

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_29

    :cond_b
    if-ltz p1, :cond_17

    const/4 v1, 0x5

    if-gt p1, v1, :cond_17

    add-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_29

    :cond_17
    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_29

    :cond_1d
    int-to-short v0, p1

    if-ne v0, p1, :cond_26

    const/16 p1, 0x11

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_29

    :cond_26
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    :goto_29
    return-void
.end method

.method public addPush(J)V
    .registers 7

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_f

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 p1, 0x85

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_12

    :cond_f
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(J)V

    :goto_12
    return-void
.end method

.method public addPush(Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_11

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    return-void

    :cond_11
    const/16 v3, 0xbb

    const-string v4, "java/lang/StringBuilder"

    invoke-virtual {p0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v3, 0x59

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 v5, 0xb7

    const-string v6, "<init>"

    const-string v7, "(I)V"

    invoke-virtual {p0, v5, v4, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    const/16 v2, 0xb6

    const-string v5, "append"

    const-string v6, "(Ljava/lang/String;)Ljava/lang/StringBuilder;"

    invoke-virtual {p0, v2, v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x57

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    if-ne v1, v0, :cond_4c

    const-string/jumbo p1, "toString"

    const-string v0, "()Ljava/lang/String;"

    invoke-virtual {p0, v2, v4, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4c
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v2, p1, v1, v0}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result v2

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_29
.end method

.method public addPush(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_5

    :cond_4
    const/4 p1, 0x3

    :goto_5
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method

.method public addTableSwitch(II)I
    .registers 10

    if-gt p1, p2, :cond_55

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    const/16 v1, 0xaa

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_11

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_14

    :cond_11
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_14
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    add-int/lit8 v4, v1, 0x1

    const/16 v5, -0x56

    aput-byte v5, v3, v1

    :goto_31
    if-eqz v2, :cond_3e

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    aput-byte v6, v3, v4

    add-int/lit8 v2, v2, -0x1

    move v4, v5

    goto :goto_31

    :cond_3e
    add-int/lit8 v4, v4, 0x4

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p1

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p2, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, p2, :cond_54

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_54
    return v1

    :cond_55
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_75

    :goto_74
    throw v0

    :goto_75
    goto :goto_74
.end method

.method public addVariableDescriptor(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    if-nez p1, :cond_26

    new-instance p1, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {p1}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    :cond_26
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public adjustStackTop(I)V
    .registers 4

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    add-int/2addr v0, p1

    if-ltz v0, :cond_9

    const/16 p1, 0x7fff

    if-ge p1, v0, :cond_c

    :cond_9
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_c
    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, v1, :cond_15

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_15
    return-void
.end method

.method final getCharBuffer(I)[C
    .registers 4

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    array-length v1, v0

    if-le p1, v1, :cond_10

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_b

    goto :goto_c

    :cond_b
    move p1, v0

    :goto_c
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    :cond_10
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    return-object p1
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->generatedClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCodeOffset()I
    .registers 2

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return v0
.end method

.method public getLabelPC(I)I
    .registers 3

    if-gez p1, :cond_17

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-ge p1, v0, :cond_f

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget p1, v0, p1

    return p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label, no biscuit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStackTop()S
    .registers 2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    return v0
.end method

.method public markHandler(I)V
    .registers 3

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    return-void
.end method

.method public markLabel(I)V
    .registers 5

    if-gez p1, :cond_26

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-gt p1, v0, :cond_1e

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    aput v1, v0, p1

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can only mark label once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label, no biscuit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markLabel(IS)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    return-void
.end method

.method public final markTableSwitchCase(II)V
    .registers 5

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void
.end method

.method public final markTableSwitchCase(III)V
    .registers 5

    if-ltz p3, :cond_1b

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-gt p3, v0, :cond_1b

    int-to-short p3, p3

    iput-short p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p3, v0, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad stack index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final markTableSwitchDefault(I)V
    .registers 4

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void
.end method

.method public setStackTop(S)V
    .registers 2

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    return-void
.end method

.method public setTableSwitchJump(III)V
    .registers 9

    if-ltz p3, :cond_95

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    if-lt v0, p3, :cond_95

    const/4 v1, -0x1

    if-lt p2, v1, :cond_7e

    xor-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x3

    if-gez p2, :cond_13

    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    goto :goto_1b

    :cond_13
    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    :goto_1b
    if-ltz p1, :cond_67

    add-int/lit8 v3, v0, -0x10

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-lt v3, p1, :cond_67

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    aget-byte v3, v1, p1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xaa

    if-ne v3, v4, :cond_50

    if-ltz v2, :cond_39

    add-int/lit8 v3, v2, 0x4

    if-lt v0, v3, :cond_39

    sub-int/2addr p3, p1

    invoke-static {p3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    return-void

    :cond_39
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too big case index: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not offset of tableswitch statement"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_67
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is outside a possible range of tableswitch in already generated code"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad case index: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad jump target: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startMethod(Ljava/lang/String;Ljava/lang/String;S)V
    .registers 11

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v5

    new-instance v0, Lorg/mozilla/classfile/ClassFileMethod;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/classfile/ClassFileMethod;-><init>(Ljava/lang/String;SLjava/lang/String;SS)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    new-instance p1, Lorg/mozilla/javascript/UintMap;

    invoke-direct {p1}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    return-void
.end method

.method public stopMethod(S)V
    .registers 16

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-eqz v0, :cond_1ae

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->fixLabelGotos()V

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    sget-boolean p1, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->finalizeSuperBlockStarts()V

    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;

    invoke-direct {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->generate()V

    goto :goto_1b

    :cond_1a
    move-object p1, v0

    :goto_1b
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x8

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->computeWriteSize()I

    move-result v4

    if-lez v4, :cond_41

    add-int/lit8 v4, v4, 0x6

    goto :goto_42

    :cond_41
    const/4 v4, 0x0

    :goto_42
    iget v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/lit8 v5, v5, 0xe

    const/4 v6, 0x2

    add-int/2addr v5, v6

    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v5, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    const/high16 v1, 0x10000

    if-gt v5, v1, :cond_1a6

    new-array v1, v5, [B

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v7, "Code"

    invoke-virtual {v3, v7}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    invoke-static {v3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    add-int/lit8 v5, v5, -0x6

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    iget-short v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget-short v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v5, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/2addr v3, v5

    iget v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-lez v5, :cond_dd

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    const/4 v5, 0x0

    :goto_8e
    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-ge v5, v7, :cond_e1

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aget-object v7, v7, v5

    iget v8, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    invoke-virtual {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v8

    iget v9, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    invoke-virtual {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v9

    iget v10, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {p0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v10

    iget-short v7, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    const/4 v11, -0x1

    if-eq v8, v11, :cond_d4

    if-eq v9, v11, :cond_cc

    if-eq v10, v11, :cond_c4

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v9, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v10, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v7, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    :cond_c4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handler label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cc
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "end label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "start label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dd
    invoke-static {v2, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    :cond_e1
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    const/4 v7, 0x1

    if-eqz v5, :cond_e8

    const/4 v5, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v5, 0x0

    :goto_e9
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    if-eqz v8, :cond_ef

    add-int/lit8 v5, v5, 0x1

    :cond_ef
    if-lez v4, :cond_f3

    add-int/lit8 v5, v5, 0x1

    :cond_f3
    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    if-eqz v5, :cond_126

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v8, "LineNumberTable"

    invoke-virtual {v5, v8}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v5

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    iget v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    const/4 v5, 0x0

    :goto_117
    iget v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    if-ge v5, v8, :cond_126

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    aget v8, v8, v5

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_117

    :cond_126
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    if-eqz v5, :cond_175

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v8, "LocalVariableTable"

    invoke-virtual {v5, v8}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v5

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v5

    mul-int/lit8 v8, v5, 0xa

    add-int/2addr v8, v6

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    const/4 v8, 0x0

    :goto_148
    if-ge v8, v5, :cond_175

    iget-object v9, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v9, v8}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v10, v9, v2

    aget v11, v9, v7

    aget v12, v9, v6

    const/4 v13, 0x3

    aget v9, v9, v13

    iget v13, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    sub-int/2addr v13, v12

    invoke-static {v12, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v13, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v10, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v11, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v9, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_148

    :cond_175
    if-lez v4, :cond_186

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v5, "StackMapTable"

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v4

    invoke-static {v4, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->write([BI)I

    :cond_186
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileMethod;->setCodeAttribute([B)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    iput-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    iput-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    return-void

    :cond_1a6
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v0, "generated bytecode for method exceeds 64K limit."

    invoke-direct {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1ae
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No method to stop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1b7

    :goto_1b6
    throw p1

    :goto_1b7
    goto :goto_1b6
.end method

.method public toByteArray()[B
    .registers 11

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v2, "BootstrapMethods"

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v0

    const/4 v2, 0x1

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_11
    iget-short v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v3, :cond_20

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v4, "SourceFile"

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getWriteSize()I

    move-result v4

    new-array v5, v4, [B

    const v6, -0x35014542  # -8346975.0f

    invoke-static {v6, v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v6

    sget v7, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    sget v7, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v7, v5, v6}, Lorg/mozilla/classfile/ConstantPool;->write([BI)I

    move-result v6

    iget-short v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:S

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-short v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-short v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:S

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    const/4 v7, 0x0

    :goto_5d
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_78

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-static {v8, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_78
    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    const/4 v7, 0x0

    :goto_83
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_9a

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/classfile/ClassFileField;

    invoke-virtual {v8, v5, v6}, Lorg/mozilla/classfile/ClassFileField;->write([BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    :cond_9a
    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    const/4 v7, 0x0

    :goto_a5
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_bc

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v8, v5, v6}, Lorg/mozilla/classfile/ClassFileMethod;->write([BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_a5

    :cond_bc
    invoke-static {v2, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    const/4 v7, 0x2

    if-eqz v6, :cond_f9

    invoke-static {v0, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    add-int/2addr v2, v7

    invoke-static {v2, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    invoke-static {v2, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    move v2, v0

    const/4 v0, 0x0

    :goto_dc
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_f9

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v6, v0}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    iget-object v8, v6, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    array-length v9, v8

    invoke-static {v8, v1, v5, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v6, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    array-length v6, v6

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    :cond_f9
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v0, :cond_10b

    invoke-static {v3, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    invoke-static {v7, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v0

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    invoke-static {v1, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    :cond_10b
    if-ne v2, v4, :cond_10e

    return-object v5

    :cond_10e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_115

    :goto_114
    throw v0

    :goto_115
    goto :goto_114
.end method
