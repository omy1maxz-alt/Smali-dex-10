.class public abstract Ljj$/sun/util/PreHashedMap;
.super Ljava/util/AbstractMap;
.source "PreHashedMap.java"


# instance fields
.field private final ht:[Ljava/lang/Object;

.field private final mask:I

.field private final rows:I

.field private final shift:I

.field private final size:I


# direct methods
.method static bridge synthetic -$$Nest$fgetht(Ljj$/sun/util/PreHashedMap;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ljj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrows(Ljj$/sun/util/PreHashedMap;)I
    .registers 1

    iget p0, p0, Ljj$/sun/util/PreHashedMap;->rows:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Ljj$/sun/util/PreHashedMap;)I
    .registers 1

    iget p0, p0, Ljj$/sun/util/PreHashedMap;->size:I

    return p0
.end method

.method protected constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Ljj$/sun/util/PreHashedMap;->rows:I

    iput p2, p0, Ljj$/sun/util/PreHashedMap;->size:I

    iput p3, p0, Ljj$/sun/util/PreHashedMap;->shift:I

    iput p4, p0, Ljj$/sun/util/PreHashedMap;->mask:I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljj$/sun/util/PreHashedMap;->init([Ljava/lang/Object;)V

    return-void
.end method

.method private toV(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Ljj$/sun/util/PreHashedMap$2;

    invoke-direct {v0, p0}, Ljj$/sun/util/PreHashedMap$2;-><init>(Ljj$/sun/util/PreHashedMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Ljj$/sun/util/PreHashedMap;->shift:I

    shr-int/2addr v0, v1

    iget v1, p0, Ljj$/sun/util/PreHashedMap;->mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Ljj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    return-object v2

    :cond_14
    :goto_14
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Ljj$/sun/util/PreHashedMap;->toV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_25
    array-length v3, v1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2a

    return-object v2

    :cond_2a
    const/4 v3, 0x2

    aget-object v3, v1, v3

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    goto :goto_14
.end method

.method protected abstract init([Ljava/lang/Object;)V
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Ljj$/sun/util/PreHashedMap$1;

    invoke-direct {v0, p0}, Ljj$/sun/util/PreHashedMap$1;-><init>(Ljj$/sun/util/PreHashedMap;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljj$/sun/util/PreHashedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljj$/sun/util/PreHashedMap;->shift:I

    shr-int/2addr v0, v1

    iget v1, p0, Ljj$/sun/util/PreHashedMap;->mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Ljj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, [Ljava/lang/Object;

    if-eqz v1, :cond_36

    :goto_12
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Ljj$/sun/util/PreHashedMap;->toV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object p2, v1, v2

    return-object v3

    :cond_25
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_30

    const/4 v2, 0x2

    aget-object v2, v1, v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    goto :goto_12

    :cond_30
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_36
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
