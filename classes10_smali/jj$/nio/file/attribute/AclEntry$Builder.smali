.class public final Ljj$/nio/file/attribute/AclEntry$Builder;
.super Ljava/lang/Object;
.source "AclEntry.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private flags:Ljava/util/Set;

.field private perms:Ljava/util/Set;

.field private type:Ljj$/nio/file/attribute/AclEntryType;

.field private who:Ljj$/nio/file/attribute/UserPrincipal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/nio/file/attribute/AclEntry;

    return-void
.end method

.method private constructor <init>(Ljj$/nio/file/attribute/AclEntryType;Ljj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    iput-object p1, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->type:Ljj$/nio/file/attribute/AclEntryType;

    iput-object p2, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->who:Ljj$/nio/file/attribute/UserPrincipal;

    iput-object p3, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    iput-object p4, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljj$/nio/file/attribute/AclEntryType;Ljj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljj$/nio/file/attribute/AclEntry-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljj$/nio/file/attribute/AclEntry$Builder;-><init>(Ljj$/nio/file/attribute/AclEntryType;Ljj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static checkSet(Ljava/util/Set;Ljava/lang/Class;)V
    .registers 4

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1a
    return-void
.end method


# virtual methods
.method public build()Ljj$/nio/file/attribute/AclEntry;
    .registers 8

    iget-object v0, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->type:Ljj$/nio/file/attribute/AclEntryType;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->who:Ljj$/nio/file/attribute/UserPrincipal;

    if-eqz v0, :cond_17

    new-instance v1, Ljj$/nio/file/attribute/AclEntry;

    iget-object v2, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->type:Ljj$/nio/file/attribute/AclEntryType;

    iget-object v3, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->who:Ljj$/nio/file/attribute/UserPrincipal;

    iget-object v4, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    iget-object v5, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljj$/nio/file/attribute/AclEntry;-><init>(Ljj$/nio/file/attribute/AclEntryType;Ljj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljj$/nio/file/attribute/AclEntry-IA;)V

    return-object v1

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing who component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing type component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlags(Ljava/util/Set;)Ljj$/nio/file/attribute/AclEntry$Builder;
    .registers 3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_14

    :cond_b
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    const-class v0, Ljj$/nio/file/attribute/AclEntryFlag;

    invoke-static {p1, v0}, Ljj$/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    :goto_14
    iput-object p1, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    return-object p0
.end method

.method public varargs setFlags([Ljj$/nio/file/attribute/AclEntryFlag;)Ljj$/nio/file/attribute/AclEntry$Builder;
    .registers 6

    const-class v0, Ljj$/nio/file/attribute/AclEntryFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, p1, v2

    if-eqz v3, :cond_14

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1a
    iput-object v0, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    return-object p0
.end method

.method public setPermissions(Ljava/util/Set;)Ljj$/nio/file/attribute/AclEntry$Builder;
    .registers 3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_14

    :cond_b
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    const-class v0, Ljj$/nio/file/attribute/AclEntryPermission;

    invoke-static {p1, v0}, Ljj$/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    :goto_14
    iput-object p1, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    return-object p0
.end method

.method public varargs setPermissions([Ljj$/nio/file/attribute/AclEntryPermission;)Ljj$/nio/file/attribute/AclEntry$Builder;
    .registers 6

    const-class v0, Ljj$/nio/file/attribute/AclEntryPermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, p1, v2

    if-eqz v3, :cond_14

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1a
    iput-object v0, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    return-object p0
.end method

.method public setPrincipal(Ljj$/nio/file/attribute/UserPrincipal;)Ljj$/nio/file/attribute/AclEntry$Builder;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->who:Ljj$/nio/file/attribute/UserPrincipal;

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setType(Ljj$/nio/file/attribute/AclEntryType;)Ljj$/nio/file/attribute/AclEntry$Builder;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Ljj$/nio/file/attribute/AclEntry$Builder;->type:Ljj$/nio/file/attribute/AclEntryType;

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
