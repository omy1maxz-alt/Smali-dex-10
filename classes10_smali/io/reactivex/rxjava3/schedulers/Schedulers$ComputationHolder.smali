.class abstract Lio/reactivex/rxjava3/schedulers/Schedulers$ComputationHolder;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field static final DEFAULT:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers$ComputationHolder;->DEFAULT:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method
