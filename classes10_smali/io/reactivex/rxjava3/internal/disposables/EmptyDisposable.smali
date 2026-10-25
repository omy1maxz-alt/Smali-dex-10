.class public final enum Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;
.super Ljava/lang/Enum;
.source "EmptyDisposable.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/QueueDisposable;


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

.field public static final enum INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

.field public static final enum NEVER:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    new-instance v1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    const-string v3, "NEVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->$VALUES:[Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static complete(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    .registers 2

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-interface {p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onComplete()V

    return-void
.end method

.method public static complete(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 2

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-interface {p0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .registers 3

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/MaybeObserver;)V
    .registers 3

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/Observer;)V
    .registers 3

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 3

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;
    .registers 2

    const-class v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p0
.end method

.method public static values()[Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->$VALUES:[Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-virtual {v0}, [Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestFusion(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x2

    return p1
.end method
