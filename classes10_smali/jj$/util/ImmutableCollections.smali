.class Ljj$/util/ImmutableCollections;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"


# static fields
.field static final EXPAND_FACTOR:I = 0x2

.field static final SALT:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v3, v2

    sput v3, Ljj$/util/ImmutableCollections;->SALT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static emptyList()Ljava/util/List;
    .registers 1

    sget-object v0, Ljj$/util/ImmutableCollections$ListN;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method static emptyMap()Ljava/util/Map;
    .registers 1

    sget-object v0, Ljj$/util/ImmutableCollections$MapN;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static emptySet()Ljava/util/Set;
    .registers 1

    sget-object v0, Ljj$/util/ImmutableCollections$SetN;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method static listCopy(Ljava/util/Collection;)Ljava/util/List;
    .registers 3

    instance-of v0, p0, Ljj$/util/ImmutableCollections$AbstractImmutableList;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljj$/util/ImmutableCollections$SubList;

    if-eq v0, v1, :cond_10

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_10
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static uoe()Ljava/lang/UnsupportedOperationException;
    .registers 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method
