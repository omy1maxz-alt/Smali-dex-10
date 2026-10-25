.class public final synthetic Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/attribute/DosFileAttributes;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/DosFileAttributes;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/DosFileAttributes;)Ljj$/nio/file/attribute/DosFileAttributes;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/DosFileAttributes$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/DosFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/DosFileAttributes;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/DosFileAttributes;)V

    return-object v0
.end method


# virtual methods
.method public synthetic creationTime()Ljj$/nio/file/attribute/FileTime;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Ljj$/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    instance-of v1, p1, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic fileKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isArchive()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    move-result v0

    return v0
.end method

.method public synthetic isDirectory()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public synthetic isHidden()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    move-result v0

    return v0
.end method

.method public synthetic isOther()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v0

    return v0
.end method

.method public synthetic isReadOnly()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public synthetic isRegularFile()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public synthetic isSymbolicLink()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public synthetic isSystem()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    move-result v0

    return v0
.end method

.method public synthetic lastAccessTime()Ljj$/nio/file/attribute/FileTime;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Ljj$/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lastModifiedTime()Ljj$/nio/file/attribute/FileTime;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Ljj$/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic size()J
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method
