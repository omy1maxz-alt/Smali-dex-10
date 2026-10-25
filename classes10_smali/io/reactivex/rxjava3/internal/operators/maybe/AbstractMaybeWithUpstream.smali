.class abstract Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;
.super Lio/reactivex/rxjava3/core/Maybe;
.source "AbstractMaybeWithUpstream.java"


# instance fields
.field protected final source:Lio/reactivex/rxjava3/core/MaybeSource;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/MaybeSource;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    return-void
.end method
