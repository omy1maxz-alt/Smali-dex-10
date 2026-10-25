.class public abstract Lio/reactivex/rxjava3/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 1

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .registers 2

    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_13

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_d

    return-void

    :cond_d
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    :cond_10
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    :cond_13
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0
.end method
