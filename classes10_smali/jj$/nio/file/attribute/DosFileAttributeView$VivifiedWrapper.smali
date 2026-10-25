.class public final synthetic Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/attribute/DosFileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/DosFileAttributeView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/DosFileAttributeView;)Ljj$/nio/file/attribute/DosFileAttributeView;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/DosFileAttributeView$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/DosFileAttributeView;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/DosFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    instance-of v1, p1, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readAttributes()Ljj$/nio/file/attribute/BasicFileAttributes;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;->convert(Ljava/nio/file/attribute/BasicFileAttributes;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readAttributes()Ljj$/nio/file/attribute/DosFileAttributes;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->convert(Ljava/nio/file/attribute/DosFileAttributes;)Ljj$/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setArchive(Z)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setArchive(Z)V

    return-void
.end method

.method public synthetic setHidden(Z)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setHidden(Z)V

    return-void
.end method

.method public synthetic setReadOnly(Z)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    return-void
.end method

.method public synthetic setSystem(Z)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setSystem(Z)V

    return-void
.end method

.method public synthetic setTimes(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;)V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-static {p1}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method
