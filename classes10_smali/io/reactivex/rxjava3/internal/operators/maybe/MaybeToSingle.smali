.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;
.super Lio/reactivex/rxjava3/core/Single;
.source "MaybeToSingle.java"


# instance fields
.field final defaultValue:Ljava/lang/Object;

.field final source:Lio/reactivex/rxjava3/core/MaybeSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/MaybeSource;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;->defaultValue:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/MaybeSource;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    return-void
.end method
