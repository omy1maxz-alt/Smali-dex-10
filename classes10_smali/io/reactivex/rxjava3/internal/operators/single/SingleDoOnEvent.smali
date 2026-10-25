.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;
.super Lio/reactivex/rxjava3/core/Single;
.source "SingleDoOnEvent.java"


# instance fields
.field final onEvent:Lio/reactivex/rxjava3/functions/BiConsumer;

.field final source:Lio/reactivex/rxjava3/core/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/BiConsumer;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;->source:Lio/reactivex/rxjava3/core/SingleSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;->onEvent:Lio/reactivex/rxjava3/functions/BiConsumer;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;->source:Lio/reactivex/rxjava3/core/SingleSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;

    invoke-direct {v1, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent$DoOnEvent;-><init>(Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;Lio/reactivex/rxjava3/core/SingleObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/SingleSource;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
