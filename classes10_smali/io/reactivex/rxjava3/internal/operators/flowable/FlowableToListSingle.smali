.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;
.super Lio/reactivex/rxjava3/core/Single;
.source "FlowableToListSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/FuseToFlowable;


# instance fields
.field final collectionSupplier:Lio/reactivex/rxjava3/functions/Supplier;

.field final source:Lio/reactivex/rxjava3/core/Flowable;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;)V
    .registers 3

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Lio/reactivex/rxjava3/functions/Supplier;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Supplier;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;->source:Lio/reactivex/rxjava3/core/Flowable;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;->collectionSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    return-void
.end method


# virtual methods
.method public fuseToFlowable()Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToList;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;->source:Lio/reactivex/rxjava3/core/Flowable;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;->collectionSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToList;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Supplier;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;->collectionSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null Collection."

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->nullCheck(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_19

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;->source:Lio/reactivex/rxjava3/core/Flowable;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;

    invoke-direct {v2, p1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void

    :catchall_19
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
