.class Ljj$/util/DesugarCollections$CheckedRandomAccessList;
.super Ljj$/util/DesugarCollections$CheckedList;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J = 0x16bc0e55a2d7f2f1L


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .registers 6

    new-instance v0, Ljj$/util/DesugarCollections$CheckedRandomAccessList;

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedRandomAccessList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/DesugarCollections$CheckedRandomAccessList;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljj$/util/DesugarCollections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method
