.class public final Lokhttp4/internal/connection/StreamAllocation$StreamAllocationReference;
.super Ljava/lang/ref/WeakReference;
.source "StreamAllocation.java"


# instance fields
.field public final callStackTrace:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lokhttp4/internal/connection/StreamAllocation;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lokhttp4/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    return-void
.end method
