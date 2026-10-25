.class Ljj$/util/DesugarCollections$UnmodifiableSortedSet;
.super Ljj$/util/DesugarCollections$UnmodifiableSet;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedSet;
.implements Ljava/io/Serializable;
.implements Ljj$/util/SortedSet;


# static fields
.field private static final serialVersionUID:J = -0x4467db70141310fdL


# instance fields
.field private final ss:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method
