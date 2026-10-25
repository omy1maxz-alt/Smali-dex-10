.class abstract Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$SingleHolder;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"


# static fields
.field static final HELPER:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->single()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$SingleHolder;->HELPER:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method
