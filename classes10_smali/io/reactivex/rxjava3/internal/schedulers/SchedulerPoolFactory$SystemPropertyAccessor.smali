.class final Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
