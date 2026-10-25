.class Ljj$/util/concurrent/ThreadLocalRandom$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalRandom.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom$1;->initialValue()Ljj$/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljj$/util/concurrent/ThreadLocalRandom;
    .registers 3

    new-instance v0, Ljj$/util/concurrent/ThreadLocalRandom;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;-><init>(Ljj$/util/concurrent/ThreadLocalRandom-IA;)V

    return-object v0
.end method
