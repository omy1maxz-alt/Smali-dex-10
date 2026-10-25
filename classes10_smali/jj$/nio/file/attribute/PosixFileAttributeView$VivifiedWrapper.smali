.class public final synthetic Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/attribute/PosixFileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/PosixFileAttributeView;)Ljj$/nio/file/attribute/PosixFileAttributeView;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/PosixFileAttributeView$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/PosixFileAttributeView;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    instance-of v1, p1, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getOwner()Ljj$/nio/file/attribute/UserPrincipal;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->convert(Ljava/nio/file/attribute/UserPrincipal;)Ljj$/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readAttributes()Ljj$/nio/file/attribute/BasicFileAttributes;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;->convert(Ljava/nio/file/attribute/BasicFileAttributes;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readAttributes()Ljj$/nio/file/attribute/PosixFileAttributes;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/PosixFileAttributes$VivifiedWrapper;->convert(Ljava/nio/file/attribute/PosixFileAttributes;)Ljj$/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setGroup(Ljj$/nio/file/attribute/GroupPrincipal;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;->convert(Ljj$/nio/file/attribute/GroupPrincipal;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V

    return-void
.end method

.method public synthetic setOwner(Ljj$/nio/file/attribute/UserPrincipal;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Ljj$/nio/file/attribute/UserPrincipal$Wrapper;->convert(Ljj$/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    return-void
.end method

.method public synthetic setPermissions(Ljava/util/Set;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Ljj$/nio/file/FileApiFlips;->flipPosixPermissionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    return-void
.end method

.method public synthetic setTimes(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;)V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method
