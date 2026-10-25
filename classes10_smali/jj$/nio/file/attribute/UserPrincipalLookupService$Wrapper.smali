.class public final synthetic Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;
.super Ljava/nio/file/attribute/UserPrincipalLookupService;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/attribute/UserPrincipalLookupService;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/attribute/UserPrincipalLookupService;)V
    .registers 2

    invoke-direct {p0}, Ljava/nio/file/attribute/UserPrincipalLookupService;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/UserPrincipalLookupService;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/attribute/UserPrincipalLookupService;)Ljava/nio/file/attribute/UserPrincipalLookupService;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipalLookupService;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;-><init>(Ljj$/nio/file/attribute/UserPrincipalLookupService;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/UserPrincipalLookupService;

    instance-of v1, p1, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/UserPrincipalLookupService;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0, p1}, Ljj$/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByGroupName(Ljava/lang/String;)Ljj$/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/attribute/GroupPrincipal$Wrapper;->convert(Ljj$/nio/file/attribute/GroupPrincipal;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lookupPrincipalByName(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0, p1}, Ljj$/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByName(Ljava/lang/String;)Ljj$/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/attribute/UserPrincipal$Wrapper;->convert(Ljj$/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    return-object p1
.end method
