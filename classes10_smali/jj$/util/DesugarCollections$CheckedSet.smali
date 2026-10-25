.class Ljj$/util/DesugarCollections$CheckedSet;
.super Ljj$/util/DesugarCollections$CheckedCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Set;


# static fields
.field private static final serialVersionUID:J = 0x41249ba27ad9ffabL


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSet;->c:Ljava/util/Collection;

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

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method
