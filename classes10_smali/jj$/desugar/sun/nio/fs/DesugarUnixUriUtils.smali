.class Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;
.super Ljava/lang/Object;
.source "DesugarUnixUriUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DIGIT:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final L_ALPHA:J

.field private static final L_ALPHANUM:J

.field private static final L_DIGIT:J

.field private static final L_LOWALPHA:J

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 5

    nop

    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_DIGIT:J

    const/16 v0, 0x5a

    const/16 v1, 0x41

    invoke-static {v1, v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_UPALPHA:J

    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-static {v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_LOWALPHA:J

    sget-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_LOWALPHA:J

    sget-wide v2, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_ALPHA:J

    sget-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_DIGIT:J

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_ALPHANUM:J

    sget-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_ALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_ALPHANUM:J

    const-string v0, "-_.!~*\'()"

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_MARK:J

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_MARK:J

    sget-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_ALPHANUM:J

    sget-wide v2, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_UNRESERVED:J

    sget-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_ALPHANUM:J

    sget-wide v2, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_UNRESERVED:J

    sget-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_UNRESERVED:J

    const-string v2, ":@&=+$,"

    invoke-static {v2}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v3

    or-long/2addr v0, v3

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_PCHAR:J

    sget-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_UNRESERVED:J

    invoke-static {v2}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_PCHAR:J

    sget-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_PCHAR:J

    const-string v2, ";/"

    invoke-static {v2}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v3

    or-long/2addr v0, v3

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_PATH:J

    sget-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_PCHAR:J

    invoke-static {v2}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_PATH:J

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_80

    sput-object v0, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->hexDigits:[C

    return-void

    :array_80
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(C)I
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_25
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static fromUri(Ljj$/nio/file/FileSystem;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 16

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_cc

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c4

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_bc

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b4

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ac

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a4

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    const/4 v3, 0x1

    if-le v2, v3, :cond_43

    add-int/lit8 v2, v2, -0x1

    :cond_43
    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_47
    if-ge v5, v2, :cond_8e

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x25

    if-ne v5, v7, :cond_78

    nop

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v6}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->decode(C)I

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    invoke-static {v7}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->decode(C)I

    move-result v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    if-eqz v9, :cond_70

    move v6, v8

    goto :goto_7f

    :cond_70
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Nul character not allowed"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_78
    if-eqz v5, :cond_86

    const/16 v7, 0x80

    if-ge v5, v7, :cond_86

    int-to-byte v9, v5

    :goto_7f
    add-int/lit8 v7, v4, 0x1

    aput-byte v9, v3, v4

    move v5, v6

    move v4, v7

    goto :goto_47

    :cond_86
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Bad escape"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8e
    array-length v6, v3

    if-eq v4, v6, :cond_95

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    :cond_95
    new-instance v6, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    new-instance v7, Ljava/lang/String;

    invoke-static {}, Ljj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v6, p0, v7, p2, p3}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_a4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "URI path component is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_ac
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a query component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a fragment component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has an authority component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI scheme is not \"file\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not hierarchical"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static highMask(CC)J
    .registers 9

    const-wide/16 v0, 0x0

    const/16 v2, 0x7f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v4

    move v4, v3

    :goto_19
    if-gt v4, v2, :cond_22

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_22
    return-wide v0
.end method

.method private static highMask(Ljava/lang/String;)J
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_1f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_1c

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1c

    add-int/lit8 v5, v4, -0x40

    const-wide/16 v6, 0x1

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1f
    return-wide v1
.end method

.method private static lowMask(CC)J
    .registers 9

    const-wide/16 v0, 0x0

    const/16 v2, 0x3f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v3

    :goto_16
    if-gt v4, v2, :cond_1f

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1f
    return-wide v0
.end method

.method private static lowMask(Ljava/lang/String;)J
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_18

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_15

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v1, v5

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_18
    return-wide v1
.end method

.method private static match(CJJ)Z
    .registers 12

    const/16 v0, 0x40

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    if-ge p0, v0, :cond_13

    shl-long/2addr v4, p0

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    :cond_13
    const/16 v0, 0x80

    if-ge p0, v0, :cond_22

    add-int/lit8 v0, p0, -0x40

    shl-long/2addr v4, v0

    and-long/2addr v4, p3

    cmp-long v0, v4, v2

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1

    :cond_22
    return v6
.end method

.method static toUri(Ljj$/desugar/sun/nio/fs/DesugarUnixPath;)Ljava/net/URI;
    .registers 9

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->toAbsolutePath()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->asByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    nop

    const/4 v2, 0x1

    :goto_11
    array-length v3, v0

    if-ge v2, v3, :cond_43

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    sget-wide v4, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_PATH:J

    sget-wide v6, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_PATH:J

    invoke-static {v3, v4, v5, v6, v7}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->match(CJJ)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_27
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->hexDigits:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->hexDigits:[C

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_5e

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5e
    :try_start_5e
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/net/URISyntaxException; {:try_start_5e .. :try_end_67} :catch_68

    return-object v2

    :catch_68
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
