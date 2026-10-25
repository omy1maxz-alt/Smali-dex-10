.class final Ljj$/util/ImmutableCollections$ListN;
.super Ljj$/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static EMPTY_LIST:Ljava/util/List;


# instance fields
.field private final elements:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljj$/util/ImmutableCollections$ListN;->EMPTY_LIST:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljj$/util/ImmutableCollections$ListN;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Ljj$/util/ImmutableCollections$ListN;->EMPTY_LIST:Ljava/util/List;

    :cond_e
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_15

    aget-object v2, p1, v1

    invoke-static {v2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    iput-object v0, p0, Ljj$/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljj$/util/CollSer;

    const/4 v1, 0x1

    iget-object v2, p0, Ljj$/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$ListN;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Ljj$/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
