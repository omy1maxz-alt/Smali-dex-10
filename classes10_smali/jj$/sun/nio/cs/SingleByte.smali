.class public Ljj$/sun/nio/cs/SingleByte;
.super Ljava/lang/Object;
.source "SingleByte.java"


# direct methods
.method static bridge synthetic -$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljj$/sun/nio/cs/SingleByte;->withResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initC2B([C[C[C[C)V
    .registers 12

    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    const v2, 0xfffd

    if-ge v0, v1, :cond_c

    aput-char v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    :goto_d
    array-length v1, p2

    if-ge v0, v1, :cond_15

    aput-char v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_17
    array-length v3, p0

    if-ge v1, v3, :cond_3e

    aget-char v3, p0, v1

    if-ne v3, v2, :cond_1f

    goto :goto_3b

    :cond_1f
    shr-int/lit8 v4, v3, 0x8

    aget-char v5, p3, v4

    if-ne v5, v2, :cond_2a

    int-to-char v5, v0

    aput-char v5, p3, v4

    add-int/lit16 v0, v0, 0x100

    :cond_2a
    aget-char v5, p3, v4

    and-int/lit16 v6, v3, 0xff

    add-int/2addr v5, v6

    const/16 v4, 0x80

    if-lt v1, v4, :cond_36

    add-int/lit8 v4, v1, -0x80

    goto :goto_38

    :cond_36
    add-int/lit16 v4, v1, 0x80

    :goto_38
    int-to-char v4, v4

    aput-char v4, p2, v5

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3e
    if-eqz p1, :cond_60

    const/4 v1, 0x0

    :goto_41
    array-length v3, p1

    if-ge v1, v3, :cond_60

    add-int/lit8 v3, v1, 0x1

    aget-char v1, p1, v1

    add-int/lit8 v4, v3, 0x1

    aget-char v3, p1, v3

    shr-int/lit8 v5, v3, 0x8

    aget-char v6, p3, v5

    if-ne v6, v2, :cond_57

    int-to-char v6, v0

    aput-char v6, p3, v5

    add-int/lit16 v0, v0, 0x100

    :cond_57
    aget-char v6, p3, v5

    and-int/lit16 v7, v3, 0xff

    add-int/2addr v6, v7

    aput-char v1, p2, v6

    move v1, v4

    goto :goto_41

    :cond_60
    return-void
.end method

.method private static final withResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;
    .registers 6

    invoke-virtual {p1}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p3, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method
