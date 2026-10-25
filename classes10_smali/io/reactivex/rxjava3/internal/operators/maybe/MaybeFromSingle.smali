.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle;
.super Lio/reactivex/rxjava3/core/Maybe;
.source "MaybeFromSingle.java"


# instance fields
.field final source:Lio/reactivex/rxjava3/core/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/SingleSource;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle;->source:Lio/reactivex/rxjava3/core/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle;->source:Lio/reactivex/rxjava3/core/SingleSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/SingleSource;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
