.class public final synthetic Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/FileOwnerAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/attribute/FileOwnerAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/attribute/FileOwnerAttributeView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileOwnerAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/attribute/FileOwnerAttributeView;)Ljava/nio/file/attribute/FileOwnerAttributeView;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileOwnerAttributeView;

    return-object p0

    :cond_d
    instance-of v0, p0, Ljj$/nio/file/attribute/AclFileAttributeView;

    if-eqz v0, :cond_18

    check-cast p0, Ljj$/nio/file/attribute/AclFileAttributeView;

    invoke-static {p0}, Ljj$/nio/file/attribute/AclFileAttributeView$Wrapper;->convert(Ljj$/nio/file/attribute/AclFileAttributeView;)Ljava/nio/file/attribute/AclFileAttributeView;

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
    new-instance v0, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;-><init>(Ljj$/nio/file/attribute/FileOwnerAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileOwnerAttributeView;

    instance-of v1, p1, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileOwnerAttributeView;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileOwnerAttributeView;

    invoke-interface {v0}, Ljj$/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljj$/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/UserPrincipal$Wrapper;->convert(Ljj$/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileOwnerAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileOwnerAttributeView;

    invoke-interface {v0}, Ljj$/nio/file/attribute/FileOwnerAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileOwnerAttributeView;

    invoke-static {p1}, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->convert(Ljava/nio/file/attribute/UserPrincipal;)Ljj$/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljj$/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljj$/nio/file/attribute/UserPrincipal;)V

    return-void
.end method
