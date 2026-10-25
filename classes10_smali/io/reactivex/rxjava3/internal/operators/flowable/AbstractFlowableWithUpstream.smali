.class abstract Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "AbstractFlowableWithUpstream.java"


# instance fields
.field protected final source:Lio/reactivex/rxjava3/core/Flowable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Flowable;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    const-string/jumbo v0, "source is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    return-void
.end method
