.class public interface abstract Ljj$/nio/file/attribute/PosixFileAttributeView;
.super Ljava/lang/Object;
.source "PosixFileAttributeView.java"

# interfaces
.implements Ljj$/nio/file/attribute/BasicFileAttributeView;
.implements Ljj$/nio/file/attribute/FileOwnerAttributeView;


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract readAttributes()Ljj$/nio/file/attribute/PosixFileAttributes;
.end method

.method public abstract setGroup(Ljj$/nio/file/attribute/GroupPrincipal;)V
.end method

.method public abstract setPermissions(Ljava/util/Set;)V
.end method
