.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "FlowableEmpty.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/ScalarSupplier;


# static fields
.field public static final INSTANCE:Lio/reactivex/rxjava3/core/Flowable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;->INSTANCE:Lio/reactivex/rxjava3/core/Flowable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 2

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
