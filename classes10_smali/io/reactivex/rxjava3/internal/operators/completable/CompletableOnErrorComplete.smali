.class public final Lio/reactivex/rxjava3/internal/operators/completable/CompletableOnErrorComplete;
.super Lio/reactivex/rxjava3/core/Completable;
.source "CompletableOnErrorComplete.java"


# instance fields
.field final predicate:Lio/reactivex/rxjava3/functions/Predicate;

.field final source:Lio/reactivex/rxjava3/core/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/CompletableSource;Lio/reactivex/rxjava3/functions/Predicate;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableOnErrorComplete;->source:Lio/reactivex/rxjava3/core/CompletableSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableOnErrorComplete;->predicate:Lio/reactivex/rxjava3/functions/Predicate;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableOnErrorComplete;->source:Lio/reactivex/rxjava3/core/CompletableSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/completable/CompletableOnErrorComplete$OnError;

    invoke-direct {v1, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableOnErrorComplete$OnError;-><init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletableOnErrorComplete;Lio/reactivex/rxjava3/core/CompletableObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/CompletableSource;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-void
.end method
