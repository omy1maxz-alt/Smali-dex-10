.class public final synthetic Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/attribute/BasicFileAttributeView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/attribute/BasicFileAttributeView;)Ljava/nio/file/attribute/BasicFileAttributeView;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/BasicFileAttributeView$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/BasicFileAttributeView$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/BasicFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/BasicFileAttributeView;

    return-object p0

    :cond_d
    instance-of v0, p0, Ljj$/nio/file/attribute/DosFileAttributeView;

    if-eqz v0, :cond_18

    check-cast p0, Ljj$/nio/file/attribute/DosFileAttributeView;

    invoke-static {p0}, Ljj$/nio/file/attribute/DosFileAttributeView$Wrapper;->convert(Ljj$/nio/file/attribute/DosFileAttributeView;)Ljava/nio/file/attribute/DosFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_18
    instance-of v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView;

    if-eqz v0, :cond_23

    check-cast p0, Ljj$/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p0}, Ljj$/nio/file/attribute/PosixFileAttributeView$Wrapper;->convert(Ljj$/nio/file/attribute/PosixFileAttributeView;)Ljava/nio/file/attribute/PosixFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_23
    new-instance v0, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;-><init>(Ljj$/nio/file/attribute/BasicFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributeView;

    instance-of v1, p1, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributeView;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->convert(Ljj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/BasicFileAttributeView;

    invoke-static {p1}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Ljj$/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Ljj$/nio/file/attribute/FileTime;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Ljj$/nio/file/attribute/FileTime;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Ljj$/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;)V

    return-void
.end method
