.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromUnsafeSource;
.super Lio/reactivex/rxjava3/core/Observable;
.source "ObservableFromUnsafeSource.java"


# instance fields
.field final source:Lio/reactivex/rxjava3/core/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromUnsafeSource;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromUnsafeSource;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
