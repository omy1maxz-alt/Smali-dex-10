.class abstract Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;
.super Ljava/lang/Object;
.source "DesugarAbstractBasicFileAttributeView.java"

# interfaces
.implements Ljj$/nio/file/attribute/BasicFileAttributeView;
.implements Ljj$/desugar/sun/nio/fs/DesugarDynamicFileAttributeView;


# static fields
.field private static final CREATION_TIME_NAME:Ljava/lang/String; = "creationTime"

.field private static final FILE_KEY_NAME:Ljava/lang/String; = "fileKey"

.field private static final IS_DIRECTORY_NAME:Ljava/lang/String; = "isDirectory"

.field private static final IS_OTHER_NAME:Ljava/lang/String; = "isOther"

.field private static final IS_REGULAR_FILE_NAME:Ljava/lang/String; = "isRegularFile"

.field private static final IS_SYMBOLIC_LINK_NAME:Ljava/lang/String; = "isSymbolicLink"

.field private static final LAST_ACCESS_TIME_NAME:Ljava/lang/String; = "lastAccessTime"

.field private static final LAST_MODIFIED_TIME_NAME:Ljava/lang/String; = "lastModifiedTime"

.field private static final SIZE_NAME:Ljava/lang/String; = "size"

.field static final basicAttributeNames:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string v7, "isSymbolicLink"

    const-string v8, "isOther"

    const-string v0, "size"

    const-string v1, "creationTime"

    const-string v2, "lastAccessTime"

    const-string v3, "lastModifiedTime"

    const-string v4, "fileKey"

    const-string v5, "isDirectory"

    const-string v6, "isRegularFile"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarUtil;->newSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addRequestedBasicAttributes(Ljj$/nio/file/attribute/BasicFileAttributes;Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;)V
    .registers 6

    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    const-string v0, "creationTime"

    invoke-virtual {p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljj$/nio/file/attribute/BasicFileAttributes;->creationTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    const-string v0, "lastAccessTime"

    invoke-virtual {p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljj$/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_31
    const-string v0, "lastModifiedTime"

    invoke-virtual {p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_40
    const-string v0, "fileKey"

    invoke-virtual {p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p1}, Ljj$/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4f
    const-string v0, "isDirectory"

    invoke-virtual {p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {p1}, Ljj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_62
    const-string v0, "isRegularFile"

    invoke-virtual {p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p1}, Ljj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_75
    const-string v0, "isSymbolicLink"

    invoke-virtual {p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {p1}, Ljj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_88
    const-string v0, "isOther"

    invoke-virtual {p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {p1}, Ljj$/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9b
    return-void
.end method

.method public name()Ljava/lang/String;
    .registers 2

    const-string v0, "basic"

    return-object v0
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 4

    sget-object v0, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    invoke-static {v0, p1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->readAttributes()Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->addRequestedBasicAttributes(Ljj$/nio/file/attribute/BasicFileAttributes;Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;)V

    invoke-virtual {v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "lastModifiedTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Ljj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, v0, v1, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->setTimes(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;)V

    return-void

    :cond_10
    const-string v0, "lastAccessTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, p2

    check-cast v0, Ljj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, v1, v0, v1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->setTimes(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;)V

    return-void

    :cond_1f
    const-string v0, "creationTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object v0, p2

    check-cast v0, Ljj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, v1, v1, v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->setTimes(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;)V

    return-void

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
