.class final Lio/reactivex/rxjava3/internal/functions/Functions$MaxRequestSubscription;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/reactivestreams/Subscription;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/functions/Functions$MaxRequestSubscription;->accept(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public accept(Lorg/reactivestreams/Subscription;)V
    .registers 4

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
