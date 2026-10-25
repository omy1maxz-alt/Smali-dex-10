.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally;
.super Lio/reactivex/rxjava3/core/Single;
.source "SingleDoFinally.java"


# instance fields
.field final onFinally:Lio/reactivex/rxjava3/functions/Action;

.field final source:Lio/reactivex/rxjava3/core/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Action;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally;->source:Lio/reactivex/rxjava3/core/SingleSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally;->onFinally:Lio/reactivex/rxjava3/functions/Action;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally;->source:Lio/reactivex/rxjava3/core/SingleSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally;->onFinally:Lio/reactivex/rxjava3/functions/Action;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoFinally$DoFinallyObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/functions/Action;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/SingleSource;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
