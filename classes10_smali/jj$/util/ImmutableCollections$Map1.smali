.class final Ljj$/util/ImmutableCollections$Map1;
.super Ljj$/util/ImmutableCollections$AbstractImmutableMap;
.source "ImmutableCollections.java"


# instance fields
.field private final k0:Ljava/lang/Object;

.field private final v0:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableMap;-><init>()V

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

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
    .registers 6

    new-instance v0, Ljj$/util/CollSer;

    iget-object v1, p0, Ljj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    iget-object v2, p0, Ljj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x3

    invoke-direct {v0, v1, v3}, Ljj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4

    new-instance v0, Ljj$/util/KeyValueHolder;

    iget-object v1, p0, Ljj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    iget-object v2, p0, Ljj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljj$/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
