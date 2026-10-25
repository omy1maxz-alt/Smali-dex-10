.class public Ljj$/nio/file/SimpleFileVisitor;
.super Ljava/lang/Object;
.source "SimpleFileVisitor.java"

# interfaces
.implements Ljj$/nio/file/FileVisitor;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljj$/nio/file/FileVisitResult;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_8

    sget-object v0, Ljj$/nio/file/FileVisitResult;->CONTINUE:Ljj$/nio/file/FileVisitResult;

    return-object v0

    :cond_8
    throw p2
.end method

.method public preVisitDirectory(Ljava/lang/Object;Ljj$/nio/file/attribute/BasicFileAttributes;)Ljj$/nio/file/FileVisitResult;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/nio/file/FileVisitResult;->CONTINUE:Ljj$/nio/file/FileVisitResult;

    return-object v0
.end method

.method public visitFile(Ljava/lang/Object;Ljj$/nio/file/attribute/BasicFileAttributes;)Ljj$/nio/file/FileVisitResult;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/nio/file/FileVisitResult;->CONTINUE:Ljj$/nio/file/FileVisitResult;

    return-object v0
.end method

.method public visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljj$/nio/file/FileVisitResult;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
.end method
