.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe;
.super Lio/reactivex/rxjava3/core/Single;
.source "SingleDoOnSubscribe.java"


# instance fields
.field final onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

.field final source:Lio/reactivex/rxjava3/core/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Consumer;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe;->source:Lio/reactivex/rxjava3/core/SingleSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe;->onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe;->source:Lio/reactivex/rxjava3/core/SingleSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe;->onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/SingleSource;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
