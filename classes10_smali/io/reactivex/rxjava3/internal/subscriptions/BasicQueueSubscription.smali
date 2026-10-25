.class public abstract Lio/reactivex/rxjava3/internal/subscriptions/BasicQueueSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "BasicQueueSubscription.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/QueueSubscription;


# static fields
.field private static final serialVersionUID:J = -0x5c95ffaa2e3a1e66L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
