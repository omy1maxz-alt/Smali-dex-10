.class public final synthetic Ljj$/nio/file/TempFileHelper$$ExternalSyntheticBackport1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(JI)Ljava/lang/String;
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_9

    const-string p0, "0"

    return-object p0

    :cond_9
    if-lez v2, :cond_10

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v2, 0x2

    if-lt p2, v2, :cond_17

    const/16 v2, 0x24

    if-le p2, v2, :cond_19

    :cond_17
    const/16 p2, 0xa

    :cond_19
    const/16 v2, 0x40

    new-array v3, v2, [C

    add-int/lit8 v4, p2, -0x1

    and-int v5, p2, v4

    if-nez v5, :cond_37

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    :cond_27
    add-int/lit8 v2, v2, -0x1

    long-to-int v6, p0

    and-int/2addr v6, v4

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v3, v2

    ushr-long/2addr p0, v5

    cmp-long v6, p0, v0

    if-nez v6, :cond_27

    goto :goto_68

    :cond_37
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_43

    const/4 v2, 0x1

    ushr-long v4, p0, v2

    ushr-int/lit8 v2, p2, 0x1

    int-to-long v6, v2

    div-long/2addr v4, v6

    goto :goto_48

    :cond_43
    int-to-long v4, p2

    invoke-static {p0, p1, v4, v5}, Ljj$/nio/file/TempFileHelper$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    :goto_48
    int-to-long v6, p2

    mul-long v8, v4, v6

    sub-long/2addr p0, v8

    long-to-int p1, p0

    invoke-static {p1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/16 p1, 0x3f

    aput-char p0, v3, p1

    const/16 v2, 0x3f

    :goto_57
    cmp-long p0, v4, v0

    if-lez p0, :cond_68

    add-int/lit8 v2, v2, -0x1

    rem-long p0, v4, v6

    long-to-int p1, p0

    invoke-static {p1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    aput-char p0, v3, v2

    div-long/2addr v4, v6

    goto :goto_57

    :cond_68
    :goto_68
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 p1, v2, 0x40

    invoke-direct {p0, v3, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method
