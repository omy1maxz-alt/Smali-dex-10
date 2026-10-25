.class final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;
.super Ljava/lang/Object;
.source "MaybeSubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final observer:Lio/reactivex/rxjava3/core/MaybeObserver;

.field final source:Lio/reactivex/rxjava3/core/MaybeSource;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/MaybeSource;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->observer:Lio/reactivex/rxjava3/core/MaybeObserver;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->observer:Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/MaybeSource;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    return-void
.end method
