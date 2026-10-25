.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleError;
.super Lio/reactivex/rxjava3/core/Single;
.source "SingleError.java"


# instance fields
.field final errorSupplier:Lio/reactivex/rxjava3/functions/Supplier;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/functions/Supplier;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleError;->errorSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleError;->errorSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Supplier returned a null Throwable."

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->nullCheck(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    :goto_13
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
