.class public Ljj$/sun/nio/cs/Big5_Solaris;
.super Ljava/nio/charset/Charset;
.source "Big5_Solaris.java"

# interfaces
.implements Ljj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field static b2c:[[C

.field private static volatile b2cInitialized:Z

.field static b2cSB:[C

.field static c2b:[C

.field static c2bIndex:[C

.field private static volatile c2bInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Ljj$/sun/nio/cs/Big5_Solaris;->b2cInitialized:Z

    sput-boolean v0, Ljj$/sun/nio/cs/Big5_Solaris;->c2bInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "x-Big5-Solaris"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_Big5_Solaris()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static initb2c()V
    .registers 8

    sget-boolean v0, Ljj$/sun/nio/cs/Big5_Solaris;->b2cInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-class v0, Ljj$/sun/nio/cs/Big5_Solaris;

    monitor-enter v0

    :try_start_8
    sget-boolean v1, Ljj$/sun/nio/cs/Big5_Solaris;->b2cInitialized:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    invoke-static {}, Ljj$/sun/nio/cs/Big5;->initb2c()V

    sget-object v1, Ljj$/sun/nio/cs/Big5;->b2c:[[C

    invoke-virtual {v1}, [[C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    sput-object v1, Ljj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_60

    sget-object v2, Ljj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    const/16 v3, 0xf9

    aget-object v2, v2, v3

    sget-object v4, Ljj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    const/16 v5, 0xbf

    if-ne v2, v4, :cond_3e

    sget-object v2, Ljj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    new-array v4, v5, [C

    aput-object v4, v2, v3

    sget-object v2, Ljj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    aget-object v2, v2, v3

    const v4, 0xfffd

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([CC)V

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    array-length v4, v1

    if-ge v2, v4, :cond_54

    sget-object v4, Ljj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    aget-object v4, v4, v3

    add-int/lit8 v6, v2, 0x1

    aget v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v7, v6, 0x1

    aget v6, v1, v6

    int-to-char v6, v6

    aput-char v6, v4, v2

    move v2, v7

    goto :goto_3f

    :cond_54
    sget-object v2, Ljj$/sun/nio/cs/Big5;->b2cSB:[C

    sput-object v2, Ljj$/sun/nio/cs/Big5_Solaris;->b2cSB:[C

    const/4 v2, 0x1

    sput-boolean v2, Ljj$/sun/nio/cs/Big5_Solaris;->b2cInitialized:Z

    monitor-exit v0

    return-void

    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_5d

    throw v1

    :array_60
    .array-data 4
        0xf9d6
        0x7881
        0xf9d7
        0x92b9
        0xf9d8
        0x88cf
        0xf9d9
        0x58bb
        0xf9da
        0x6052
        0xf9db
        0x7ca7
        0xf9dc
        0x5afa
    .end array-data
.end method

.method static initc2b()V
    .registers 7

    sget-boolean v0, Ljj$/sun/nio/cs/Big5_Solaris;->c2bInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-class v0, Ljj$/sun/nio/cs/Big5_Solaris;

    monitor-enter v0

    :try_start_8
    sget-boolean v1, Ljj$/sun/nio/cs/Big5_Solaris;->c2bInitialized:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    invoke-static {}, Ljj$/sun/nio/cs/Big5;->initc2b()V

    sget-object v1, Ljj$/sun/nio/cs/Big5;->c2b:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    sput-object v1, Ljj$/sun/nio/cs/Big5_Solaris;->c2b:[C

    sget-object v1, Ljj$/sun/nio/cs/Big5;->c2bIndex:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    sput-object v1, Ljj$/sun/nio/cs/Big5_Solaris;->c2bIndex:[C

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_50

    const/4 v2, 0x0

    :goto_2d
    array-length v3, v1

    if-ge v2, v3, :cond_48

    add-int/lit8 v3, v2, 0x1

    aget v2, v1, v2

    sget-object v4, Ljj$/sun/nio/cs/Big5_Solaris;->c2b:[C

    sget-object v5, Ljj$/sun/nio/cs/Big5_Solaris;->c2bIndex:[C

    shr-int/lit8 v6, v2, 0x8

    aget-char v5, v5, v6

    and-int/lit16 v6, v2, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x1

    aget v3, v1, v3

    int-to-char v3, v3

    aput-char v3, v4, v5

    move v2, v6

    goto :goto_2d

    :cond_48
    const/4 v2, 0x1

    sput-boolean v2, Ljj$/sun/nio/cs/Big5_Solaris;->c2bInitialized:Z

    monitor-exit v0

    return-void

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_4d

    throw v1

    :array_50
    .array-data 4
        0x7881
        0xf9d6
        0x92b9
        0xf9d7
        0x88cf
        0xf9d8
        0x58bb
        0xf9d9
        0x6052
        0xf9da
        0x7ca7
        0xf9db
        0x5afa
        0xf9dc
    .end array-data
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    instance-of v0, p1, Ljj$/sun/nio/cs/Big5;

    if-nez v0, :cond_17

    instance-of v0, p1, Ljj$/sun/nio/cs/Big5_Solaris;

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .registers 2

    const-string v0, "Big5_Solaris"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 8

    invoke-static {}, Ljj$/sun/nio/cs/Big5_Solaris;->initb2c()V

    new-instance v0, Ljj$/sun/nio/cs/DoubleByte$Decoder;

    sget-object v2, Ljj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    sget-object v3, Ljj$/sun/nio/cs/Big5_Solaris;->b2cSB:[C

    const/16 v5, 0xfe

    const/4 v6, 0x1

    const/16 v4, 0x40

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[[C[CIIZ)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 5

    invoke-static {}, Ljj$/sun/nio/cs/Big5_Solaris;->initc2b()V

    new-instance v0, Ljj$/sun/nio/cs/DoubleByte$Encoder;

    sget-object v1, Ljj$/sun/nio/cs/Big5_Solaris;->c2b:[C

    sget-object v2, Ljj$/sun/nio/cs/Big5_Solaris;->c2bIndex:[C

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Ljj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    return-object v0
.end method
