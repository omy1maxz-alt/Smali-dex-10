.class public final Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;
.super Lio/reactivex/rxjava3/core/Single;
.source "CompletableToSingle.java"


# instance fields
.field final completionValue:Ljava/lang/Object;

.field final completionValueSupplier:Lio/reactivex/rxjava3/functions/Supplier;

.field final source:Lio/reactivex/rxjava3/core/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/CompletableSource;Lio/reactivex/rxjava3/functions/Supplier;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->source:Lio/reactivex/rxjava3/core/CompletableSource;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->completionValue:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->completionValueSupplier:Lio/reactivex/rxjava3/functions/Supplier;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->source:Lio/reactivex/rxjava3/core/CompletableSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;

    invoke-direct {v1, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle$ToSingle;-><init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;Lio/reactivex/rxjava3/core/SingleObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/CompletableSource;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-void
.end method
