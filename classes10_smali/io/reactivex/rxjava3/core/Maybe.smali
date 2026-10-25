.class public abstract Lio/reactivex/rxjava3/core/Maybe;
.super Ljava/lang/Object;
.source "Maybe.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/MaybeSource;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/core/MaybeSource;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    const-string/jumbo v0, "source1 is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "source2 is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Maybe;->concatArray([Lio/reactivex/rxjava3/core/MaybeSource;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lio/reactivex/rxjava3/core/MaybeSource;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    const-string/jumbo v0, "sources is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_e

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->empty()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x0

    aget-object p0, p0, v0

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToFlowable;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToFlowable;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0

    :cond_1f
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;-><init>([Lio/reactivex/rxjava3/core/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static defer(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 2

    const-string/jumbo v0, "supplier is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;-><init>(Lio/reactivex/rxjava3/functions/Supplier;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lio/reactivex/rxjava3/core/Maybe;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 2

    const-string v0, "callable is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 2

    const-string v0, "item is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 5

    const-string/jumbo v0, "source1 is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "source2 is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "zipper is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lio/reactivex/rxjava3/internal/functions/Functions;->toFunction(Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/functions/Function;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Lio/reactivex/rxjava3/core/Maybe;->zipArray(Lio/reactivex/rxjava3/functions/Function;[Lio/reactivex/rxjava3/core/MaybeSource;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zipArray(Lio/reactivex/rxjava3/functions/Function;[Lio/reactivex/rxjava3/core/MaybeSource;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 3

    const-string/jumbo v0, "sources is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_e

    invoke-static {}, Lio/reactivex/rxjava3/core/Maybe;->empty()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0

    :cond_e
    const-string/jumbo v0, "zipper is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray;-><init>([Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final blockingGet()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final blockingGet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string v0, "defaultValue is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->blockingGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 3

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFilter;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFilter;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 3

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatten;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Completable;
    .registers 3

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Completable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 3

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 3

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorComplete()Lio/reactivex/rxjava3/core/Maybe;
    .registers 2

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->alwaysTrue()Lio/reactivex/rxjava3/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Maybe;->onErrorComplete(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 3

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeOnErrorComplete;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeOnErrorComplete;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 4

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->emptyConsumer()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/rxjava3/functions/Consumer;

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 4

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/rxjava3/functions/Consumer;

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 4

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 5

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribeWith(Lio/reactivex/rxjava3/core/MaybeObserver;)Lio/reactivex/rxjava3/core/MaybeObserver;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    .registers 4

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/core/MaybeObserver;)Lio/reactivex/rxjava3/core/MaybeObserver;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_e
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribeActual(Lio/reactivex/rxjava3/core/MaybeObserver;)V
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

.method protected abstract subscribeActual(Lio/reactivex/rxjava3/core/MaybeObserver;)V
.end method

.method public final subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 3

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWith(Lio/reactivex/rxjava3/core/MaybeObserver;)Lio/reactivex/rxjava3/core/MaybeObserver;
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    return-object p1
.end method

.method public final switchIfEmpty(Lio/reactivex/rxjava3/core/SingleSource;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    const-string v0, "other is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSwitchIfEmptySingle;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSwitchIfEmptySingle;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/core/SingleSource;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public final toSingle()Lio/reactivex/rxjava3/core/Single;
    .registers 3

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method public final zipWith(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 4

    const-string v0, "other is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->zip(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method
