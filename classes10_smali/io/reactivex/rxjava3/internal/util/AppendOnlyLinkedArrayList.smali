.class public Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;
.super Ljava/lang/Object;
.source "AppendOnlyLinkedArrayList.java"


# instance fields
.field final capacity:I

.field final head:[Ljava/lang/Object;

.field offset:I

.field tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/rxjava3/core/Observer;)Z
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    :goto_4
    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    if-nez v3, :cond_e

    goto :goto_19

    :cond_e
    invoke-static {v3, p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/rxjava3/core/Observer;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    :goto_19
    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    goto :goto_4

    :cond_1e
    return v2
.end method

.method public accept(Lorg/reactivestreams/Subscriber;)Z
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    :goto_4
    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    if-nez v3, :cond_e

    goto :goto_19

    :cond_e
    invoke-static {v3, p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    :goto_19
    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    goto :goto_4

    :cond_1e
    return v2
.end method

.method public add(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    iget v1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->offset:I

    if-ne v1, v0, :cond_11

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    aput-object v1, v2, v0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_11
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->offset:I

    return-void
.end method

.method public forEachWhile(Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    :goto_4
    if-eqz v0, :cond_1d

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    if-nez v3, :cond_e

    goto :goto_18

    :cond_e
    invoke-interface {p1, v3}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return-void

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    :goto_18
    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public setFirst(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method
