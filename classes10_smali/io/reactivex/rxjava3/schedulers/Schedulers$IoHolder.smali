.class abstract Lio/reactivex/rxjava3/schedulers/Schedulers$IoHolder;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field static final DEFAULT:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers$IoHolder;->DEFAULT:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method
