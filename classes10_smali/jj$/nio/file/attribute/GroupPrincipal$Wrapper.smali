.class public final synthetic Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/GroupPrincipal;


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/attribute/GroupPrincipal;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/attribute/GroupPrincipal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/GroupPrincipal;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/attribute/GroupPrincipal;)Ljava/nio/file/attribute/GroupPrincipal;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/GroupPrincipal$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/GroupPrincipal$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/GroupPrincipal$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/GroupPrincipal;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;-><init>(Ljj$/nio/file/attribute/GroupPrincipal;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/GroupPrincipal;

    instance-of v1, p1, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/GroupPrincipal;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/GroupPrincipal;

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/GroupPrincipal;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic implies(Ljavax/security/auth/Subject;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/GroupPrincipal;

    invoke-interface {v0, p1}, Ljava/security/Principal;->implies(Ljavax/security/auth/Subject;)Z

    move-result p1

    return p1
.end method

.method public synthetic toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/GroupPrincipal;

    invoke-interface {v0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
