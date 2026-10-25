.class final Lio/reactivex/rxjava3/internal/schedulers/DisposeOnCancel;
.super Ljava/lang/Object;
.source "DisposeOnCancel.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# instance fields
.field final upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/DisposeOnCancel;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 2

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/DisposeOnCancel;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
