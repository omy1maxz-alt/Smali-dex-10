.class final Lio/reactivex/rxjava3/schedulers/Schedulers$IOTask;
.super Ljava/lang/Object;
.source "Schedulers.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Supplier;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/reactivex/rxjava3/core/Scheduler;
    .registers 2

    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers$IoHolder;->DEFAULT:Lio/reactivex/rxjava3/core/Scheduler;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/reactivex/rxjava3/schedulers/Schedulers$IOTask;->get()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method
