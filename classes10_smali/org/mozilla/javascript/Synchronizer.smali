.class public Lorg/mozilla/javascript/Synchronizer;
.super Lorg/mozilla/javascript/Delegator;
.source "Synchronizer.java"


# instance fields
.field private syncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Delegator;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Delegator;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    iput-object p2, p0, Lorg/mozilla/javascript/Synchronizer;->syncObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/Synchronizer;->syncObject:Ljava/lang/Object;

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    move-object v0, p3

    :goto_6
    instance-of v1, v0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_10

    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    :cond_10
    monitor-enter v0

    :try_start_11
    iget-object v1, p0, Lorg/mozilla/javascript/Delegator;->obj:Lorg/mozilla/javascript/Scriptable;

    check-cast v1, Lorg/mozilla/javascript/Function;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p1
.end method
