.class final Ljj$/util/ImmutableCollections$Set12;
.super Ljj$/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final e0:Ljava/lang/Object;

.field final e1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iput-object p1, p0, Ljj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    iput-object p2, p0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_13

    new-instance v0, Ljj$/util/CollSer;

    iget-object v4, p0, Ljj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-direct {v0, v3, v1}, Ljj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    :cond_13
    new-instance v0, Ljj$/util/CollSer;

    iget-object v4, p0, Ljj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    iget-object v5, p0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v5, v6, v1

    invoke-direct {v0, v3, v6}, Ljj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_12

    :cond_c
    iget-object v1, p0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ljj$/util/ImmutableCollections$Set12$1;

    invoke-direct {v0, p0}, Ljj$/util/ImmutableCollections$Set12$1;-><init>(Ljj$/util/ImmutableCollections$Set12;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    :goto_7
    return v0
.end method
