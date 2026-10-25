.class public final synthetic Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/attribute/AclFileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/AclFileAttributeView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/AclFileAttributeView;)Ljj$/nio/file/attribute/AclFileAttributeView;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/AclFileAttributeView$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/AclFileAttributeView$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/AclFileAttributeView;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/AclFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    instance-of v1, p1, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getAcl()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/AclFileAttributeView;->getAcl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOwner()Ljj$/nio/file/attribute/UserPrincipal;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->convert(Ljava/nio/file/attribute/UserPrincipal;)Ljj$/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/AclFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setAcl(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/AclFileAttributeView;->setAcl(Ljava/util/List;)V

    return-void
.end method

.method public synthetic setOwner(Ljj$/nio/file/attribute/UserPrincipal;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-static {p1}, Ljj$/nio/file/attribute/UserPrincipal$Wrapper;->convert(Ljj$/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    return-void
.end method
