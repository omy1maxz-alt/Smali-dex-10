.class final Ljj$/util/ImmutableCollections$SetN;
.super Ljj$/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static EMPTY_SET:Ljava/util/Set;


# instance fields
.field final elements:[Ljava/lang/Object;

.field final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljj$/util/ImmutableCollections$SetN;->EMPTY_SET:Ljava/util/Set;

    if-nez v0, :cond_e

    new-instance v0, Ljj$/util/ImmutableCollections$SetN;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Ljj$/util/ImmutableCollections$SetN;->EMPTY_SET:Ljava/util/Set;

    :cond_e
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/Object;)V
    .registers 8

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    array-length v0, p1

    iput v0, p0, Ljj$/util/ImmutableCollections$SetN;->size:I

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_3c

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Ljj$/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_23

    iget-object v3, p0, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    aput-object v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3c
    return-void
.end method

.method private probe(Ljava/lang/Object;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    :goto_b
    iget-object v1, p0, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_15

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_24

    const/4 v0, 0x0

    :cond_24
    goto :goto_b
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

    iget v0, p0, Ljj$/util/ImmutableCollections$SetN;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_17

    aget-object v5, v2, v4

    if-eqz v5, :cond_14

    add-int/lit8 v6, v1, 0x1

    aput-object v5, v0, v1

    move v1, v6

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_17
    new-instance v2, Ljj$/util/CollSer;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Ljj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/ImmutableCollections$SetN;->size:I

    if-lez v0, :cond_f

    invoke-direct {p0, p1}, Ljj$/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public hashCode()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_13

    aget-object v4, v1, v3

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;

    invoke-direct {v0, p0}, Ljj$/util/ImmutableCollections$SetN$SetNIterator;-><init>(Ljj$/util/ImmutableCollections$SetN;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Ljj$/util/ImmutableCollections$SetN;->size:I

    return v0
.end method
