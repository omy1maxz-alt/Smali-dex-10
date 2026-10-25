.class public Ljj$/nio/file/attribute/FileAttributeConversions;
.super Ljava/lang/Object;
.source "FileAttributeConversions.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/file/attribute/FileAttribute;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljj$/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/FileAttributeConversions;->isPosixPermissionAttributes(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljj$/nio/file/attribute/FileAttributeConversions$2;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/FileAttributeConversions$2;-><init>(Ljj$/nio/file/attribute/FileAttribute;)V

    return-object v0

    :cond_14
    invoke-static {p0}, Ljj$/nio/file/attribute/FileAttribute$Wrapper;->convert(Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/file/attribute/FileAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/nio/file/attribute/FileAttribute;)Ljj$/nio/file/attribute/FileAttribute;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/FileAttributeConversions;->isPosixPermissionAttributes(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljj$/nio/file/attribute/FileAttributeConversions$1;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/FileAttributeConversions$1;-><init>(Ljava/nio/file/attribute/FileAttribute;)V

    return-object v0

    :cond_14
    invoke-static {p0}, Ljj$/nio/file/attribute/FileAttribute$VivifiedWrapper;->convert(Ljava/nio/file/attribute/FileAttribute;)Ljj$/nio/file/attribute/FileAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/nio/file/attribute/FileTime;)Ljj$/nio/file/attribute/FileTime;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/nio/file/attribute/FileTime;->fromMillis(J)Ljj$/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method private static isPosixPermissionAttributes(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1e

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljj$/nio/file/attribute/PosixFilePermission;

    if-nez v0, :cond_1c

    instance-of p0, p0, Ljava/nio/file/attribute/PosixFilePermission;

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method
