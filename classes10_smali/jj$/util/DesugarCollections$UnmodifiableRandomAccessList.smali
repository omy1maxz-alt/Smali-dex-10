.class Ljj$/util/DesugarCollections$UnmodifiableRandomAccessList;
.super Ljj$/util/DesugarCollections$UnmodifiableList;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J = -0x2348186ae0b7b9b1L


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$UnmodifiableList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableList;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableRandomAccessList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .registers 5

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableRandomAccessList;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableRandomAccessList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    return-object v0
.end method
