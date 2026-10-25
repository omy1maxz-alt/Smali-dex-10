.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;
.super Lio/reactivex/rxjava3/core/Observable;
.source "ObservableZip.java"


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field final sources:[Lio/reactivex/rxjava3/core/ObservableSource;

.field final sourcesIterable:Ljava/lang/Iterable;

.field final zipper:Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method public constructor <init>([Lio/reactivex/rxjava3/core/ObservableSource;Ljava/lang/Iterable;Lio/reactivex/rxjava3/functions/Function;IZ)V
    .registers 6

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->sources:[Lio/reactivex/rxjava3/core/ObservableSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->sourcesIterable:Ljava/lang/Iterable;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->zipper:Lio/reactivex/rxjava3/functions/Function;

    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->bufferSize:I

    iput-boolean p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->delayError:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 8

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->sources:[Lio/reactivex/rxjava3/core/ObservableSource;

    if-nez v0, :cond_2e

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/rxjava3/core/ObservableSource;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/rxjava3/core/ObservableSource;

    array-length v5, v0

    if-ne v3, v5, :cond_28

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    new-array v5, v5, [Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_28
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_10

    :cond_2e
    array-length v3, v0

    :cond_2f
    if-nez v3, :cond_35

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :cond_35
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->zipper:Lio/reactivex/rxjava3/functions/Function;

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->delayError:Z

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;-><init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Function;IZ)V

    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;->bufferSize:I

    invoke-virtual {v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->subscribe([Lio/reactivex/rxjava3/core/ObservableSource;I)V

    return-void
.end method
