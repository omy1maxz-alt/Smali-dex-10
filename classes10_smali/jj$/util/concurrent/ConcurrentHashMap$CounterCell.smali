.class final Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# instance fields
.field volatile value:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    return-void
.end method
