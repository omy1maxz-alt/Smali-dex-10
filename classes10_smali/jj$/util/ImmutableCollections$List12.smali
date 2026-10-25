.class final Ljj$/util/ImmutableCollections$List12;
.super Ljj$/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final e0:Ljava/lang/Object;

.field private final e1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

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
    .registers 7

    iget-object v0, p0, Ljj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    new-instance v0, Ljj$/util/CollSer;

    iget-object v3, p0, Ljj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-direct {v0, v2, v4}, Ljj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    :cond_12
    new-instance v0, Ljj$/util/CollSer;

    iget-object v3, p0, Ljj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    iget-object v4, p0, Ljj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    invoke-direct {v0, v2, v5}, Ljj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_5

    iget-object v0, p0, Ljj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    return-object v0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Ljj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-object v0

    :cond_f
    invoke-virtual {p0, p1}, Ljj$/util/ImmutableCollections$List12;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Ljj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method
