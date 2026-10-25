.class public Ljj$/util/DesugarCollections;
.super Ljava/lang/Object;
.source "DesugarCollections.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge_synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/DesugarCollections;->synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static bridge_synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static bridge_synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    invoke-static {p0, p1}, Ljj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$CheckedCollection;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 3

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Ljj$/util/DesugarCollections$CheckedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_f

    :cond_a
    new-instance v0, Ljj$/util/DesugarCollections$CheckedList;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    :goto_f
    return-object v0
.end method

.method public static checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .registers 4

    new-instance v0, Ljj$/util/DesugarCollections$CheckedMap;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/DesugarCollections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$CheckedSet;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .registers 4

    new-instance v0, Ljj$/util/DesugarCollections$CheckedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/DesugarCollections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$CheckedSortedSet;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedCollection;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedCollection;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .registers 2

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_f

    :cond_a
    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedList;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;)V

    :goto_f
    return-object v0
.end method

.method static synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_f

    :cond_a
    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedList;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    :goto_f
    return-object v0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedMap;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedSet;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedSortedMap;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$SynchronizedSortedSet;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableCollection;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .registers 2

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableRandomAccessList;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_f

    :cond_a
    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableList;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableList;-><init>(Ljava/util/List;)V

    :goto_f
    return-object v0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableMap;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableSet;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static zeroLengthArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
