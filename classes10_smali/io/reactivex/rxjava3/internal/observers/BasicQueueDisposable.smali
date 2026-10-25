.class public abstract Lio/reactivex/rxjava3/internal/observers/BasicQueueDisposable;
.super Ljava/lang/Object;
.source "BasicQueueDisposable.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/QueueDisposable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
