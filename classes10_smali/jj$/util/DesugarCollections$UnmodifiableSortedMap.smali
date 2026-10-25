.class Ljj$/util/DesugarCollections$UnmodifiableSortedMap;
.super Ljj$/util/DesugarCollections$UnmodifiableMap;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Map;


# static fields
.field private static final serialVersionUID:J = -0x7a37d6d72c5a28f6L


# instance fields
.field private final sm:Ljava/util/SortedMap;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method
