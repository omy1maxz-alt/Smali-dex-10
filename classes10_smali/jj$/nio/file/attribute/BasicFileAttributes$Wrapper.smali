.class public final synthetic Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributes;


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/attribute/BasicFileAttributes;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/BasicFileAttributes;

    return-object p0

    :cond_d
    instance-of v0, p0, Ljj$/nio/file/attribute/DosFileAttributes;

    if-eqz v0, :cond_18

    check-cast p0, Ljj$/nio/file/attribute/DosFileAttributes;

    invoke-static {p0}, Ljj$/nio/file/attribute/DosFileAttributes$Wrapper;->convert(Ljj$/nio/file/attribute/DosFileAttributes;)Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object p0

    return-object p0

    :cond_18
    instance-of v0, p0, Ljj$/nio/file/attribute/PosixFileAttributes;

    if-eqz v0, :cond_23

    check-cast p0, Ljj$/nio/file/attribute/PosixFileAttributes;

    invoke-static {p0}, Ljj$/nio/file/attribute/PosixFileAttributes$Wrapper;->convert(Ljj$/nio/file/attribute/PosixFileAttributes;)Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object p0

    return-object p0

    :cond_23
    new-instance v0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;-><init>(Ljj$/nio/file/attribute/BasicFileAttributes;)V

    return-object v0
.end method


# virtual methods
.method public synthetic creationTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->creationTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    instance-of v1, p1, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic fileKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isDirectory()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public synthetic isOther()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v0

    return v0
.end method

.method public synthetic isRegularFile()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public synthetic isSymbolicLink()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public synthetic lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic size()J
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method
