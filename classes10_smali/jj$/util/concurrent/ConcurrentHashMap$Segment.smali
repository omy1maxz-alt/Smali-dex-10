.class Ljj$/util/concurrent/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field final loadFactor:F


# direct methods
.method constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput p1, p0, Ljj$/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    return-void
.end method
