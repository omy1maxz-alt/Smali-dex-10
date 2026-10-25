.class Ljj$/util/DesugarCollections$CheckedSortedMap;
.super Ljj$/util/DesugarCollections$CheckedMap;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Map;


# static fields
.field private static final serialVersionUID:J = 0x16332c973afe036eL


# instance fields
.field private final sm:Ljava/util/SortedMap;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/DesugarCollections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljj$/util/DesugarCollections;->checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljj$/util/DesugarCollections;->checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljj$/util/DesugarCollections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljj$/util/DesugarCollections;->checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
