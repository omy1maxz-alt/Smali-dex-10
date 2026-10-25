.class Ljj$/util/DesugarCollections$CheckedSortedSet;
.super Ljj$/util/DesugarCollections$CheckedSet;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedSet;
.implements Ljava/io/Serializable;
.implements Ljj$/util/SortedSet;


# static fields
.field private static final serialVersionUID:J = 0x163406ba7362eb0fL


# instance fields
.field private final ss:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljj$/util/DesugarCollections;->checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljj$/util/DesugarCollections;->checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedSortedSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljj$/util/DesugarCollections;->checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
