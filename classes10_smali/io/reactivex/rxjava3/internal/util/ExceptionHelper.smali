.class public abstract Lio/reactivex/rxjava3/internal/util/ExceptionHelper;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"


# static fields
.field public static final TERMINATED:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/internal/util/ExceptionHelper$Termination;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper$Termination;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    return-void
.end method

.method public static addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z
    .registers 7

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x1

    if-nez v0, :cond_11

    move-object v3, p1

    goto :goto_1d

    :cond_11
    new-instance v3, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    invoke-direct {v3, v4}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    :goto_1d
    invoke-static {p0, v0, v3}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public static createNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;
    .registers 2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->nullWarning(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nullCheck(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->createNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public static nullWarning(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Null values are generally not allowed in 3.x operators and sources."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_11

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    :cond_11
    return-object v0
.end method

.method public static throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .registers 2

    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/Exception;

    return-object p0

    :cond_7
    throw p0
.end method

.method public static wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2

    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_11

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_11
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method
