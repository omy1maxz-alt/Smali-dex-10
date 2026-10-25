.class public abstract Ljj$/nio/file/FileStore;
.super Ljava/lang/Object;
.source "FileStore.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public getBlockSize()J
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getFileStoreAttributeView(Ljava/lang/Class;)Ljj$/nio/file/attribute/FileStoreAttributeView;
.end method

.method public abstract getTotalSpace()J
.end method

.method public abstract getUnallocatedSpace()J
.end method

.method public abstract getUsableSpace()J
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract supportsFileAttributeView(Ljava/lang/Class;)Z
.end method

.method public abstract supportsFileAttributeView(Ljava/lang/String;)Z
.end method

.method public abstract type()Ljava/lang/String;
.end method
