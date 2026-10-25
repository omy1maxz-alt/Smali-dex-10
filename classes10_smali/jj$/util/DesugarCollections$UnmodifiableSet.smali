.class Ljj$/util/DesugarCollections$UnmodifiableSet;
.super Ljj$/util/DesugarCollections$UnmodifiableCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Set;


# static fields
.field private static final serialVersionUID:J = -0x7fe26d2e70647fabL


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableSet;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableSet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method
