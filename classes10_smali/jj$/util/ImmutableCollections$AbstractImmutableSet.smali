.class abstract Ljj$/util/ImmutableCollections$AbstractImmutableSet;
.super Ljj$/util/ImmutableCollections$AbstractImmutableCollection;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljj$/util/Set;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_18

    return v2

    :cond_18
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-virtual {p0, v4}, Ljj$/util/ImmutableCollections$AbstractImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_30

    :cond_2f
    goto :goto_1c

    :cond_30
    :goto_30
    return v2

    :cond_31
    return v0
.end method

.method public abstract hashCode()I
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Set$-CC;->$default$spliterator(Ljava/util/Set;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
