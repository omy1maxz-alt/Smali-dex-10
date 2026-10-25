.class public interface abstract Ljj$/nio/file/FileVisitor;
.super Ljava/lang/Object;
.source "FileVisitor.java"


# virtual methods
.method public abstract postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljj$/nio/file/FileVisitResult;
.end method

.method public abstract preVisitDirectory(Ljava/lang/Object;Ljj$/nio/file/attribute/BasicFileAttributes;)Ljj$/nio/file/FileVisitResult;
.end method

.method public abstract visitFile(Ljava/lang/Object;Ljj$/nio/file/attribute/BasicFileAttributes;)Ljj$/nio/file/FileVisitResult;
.end method

.method public abstract visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljj$/nio/file/FileVisitResult;
.end method
