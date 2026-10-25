.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;
.super Lio/reactivex/rxjava3/core/Observable;
.source "ObservableEmpty.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/ScalarSupplier;


# static fields
.field public static final INSTANCE:Lio/reactivex/rxjava3/core/Observable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;->INSTANCE:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 2

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
