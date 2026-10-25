.class final Lio/reactivex/rxjava3/disposables/ActionDisposable;
.super Lio/reactivex/rxjava3/disposables/ReferenceDisposable;
.source "ActionDisposable.java"


# static fields
.field private static final serialVersionUID:J = -0x721258278bee89a1L


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/functions/Action;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/disposables/ReferenceDisposable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onDisposed(Lio/reactivex/rxjava3/functions/Action;)V
    .registers 2

    :try_start_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method protected bridge synthetic onDisposed(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lio/reactivex/rxjava3/functions/Action;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/ActionDisposable;->onDisposed(Lio/reactivex/rxjava3/functions/Action;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionDisposable(disposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/ReferenceDisposable;->isDisposed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
