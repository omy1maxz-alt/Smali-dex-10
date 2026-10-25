.class public Ljj$/sun/nio/cs/CharsetMapping;
.super Ljava/lang/Object;
.source "CharsetMapping.java"


# static fields
.field private static final MAP_COMPOSITE:I = 0x7

.field private static final MAP_DOUBLEBYTE1:I = 0x2

.field private static final MAP_DOUBLEBYTE2:I = 0x3

.field private static final MAP_INDEXC2B:I = 0x8

.field private static final MAP_SINGLEBYTE:I = 0x1

.field private static final MAP_SUPPLEMENT:I = 0x5

.field private static final MAP_SUPPLEMENT_C2B:I = 0x6

.field public static final UNMAPPABLE_DECODING:C = '\ufffd'

.field public static final UNMAPPABLE_ENCODING:I = 0xfffd

.field static comparatorBytes:Ljava/util/Comparator;

.field static comparatorCP:Ljava/util/Comparator;

.field static comparatorComp:Ljava/util/Comparator;


# instance fields
.field b1MaxDB1:I

.field b1MaxDB2:I

.field b1MinDB1:I

.field b1MinDB2:I

.field b2Max:I

.field b2Min:I

.field b2cComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

.field b2cDB1:[C

.field b2cDB2:[C

.field b2cSB:[C

.field b2cSupp:[C

.field bb:[B

.field c2b:[C

.field c2bComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

.field c2bIndex:[C

.field c2bSupp:[C

.field dbSegSize:I

.field off:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/sun/nio/cs/CharsetMapping$2;

    invoke-direct {v0}, Ljj$/sun/nio/cs/CharsetMapping$2;-><init>()V

    sput-object v0, Ljj$/sun/nio/cs/CharsetMapping;->comparatorBytes:Ljava/util/Comparator;

    new-instance v0, Ljj$/sun/nio/cs/CharsetMapping$3;

    invoke-direct {v0}, Ljj$/sun/nio/cs/CharsetMapping$3;-><init>()V

    sput-object v0, Ljj$/sun/nio/cs/CharsetMapping;->comparatorCP:Ljava/util/Comparator;

    new-instance v0, Ljj$/sun/nio/cs/CharsetMapping$4;

    invoke-direct {v0}, Ljj$/sun/nio/cs/CharsetMapping$4;-><init>()V

    sput-object v0, Ljj$/sun/nio/cs/CharsetMapping;->comparatorComp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    return-void
.end method

.method static findBytes([Ljj$/sun/nio/cs/CharsetMapping$Entry;Ljj$/sun/nio/cs/CharsetMapping$Entry;)I
    .registers 5

    array-length v0, p0

    sget-object v1, Ljj$/sun/nio/cs/CharsetMapping;->comparatorBytes:Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static findCP([Ljj$/sun/nio/cs/CharsetMapping$Entry;Ljj$/sun/nio/cs/CharsetMapping$Entry;)I
    .registers 5

    array-length v0, p0

    sget-object v1, Ljj$/sun/nio/cs/CharsetMapping;->comparatorCP:Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static findComp([Ljj$/sun/nio/cs/CharsetMapping$Entry;Ljj$/sun/nio/cs/CharsetMapping$Entry;)I
    .registers 5

    array-length v0, p0

    sget-object v1, Ljj$/sun/nio/cs/CharsetMapping;->comparatorComp:Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static get(Ljava/io/InputStream;)Ljj$/sun/nio/cs/CharsetMapping;
    .registers 2

    new-instance v0, Ljj$/sun/nio/cs/CharsetMapping$1;

    invoke-direct {v0, p0}, Ljj$/sun/nio/cs/CharsetMapping$1;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/CharsetMapping;

    return-object v0
.end method

.method private readCharArray()[C
    .registers 8

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_41

    iget-object v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v4, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v5, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_41
    return-object v1
.end method

.method private static final readNBytes(Ljava/io/InputStream;[BI)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-lez p2, :cond_f

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    const/4 v2, 0x0

    return v2

    :cond_c
    sub-int/2addr p2, v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_f
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public decodeComposite(Ljj$/sun/nio/cs/CharsetMapping$Entry;[C)[C
    .registers 6

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-static {v0, p1}, Ljj$/sun/nio/cs/CharsetMapping;->findBytes([Ljj$/sun/nio/cs/CharsetMapping$Entry;Ljj$/sun/nio/cs/CharsetMapping$Entry;)I

    move-result v0

    if-ltz v0, :cond_1d

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Ljj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, p2, v2

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Ljj$/sun/nio/cs/CharsetMapping$Entry;->cp2:I

    int-to-char v1, v1

    const/4 v2, 0x1

    aput-char v1, p2, v2

    return-object p2

    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public decodeDouble(II)C
    .registers 5

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Min:I

    if-lt p2, v0, :cond_35

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Max:I

    if-ge p2, v0, :cond_35

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Min:I

    sub-int/2addr p2, v0

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MinDB1:I

    if-lt p1, v0, :cond_20

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MaxDB1:I

    if-gt p1, v0, :cond_20

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MinDB1:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cDB1:[C

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    mul-int v1, v1, p1

    add-int/2addr v1, p2

    aget-char v0, v0, v1

    return v0

    :cond_20
    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MinDB2:I

    if-lt p1, v0, :cond_35

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MaxDB2:I

    if-gt p1, v0, :cond_35

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MinDB2:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cDB2:[C

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    mul-int v1, v1, p1

    add-int/2addr v1, p2

    aget-char v0, v0, v1

    return v0

    :cond_35
    const v0, 0xfffd

    return v0
.end method

.method public decodeSingle(I)C
    .registers 3

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cSB:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public decodeSurrogate(I[C)[C
    .registers 8

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cSupp:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cSupp:[C

    int-to-char v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->binarySearch([CIIC)I

    move-result v1

    if-ltz v1, :cond_1c

    iget-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cSupp:[C

    add-int v4, v0, v1

    aget-char v2, v2, v4

    const/high16 v4, 0x20000

    add-int/2addr v2, v4

    invoke-static {v2, p2, v3}, Ljava/lang/Character;->toChars(I[CI)I

    return-object p2

    :cond_1c
    const/4 v2, 0x0

    return-object v2
.end method

.method public encodeChar(C)I
    .registers 5

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bIndex:[C

    shr-int/lit8 v1, p1, 0x8

    aget-char v0, v0, v1

    const v1, 0xffff

    if-ne v0, v1, :cond_f

    const v1, 0xfffd

    return v1

    :cond_f
    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2b:[C

    and-int/lit16 v2, p1, 0xff

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    return v1
.end method

.method public encodeComposite(Ljj$/sun/nio/cs/CharsetMapping$Entry;)I
    .registers 4

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-static {v0, p1}, Ljj$/sun/nio/cs/CharsetMapping;->findComp([Ljj$/sun/nio/cs/CharsetMapping$Entry;Ljj$/sun/nio/cs/CharsetMapping$Entry;)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Ljj$/sun/nio/cs/CharsetMapping$Entry;->bs:I

    return v1

    :cond_f
    const v1, 0xfffd

    return v1
.end method

.method public encodeSurrogate(CC)I
    .registers 9

    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    const/high16 v1, 0x20000

    const v2, 0xfffd

    if-lt v0, v1, :cond_27

    const/high16 v1, 0x30000

    if-lt v0, v1, :cond_10

    goto :goto_27

    :cond_10
    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bSupp:[C

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bSupp:[C

    const/4 v4, 0x0

    int-to-char v5, v0

    invoke-static {v3, v4, v1, v5}, Ljava/util/Arrays;->binarySearch([CIIC)I

    move-result v3

    if-ltz v3, :cond_26

    iget-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bSupp:[C

    add-int v4, v1, v3

    aget-char v2, v2, v4

    return v2

    :cond_26
    return v2

    :cond_27
    :goto_27
    return v2
.end method

.method public isCompositeBase(Ljj$/sun/nio/cs/CharsetMapping$Entry;)Z
    .registers 5

    iget v0, p1, Ljj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    const/16 v1, 0x31f7

    const/4 v2, 0x0

    if-gt v0, v1, :cond_17

    iget v0, p1, Ljj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-static {v0, p1}, Ljj$/sun/nio/cs/CharsetMapping;->findCP([Ljj$/sun/nio/cs/CharsetMapping$Entry;Ljj$/sun/nio/cs/CharsetMapping$Entry;)I

    move-result v0

    if-ltz v0, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2

    :cond_17
    return v2
.end method

.method load(Ljava/io/InputStream;)Ljj$/sun/nio/cs/CharsetMapping;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    new-array v2, v1, [B

    iput-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    const/4 v2, 0x0

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    iget-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    invoke-static {p1, v2, v1}, Ljj$/sun/nio/cs/CharsetMapping;->readNBytes(Ljava/io/InputStream;[BI)Z

    move-result v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2f} :catch_8b

    const-string v3, "Corrupted data file"

    if-eqz v2, :cond_85

    :try_start_33
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_36
    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    if-ge v2, v1, :cond_82

    iget-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v4, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v4, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v5, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    packed-switch v2, :pswitch_data_90

    :pswitch_58  #0x4
    new-instance v4, Ljava/lang/RuntimeException;

    goto :goto_7e

    :pswitch_5b  #0x8
    invoke-virtual {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readINDEXC2B()V

    goto :goto_7d

    :pswitch_5f  #0x7
    invoke-virtual {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readCOMPOSITE()V

    goto :goto_7d

    :pswitch_63  #0x6
    invoke-direct {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v4

    iput-object v4, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bSupp:[C

    goto :goto_7d

    :pswitch_6a  #0x5
    invoke-direct {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v4

    iput-object v4, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cSupp:[C

    goto :goto_7d

    :pswitch_71  #0x3
    invoke-virtual {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readDOUBLEBYTE2()V

    goto :goto_7d

    :pswitch_75  #0x2
    invoke-virtual {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readDOUBLEBYTE1()V

    goto :goto_7d

    :pswitch_79  #0x1
    invoke-virtual {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readSINGLEBYTE()V

    nop

    :goto_7d
    goto :goto_36

    :goto_7e
    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_82
    iput-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    return-object p0

    :cond_85
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_8b} :catch_8b

    :catch_8b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_79  #00000001
        :pswitch_75  #00000002
        :pswitch_71  #00000003
        :pswitch_58  #00000004
        :pswitch_6a  #00000005
        :pswitch_63  #00000006
        :pswitch_5f  #00000007
        :pswitch_5b  #00000008
    .end packed-switch
.end method

.method readCOMPOSITE()V
    .registers 7

    invoke-direct {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v0

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    new-array v2, v1, [Ljj$/sun/nio/cs/CharsetMapping$Entry;

    iput-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    new-array v2, v1, [Ljj$/sun/nio/cs/CharsetMapping$Entry;

    iput-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, v1, :cond_36

    new-instance v4, Ljj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-direct {v4}, Ljj$/sun/nio/cs/CharsetMapping$Entry;-><init>()V

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v0, v3

    iput v3, v4, Ljj$/sun/nio/cs/CharsetMapping$Entry;->bs:I

    add-int/lit8 v3, v5, 0x1

    aget-char v5, v0, v5

    iput v5, v4, Ljj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v0, v3

    iput v3, v4, Ljj$/sun/nio/cs/CharsetMapping$Entry;->cp2:I

    iget-object v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    aput-object v4, v3, v2

    iget-object v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_11

    :cond_36
    iget-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    iget-object v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bComp:[Ljj$/sun/nio/cs/CharsetMapping$Entry;

    array-length v3, v3

    sget-object v4, Ljj$/sun/nio/cs/CharsetMapping;->comparatorComp:Ljava/util/Comparator;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method

.method readDB(III)[C
    .registers 13

    invoke-direct {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    aget-char v2, v0, v1

    const v3, 0xfffd

    if-eq v2, v3, :cond_28

    div-int v3, v1, p3

    rem-int v4, v1, p3

    add-int v5, v3, p1

    mul-int/lit16 v5, v5, 0x100

    add-int v6, v4, p2

    add-int/2addr v5, v6

    iget-object v6, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2b:[C

    iget-object v7, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bIndex:[C

    shr-int/lit8 v8, v2, 0x8

    aget-char v7, v7, v8

    and-int/lit16 v8, v2, 0xff

    add-int/2addr v7, v8

    int-to-char v8, v5

    aput-char v8, v6, v7

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2b
    return-object v0
.end method

.method readDOUBLEBYTE1()V
    .registers 5

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MinDB1:I

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MaxDB1:I

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Min:I

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Max:I

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Max:I

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Min:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MinDB1:I

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Min:I

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    invoke-virtual {p0, v0, v1, v2}, Ljj$/sun/nio/cs/CharsetMapping;->readDB(III)[C

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cDB1:[C

    return-void
.end method

.method readDOUBLEBYTE2()V
    .registers 5

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MinDB2:I

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MaxDB2:I

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Min:I

    iget-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Max:I

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Max:I

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Min:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    iget v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b1MinDB2:I

    iget v1, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2Min:I

    iget v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    invoke-virtual {p0, v0, v1, v2}, Ljj$/sun/nio/cs/CharsetMapping;->readDB(III)[C

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cDB2:[C

    return-void
.end method

.method readINDEXC2B()V
    .registers 5

    invoke-direct {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_26

    iget-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2b:[C

    if-nez v2, :cond_23

    aget-char v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    aget-char v2, v0, v1

    add-int/lit16 v2, v2, 0x100

    new-array v2, v2, [C

    iput-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2b:[C

    iget-object v2, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2b:[C

    const v3, 0xfffd

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    goto :goto_26

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_26
    :goto_26
    iput-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bIndex:[C

    return-void
.end method

.method readSINGLEBYTE()V
    .registers 7

    invoke-direct {p0}, Ljj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_20

    aget-char v2, v0, v1

    const v3, 0xfffd

    if-eq v2, v3, :cond_1d

    iget-object v3, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2b:[C

    iget-object v4, p0, Ljj$/sun/nio/cs/CharsetMapping;->c2bIndex:[C

    shr-int/lit8 v5, v2, 0x8

    aget-char v4, v4, v5

    and-int/lit16 v5, v2, 0xff

    add-int/2addr v4, v5

    int-to-char v5, v1

    aput-char v5, v3, v4

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_20
    iput-object v0, p0, Ljj$/sun/nio/cs/CharsetMapping;->b2cSB:[C

    return-void
.end method
