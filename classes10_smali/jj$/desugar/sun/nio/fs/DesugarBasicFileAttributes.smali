.class Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;
.super Ljava/lang/Object;
.source "DesugarBasicFileAttributes.java"

# interfaces
.implements Ljj$/nio/file/attribute/BasicFileAttributes;


# instance fields
.field private final creationTime:Ljj$/nio/file/attribute/FileTime;

.field private final fileKey:Ljava/lang/Object;

.field private final isDirectory:Z

.field private final isOther:Z

.field private final isRegularFile:Z

.field private final isSymbolicLink:Z

.field private final lastAccessTime:Ljj$/nio/file/attribute/FileTime;

.field private final lastModifiedTime:Ljj$/nio/file/attribute/FileTime;

.field private final size:J


# direct methods
.method public constructor <init>(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;ZZZZJLjava/lang/Object;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->lastModifiedTime:Ljj$/nio/file/attribute/FileTime;

    iput-object p2, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->lastAccessTime:Ljj$/nio/file/attribute/FileTime;

    iput-object p3, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->creationTime:Ljj$/nio/file/attribute/FileTime;

    iput-boolean p4, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isRegularFile:Z

    iput-boolean p5, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isDirectory:Z

    iput-boolean p6, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isSymbolicLink:Z

    iput-boolean p7, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isOther:Z

    iput-wide p8, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->size:J

    iput-object p10, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->fileKey:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/io/File;)Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;
    .registers 15

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljj$/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljj$/nio/file/attribute/FileTime;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    invoke-static {p0}, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isSymlink(Ljava/io/File;)Z

    move-result v9

    new-instance v3, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;

    if-nez v7, :cond_21

    if-nez v8, :cond_21

    if-nez v9, :cond_21

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_23
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {p0}, Ljava/io/File;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v3 .. v13}, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;-><init>(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;ZZZZJLjava/lang/Object;)V

    return-object v3
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .registers 4

    if-eqz p0, :cond_2e

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v0, p0

    goto :goto_1c

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1c
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_28} :catch_2b

    xor-int/lit8 v1, v1, 0x1

    return v1

    :catch_2b
    move-exception v0

    const/4 v1, 0x0

    return v1

    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public creationTime()Ljj$/nio/file/attribute/FileTime;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->creationTime:Ljj$/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public fileKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->fileKey:Ljava/lang/Object;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isDirectory:Z

    return v0
.end method

.method public isOther()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isOther:Z

    return v0
.end method

.method public isRegularFile()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isRegularFile:Z

    return v0
.end method

.method public isSymbolicLink()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isSymbolicLink:Z

    return v0
.end method

.method public lastAccessTime()Ljj$/nio/file/attribute/FileTime;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->lastAccessTime:Ljj$/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public lastModifiedTime()Ljj$/nio/file/attribute/FileTime;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->lastModifiedTime:Ljj$/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public size()J
    .registers 3

    iget-wide v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->size:J

    return-wide v0
.end method
