.class public abstract Lio/reactivex/rxjava3/core/Single;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleSource;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs ambArray([Lio/reactivex/rxjava3/core/SingleSource;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string/jumbo v0, "sources is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_12

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper;->emptyThrower()Lio/reactivex/rxjava3/functions/Supplier;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Single;->error(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0

    :cond_12
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Single;->wrap(Lio/reactivex/rxjava3/core/SingleSource;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0

    :cond_1e
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>([Lio/reactivex/rxjava3/core/SingleSource;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/rxjava3/core/SingleOnSubscribe;)Lio/reactivex/rxjava3/core/Single;
    .registers 2

    const-string/jumbo v0, "source is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleCreate;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleCreate;-><init>(Lio/reactivex/rxjava3/core/SingleOnSubscribe;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static error(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Single;
    .registers 2

    const-string/jumbo v0, "supplier is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleError;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleError;-><init>(Lio/reactivex/rxjava3/functions/Supplier;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;
    .registers 2

    const-string v0, "callable is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromCallable;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;
    .registers 2

    const-string v0, "item is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleJust;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleJust;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lio/reactivex/rxjava3/core/SingleSource;)Lio/reactivex/rxjava3/core/Single;
    .registers 2

    const-string/jumbo v0, "source is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lio/reactivex/rxjava3/core/Single;

    if-eqz v0, :cond_11

    check-cast p0, Lio/reactivex/rxjava3/core/Single;

    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromUnsafeSource;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleFromUnsafeSource;-><init>(Lio/reactivex/rxjava3/core/SingleSource;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ambWith(Lio/reactivex/rxjava3/core/SingleSource;)Lio/reactivex/rxjava3/core/Single;
    .registers 4

    const-string v0, "other is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->ambArray([Lio/reactivex/rxjava3/core/SingleSource;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final blockingGet()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final compose(Lio/reactivex/rxjava3/core/SingleTransformer;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string/jumbo v0, "transformer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/SingleTransformer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleTransformer;->apply(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/SingleSource;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->wrap(Lio/reactivex/rxjava3/core/SingleSource;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "onError is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEvent(Lio/reactivex/rxjava3/functions/BiConsumer;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "onEvent is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/BiConsumer;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSuccess(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSuccess;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMap;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Completable;
    .registers 3

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapCompletable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapCompletable;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Completable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapPublisher(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapPublisher;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapPublisher;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;
    .registers 4

    const-string v0, "itemSupplier is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;
    .registers 4

    const-string v0, "item is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/BiConsumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 3

    const-string v0, "onCallback is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/BiConsumer;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 3

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 4

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p1, p2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 4

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/SingleObserver;)Lio/reactivex/rxjava3/core/SingleObserver;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_e
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_11} :catch_22
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_22
    move-exception p1

    throw p1
.end method

.method protected abstract subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
.end method

.method public final subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleSubscribeOn;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final toFlowable()Lio/reactivex/rxjava3/core/Flowable;
    .registers 2

    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/FuseToFlowable;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/FuseToFlowable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/FuseToFlowable;->fuseToFlowable()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleToFlowable;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleToFlowable;-><init>(Lio/reactivex/rxjava3/core/SingleSource;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final toMaybe()Lio/reactivex/rxjava3/core/Maybe;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle;-><init>(Lio/reactivex/rxjava3/core/SingleSource;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lio/reactivex/rxjava3/core/Observable;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable;-><init>(Lio/reactivex/rxjava3/core/SingleSource;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method
