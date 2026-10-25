.class public abstract Lio/reactivex/rxjava3/core/Flowable;
.super Ljava/lang/Object;
.source "Flowable.java"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# static fields
.field static final BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "rx3.buffer-size"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferSize()I
    .registers 1

    sget v0, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    return v0
.end method

.method public static combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    const-string/jumbo v0, "source1 is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "source2 is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/reactivestreams/Publisher;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2}, Lio/reactivex/rxjava3/internal/functions/Functions;->toFunction(Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/functions/Function;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/Flowable;->combineLatestArray([Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function;I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function6;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 9

    const-string/jumbo v0, "source1 is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "source2 is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "source3 is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "source4 is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "source5 is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "source6 is null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/reactivestreams/Publisher;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    invoke-static {p6}, Lio/reactivex/rxjava3/internal/functions/Functions;->toFunction(Lio/reactivex/rxjava3/functions/Function6;)Lio/reactivex/rxjava3/functions/Function;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/Flowable;->combineLatestArray([Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function;I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestArray([Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function;I)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    const-string/jumbo v0, "sources is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_e

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->empty()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v0, "combiner is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;-><init>([Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    const-string/jumbo v0, "source1 is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "source2 is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/reactivestreams/Publisher;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Flowable;->concatArray([Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

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

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1a

    aget-object p0, p0, v2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Flowable;->fromPublisher(Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray;

    invoke-direct {v0, p0, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatArray;-><init>([Lorg/reactivestreams/Publisher;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/rxjava3/core/FlowableOnSubscribe;Lio/reactivex/rxjava3/core/BackpressureStrategy;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    const-string/jumbo v0, "source is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mode is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate;-><init>(Lio/reactivex/rxjava3/core/FlowableOnSubscribe;Lio/reactivex/rxjava3/core/BackpressureStrategy;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method private doOnEach(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 12

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public static empty()Lio/reactivex/rxjava3/core/Flowable;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;->INSTANCE:Lio/reactivex/rxjava3/core/Flowable;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 2

    const-string v0, "callable is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromCallable;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 2

    const-string/jumbo v0, "source is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static fromPublisher(Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 2

    instance-of v0, p0, Lio/reactivex/rxjava3/core/Flowable;

    if-eqz v0, :cond_b

    check-cast p0, Lio/reactivex/rxjava3/core/Flowable;

    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "publisher is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromPublisher;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromPublisher;-><init>(Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 2

    const-string v0, "item is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final blockingFirst()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/subscribers/BlockingFirstSubscriber;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/subscribers/BlockingFirstSubscriber;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/subscribers/BlockingBaseSubscriber;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final buffer(I)Lio/reactivex/rxjava3/core/Flowable;
    .registers 2

    invoke-virtual {p0, p1, p1}, Lio/reactivex/rxjava3/core/Flowable;->buffer(II)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(II)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Lio/reactivex/rxjava3/functions/Supplier;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/Flowable;->buffer(IILio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(IILio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    const-string v0, "count"

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    const-string/jumbo v0, "skip"

    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;-><init>(Lio/reactivex/rxjava3/core/Flowable;IILio/reactivex/rxjava3/functions/Supplier;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    const-string v0, "other is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/core/Flowable;->concat(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final distinctUntilChanged()Lio/reactivex/rxjava3/core/Flowable;
    .registers 2

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->identity()Lio/reactivex/rxjava3/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Flowable;->distinctUntilChanged(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->equalsPredicate()Lio/reactivex/rxjava3/functions/BiPredicate;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiPredicate;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->emptyConsumer()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    invoke-direct {p0, p1, v0, v1, v1}, Lio/reactivex/rxjava3/core/Flowable;->doOnEach(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final doOnTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->emptyConsumer()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/Functions;->actionConsumer(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/rxjava3/core/Flowable;->doOnEach(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final elementAt(J)Lio/reactivex/rxjava3/core/Maybe;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;-><init>(Lio/reactivex/rxjava3/core/Flowable;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFilter;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final firstElement()Lio/reactivex/rxjava3/core/Maybe;
    .registers 3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->elementAt(J)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->flatMap(Lio/reactivex/rxjava3/functions/Function;ZII)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 9

    const/4 v3, 0x0

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v4

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/Flowable;->flatMap(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiFunction;ZII)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiFunction;ZII)Lio/reactivex/rxjava3/core/Flowable;
    .registers 7

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p4, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    invoke-static {p5, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper;->flatMapWithCombiner(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lio/reactivex/rxjava3/core/Flowable;->flatMap(Lio/reactivex/rxjava3/functions/Function;ZII)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/rxjava3/functions/Function;ZII)Lio/reactivex/rxjava3/core/Flowable;
    .registers 12

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    instance-of v0, p0, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    if-eqz v0, :cond_26

    move-object p2, p0

    check-cast p2, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    invoke-interface {p2}, Lio/reactivex/rxjava3/operators/ScalarSupplier;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_21

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->empty()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    :cond_21
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScalarXMap;->scalarXMap(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    :cond_26
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;ZII)V

    invoke-static {v6}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapMaybe(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->flatMapMaybe(Lio/reactivex/rxjava3/functions/Function;ZI)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapMaybe(Lio/reactivex/rxjava3/functions/Function;ZI)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapMaybe;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;ZI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->flatMapSingle(Lio/reactivex/rxjava3/functions/Function;ZI)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lio/reactivex/rxjava3/functions/Function;ZI)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapSingle;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMapSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;ZI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;ZI)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/rxjava3/core/Scheduler;ZI)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Scheduler;ZI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final onBackpressureBuffer()Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->onBackpressureBuffer(IZZ)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(IZZ)Lio/reactivex/rxjava3/core/Flowable;
    .registers 11

    const-string v0, "capacity"

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;

    sget-object v6, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureBuffer;-><init>(Lio/reactivex/rxjava3/core/Flowable;IZZLio/reactivex/rxjava3/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final onBackpressureDrop()Lio/reactivex/rxjava3/core/Flowable;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureDrop;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureLatest()Lio/reactivex/rxjava3/core/Flowable;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final parallel(I)Lio/reactivex/rxjava3/parallel/ParallelFlowable;
    .registers 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->from(Lorg/reactivestreams/Publisher;I)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object p1

    return-object p1
.end method

.method public final parallel(II)Lio/reactivex/rxjava3/parallel/ParallelFlowable;
    .registers 3

    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->from(Lorg/reactivestreams/Publisher;II)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object p1

    return-object p1
.end method

.method public final publish(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->publish(Lio/reactivex/rxjava3/functions/Function;I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final publish(Lio/reactivex/rxjava3/functions/Function;I)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    const-string v0, "selector is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->computation()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/Flowable;->sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 14

    const-string/jumbo v0, "unit is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v8}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSampleTimed;-><init>(Lio/reactivex/rxjava3/core/Flowable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;ZLio/reactivex/rxjava3/functions/Consumer;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final skip(J)Lio/reactivex/rxjava3/core/Flowable;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_17

    if-nez v2, :cond_d

    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;-><init>(Lio/reactivex/rxjava3/core/Flowable;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 expected but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    const-string v0, "item is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/reactivestreams/Publisher;

    const/4 v1, 0x0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Flowable;->concatArray([Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 4

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/rxjava3/functions/Consumer;

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 4

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;
    .registers 6

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V
    .registers 4

    const-string/jumbo v0, "subscriber is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_6
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/rxjava3/core/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeActual(Lorg/reactivestreams/Subscriber;)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_12} :catch_25
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_25
    move-exception p1

    throw p1
.end method

.method public final subscribe(Lorg/reactivestreams/Subscriber;)V
    .registers 3

    instance-of v0, p1, Lio/reactivex/rxjava3/core/FlowableSubscriber;

    if-eqz v0, :cond_a

    check-cast p1, Lio/reactivex/rxjava3/core/FlowableSubscriber;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    goto :goto_18

    :cond_a
    const-string/jumbo v0, "subscriber is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/subscribers/StrictSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/subscribers/StrictSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    :goto_18
    return-void
.end method

.method protected abstract subscribeActual(Lorg/reactivestreams/Subscriber;)V
.end method

.method public final subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;Z)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;Z)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Scheduler;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final switchMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->switchMap(Lio/reactivex/rxjava3/functions/Function;I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final switchMap(Lio/reactivex/rxjava3/functions/Function;I)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/Flowable;->switchMap0(Lio/reactivex/rxjava3/functions/Function;IZ)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method switchMap0(Lio/reactivex/rxjava3/functions/Function;IZ)Lio/reactivex/rxjava3/core/Flowable;
    .registers 5

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    instance-of v0, p0, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    if-eqz v0, :cond_21

    move-object p2, p0

    check-cast p2, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    invoke-interface {p2}, Lio/reactivex/rxjava3/operators/ScalarSupplier;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1c

    invoke-static {}, Lio/reactivex/rxjava3/core/Flowable;->empty()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScalarXMap;->scalarXMap(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    :cond_21
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSwitchMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final take(J)Lio/reactivex/rxjava3/core/Flowable;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake;-><init>(Lio/reactivex/rxjava3/core/Flowable;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final takeWhile(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTakeWhile;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTakeWhile;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/rxjava3/core/Flowable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 10

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->computation()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/Flowable;->throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;Z)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;Z)Lio/reactivex/rxjava3/core/Flowable;
    .registers 15

    const-string/jumbo v0, "unit is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest;-><init>(Lio/reactivex/rxjava3/core/Flowable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;ZLio/reactivex/rxjava3/functions/Consumer;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final toList()Lio/reactivex/rxjava3/core/Single;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lio/reactivex/rxjava3/core/Observable;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher;-><init>(Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final unsubscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;
    .registers 3

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method
