.class Ljj$/desugar/sun/nio/fs/DesugarUtil;
.super Ljava/lang/Object;
.source "DesugarUtil.java"


# static fields
.field private static final jnuEncoding:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Ljj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs followLinks([Ljj$/nio/file/LinkOption;)Z
    .registers 6

    const/4 v0, 0x1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    sget-object v4, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    if-ne v3, v4, :cond_f

    const/4 v0, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    if-nez v3, :cond_17

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should not get here"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1f
    return v0
.end method

.method static jnuEncoding()Ljava/nio/charset/Charset;
    .registers 1

    sget-object v0, Ljj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static varargs newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0
.end method

.method static varargs newSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0
.end method

.method static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_10

    add-int/lit8 v0, v0, 0x1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_35

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_32

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    add-int/lit8 v2, v4, 0x1

    move v3, v2

    move v2, v5

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    return-object v1
.end method

.method static toBytes(Ljava/lang/String;)[B
    .registers 2

    sget-object v0, Ljj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method static toString([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
