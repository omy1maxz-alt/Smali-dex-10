.class Ljj$/util/concurrent/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static collectionToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 8

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_a

    const-string v2, "[]"

    return-object v2

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    if-ne v4, p0, :cond_15

    const-string v5, "(this Collection)"

    goto :goto_19

    :cond_15
    invoke-static {v4}, Ljj$/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_19
    aput-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_23
    invoke-static {v0, v1, v2}, Ljj$/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 9

    nop

    invoke-static {p0}, Ljj$/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    invoke-static {p1}, Ljj$/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v5, v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v6, 0x3d

    aput-char v6, v0, v2

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v3, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_b

    :cond_9
    const-string v1, "null"

    :cond_b
    return-object v1
.end method

.method static toString([Ljava/lang/Object;II)Ljava/lang/String;
    .registers 9

    mul-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p2

    new-array v0, v0, [C

    const/16 v1, 0x5b

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p1, :cond_2b

    if-lez v3, :cond_1c

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x2c

    aput-char v5, v0, v1

    add-int/lit8 v1, v4, 0x1

    const/16 v5, 0x20

    aput-char v5, v0, v4

    :cond_1c
    aget-object v4, p0, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2b
    const/16 v2, 0x5d

    aput-char v2, v0, v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
