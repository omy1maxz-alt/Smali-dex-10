.class final Ljj$/util/ImmutableCollections$MapN;
.super Ljj$/util/ImmutableCollections$AbstractImmutableMap;
.source "ImmutableCollections.java"


# static fields
.field static EMPTY_MAP:Ljava/util/Map;


# instance fields
.field final size:I

.field final table:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljj$/util/ImmutableCollections$MapN;->EMPTY_MAP:Ljava/util/Map;

    if-nez v0, :cond_e

    new-instance v0, Ljj$/util/ImmutableCollections$MapN;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Ljj$/util/ImmutableCollections$MapN;->EMPTY_MAP:Ljava/util/Map;

    :cond_e
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/Object;)V
    .registers 10

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableMap;-><init>()V

    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_5a

    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/ImmutableCollections$MapN;->size:I

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v1, -0x2

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_19
    array-length v2, p1

    if-ge v1, v2, :cond_59

    aget-object v2, p1, v1

    invoke-static {v2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Ljj$/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_40

    add-int/lit8 v5, v4, 0x1

    neg-int v5, v5

    iget-object v6, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aput-object v2, v6, v5

    iget-object v6, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v7, v5, 0x1

    aput-object v3, v6, v7

    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    :cond_40
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_59
    return-void

    :cond_5a
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "length is odd"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private probe(Ljava/lang/Object;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    :goto_f
    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_19

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_19
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_28

    const/4 v0, 0x0

    :cond_28
    goto :goto_f
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 8

    iget v0, p0, Ljj$/util/ImmutableCollections$MapN;->size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_28

    iget-object v4, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_25

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v5, v5, v3

    aput-object v5, v0, v2

    add-int/lit8 v2, v4, 0x1

    iget-object v5, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    aput-object v5, v0, v4

    :cond_25
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    :cond_28
    new-instance v3, Ljj$/util/CollSer;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Ljj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/ImmutableCollections$MapN;->size:I

    if-lez v0, :cond_f

    invoke-direct {p0, p1}, Ljj$/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_4
    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    return v2

    :cond_17
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Ljj$/util/ImmutableCollections$MapN$1;

    invoke-direct {v0, p0}, Ljj$/util/ImmutableCollections$MapN$1;-><init>(Ljj$/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Ljj$/util/ImmutableCollections$MapN;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_9
    invoke-direct {p0, p1}, Ljj$/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_16

    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    :cond_16
    return-object v1
.end method

.method public hashCode()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_20

    iget-object v2, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    :cond_1d
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_20
    return v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Ljj$/util/ImmutableCollections$MapN;->size:I

    return v0
.end method
