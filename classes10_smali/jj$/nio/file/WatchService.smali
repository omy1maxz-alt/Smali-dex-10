.class public interface abstract Ljj$/nio/file/WatchService;
.super Ljava/lang/Object;
.source "WatchService.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract poll()Ljj$/nio/file/WatchKey;
.end method

.method public abstract poll(JLjava/util/concurrent/TimeUnit;)Ljj$/nio/file/WatchKey;
.end method

.method public abstract take()Ljj$/nio/file/WatchKey;
.end method
