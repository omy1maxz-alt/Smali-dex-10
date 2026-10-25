.class public final synthetic Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/attribute/UserPrincipal;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/UserPrincipal;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/UserPrincipal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipal;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/UserPrincipal;)Ljj$/nio/file/attribute/UserPrincipal;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/UserPrincipal$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/UserPrincipal$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/UserPrincipal$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/UserPrincipal;

    return-object p0

    :cond_d
    instance-of v0, p0, Ljava/nio/file/attribute/GroupPrincipal;

    if-eqz v0, :cond_18

    check-cast p0, Ljava/nio/file/attribute/GroupPrincipal;

    invoke-static {p0}, Ljj$/nio/file/attribute/GroupPrincipal$VivifiedWrapper;->convert(Ljava/nio/file/attribute/GroupPrincipal;)Ljj$/nio/file/attribute/GroupPrincipal;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance v0, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/UserPrincipal;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipal;

    instance-of v1, p1, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipal;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipal;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic implies(Ljavax/security/auth/Subject;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v0, p1}, Ljava/security/Principal;->implies(Ljavax/security/auth/Subject;)Z

    move-result p1

    return p1
.end method

.method public synthetic toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
