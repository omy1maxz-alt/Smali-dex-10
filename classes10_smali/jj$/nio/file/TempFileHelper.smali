.class Ljj$/nio/file/TempFileHelper;
.super Ljava/lang/Object;
.source "TempFileHelper.java"


# static fields
.field private static final isPosix:Z

.field private static final random:Ljava/security/SecureRandom;

.field private static final tmpdir:Ljj$/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    nop

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljj$/sun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljj$/nio/file/Path$-CC;->of(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object v0

    sput-object v0, Ljj$/nio/file/TempFileHelper;->tmpdir:Ljj$/nio/file/Path;

    invoke-static {}, Ljj$/nio/file/FileSystems;->getDefault()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    const-string v1, "posix"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ljj$/nio/file/TempFileHelper;->isPosix:Z

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljj$/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 11

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    if-nez p2, :cond_e

    if-eqz p3, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    const-string v0, ".tmp"

    :goto_d
    move-object p2, v0

    :cond_e
    if-nez p0, :cond_12

    sget-object p0, Ljj$/nio/file/TempFileHelper;->tmpdir:Ljj$/nio/file/Path;

    :cond_12
    sget-boolean v0, Ljj$/nio/file/TempFileHelper;->isPosix:Z

    if-eqz v0, :cond_5f

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-static {}, Ljj$/nio/file/FileSystems;->getDefault()Ljj$/nio/file/FileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_5f

    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_31

    new-array p4, v2, [Ljj$/nio/file/attribute/FileAttribute;

    if-eqz p3, :cond_2c

    sget-object v0, Ljj$/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljj$/nio/file/attribute/FileAttribute;

    goto :goto_2e

    :cond_2c
    sget-object v0, Ljj$/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljj$/nio/file/attribute/FileAttribute;

    :goto_2e
    aput-object v0, p4, v1

    goto :goto_5f

    :cond_31
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_33
    array-length v4, p4

    if-ge v3, v4, :cond_49

    aget-object v4, p4, v3

    invoke-interface {v4}, Ljj$/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "posix:permissions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v0, 0x1

    goto :goto_49

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_49
    :goto_49
    if-nez v0, :cond_5f

    array-length v3, p4

    add-int/2addr v3, v2

    new-array v3, v3, [Ljj$/nio/file/attribute/FileAttribute;

    array-length v4, p4

    invoke-static {p4, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, v3

    array-length v1, p4

    sub-int/2addr v1, v2

    if-eqz p3, :cond_5b

    sget-object v2, Ljj$/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljj$/nio/file/attribute/FileAttribute;

    goto :goto_5d

    :cond_5b
    sget-object v2, Ljj$/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljj$/nio/file/attribute/FileAttribute;

    :goto_5d
    aput-object v2, p4, v1

    :cond_5f
    :goto_5f
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    :goto_63
    :try_start_63
    invoke-static {p1, p2, p0}, Ljj$/nio/file/TempFileHelper;->generatePath(Ljava/lang/String;Ljava/lang/String;Ljj$/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v1
    :try_end_67
    .catch Ljava/nio/file/InvalidPathException; {:try_start_63 .. :try_end_67} :catch_86

    nop

    if-eqz p3, :cond_6f

    :try_start_6a
    invoke-static {v1, p4}, Ljj$/nio/file/Files;->createDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;

    move-result-object v2

    return-object v2

    :cond_6f
    invoke-static {v1, p4}, Ljj$/nio/file/Files;->createFile(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;

    move-result-object v2
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_6a .. :try_end_73} :catch_76
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_6a .. :try_end_73} :catch_74

    return-object v2

    :catch_74
    move-exception v2

    goto :goto_63

    :catch_76
    move-exception v2

    sget-object v3, Ljj$/nio/file/TempFileHelper;->tmpdir:Ljj$/nio/file/Path;

    if-ne p0, v3, :cond_85

    if-eqz v0, :cond_85

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Unable to create temporary file or directory"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_85
    throw v2

    :catch_86
    move-exception v1

    if-eqz v0, :cond_91

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid prefix or suffix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_91
    throw v1
.end method

.method static createTempDirectory(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljj$/nio/file/TempFileHelper;->create(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static createTempFile(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Ljj$/nio/file/TempFileHelper;->create(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method private static generatePath(Ljava/lang/String;Ljava/lang/String;Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 9

    sget-object v0, Ljj$/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/nio/file/TempFileHelper$$ExternalSyntheticBackport2;->m(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljj$/nio/file/Path;->getParent()Ljj$/nio/file/Path;

    move-result-object v4

    if-nez v4, :cond_35

    invoke-interface {p2, v3}, Ljj$/nio/file/Path;->resolve(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v4

    return-object v4

    :cond_35
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid prefix or suffix"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
