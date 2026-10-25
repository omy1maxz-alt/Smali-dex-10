.class public Ljj$/nio/file/PathApiFlips;
.super Ljava/lang/Object;
.source "PathApiFlips.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPath(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/Path;

    if-eqz v0, :cond_f

    check-cast p0, Ljj$/nio/file/Path;

    invoke-static {p0}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p0, Ljava/nio/file/Path;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/nio/file/Path;

    invoke-static {p0}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object p0
.end method

.method public static flipDirectoryStreamFilterPath(Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream$Filter;
    .registers 2

    new-instance v0, Ljj$/nio/file/PathApiFlips$DirectoryStreamFilterWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/PathApiFlips$DirectoryStreamFilterWrapper;-><init>(Ljava/nio/file/DirectoryStream$Filter;)V

    return-object v0
.end method

.method public static flipDirectoryStreamPath(Ljava/nio/file/DirectoryStream;)Ljava/nio/file/DirectoryStream;
    .registers 2

    new-instance v0, Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;-><init>(Ljava/nio/file/DirectoryStream;)V

    return-object v0
.end method

.method public static flipIterablePath(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2

    new-instance v0, Ljj$/nio/file/PathApiFlips$IterablePathWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/PathApiFlips$IterablePathWrapper;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static flipIteratorPath(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ljj$/nio/file/PathApiFlips$IteratorPathWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/PathApiFlips$IteratorPathWrapper;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
