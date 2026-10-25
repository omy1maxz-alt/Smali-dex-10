.class abstract Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;
.super Lio/reactivex/rxjava3/core/Observable;
.source "AbstractObservableWithUpstream.java"


# instance fields
.field protected final source:Lio/reactivex/rxjava3/core/ObservableSource;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    return-void
.end method
