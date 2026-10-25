.class public final Ljj$/nio/file/attribute/AclEntry;
.super Ljava/lang/Object;
.source "AclEntry.java"


# instance fields
.field private final flags:Ljava/util/Set;

.field private volatile hash:I

.field private final perms:Ljava/util/Set;

.field private final type:Ljj$/nio/file/attribute/AclEntryType;

.field private final who:Ljj$/nio/file/attribute/UserPrincipal;


# direct methods
.method private constructor <init>(Ljj$/nio/file/attribute/AclEntryType;Ljj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/AclEntry;->type:Ljj$/nio/file/attribute/AclEntryType;

    iput-object p2, p0, Ljj$/nio/file/attribute/AclEntry;->who:Ljj$/nio/file/attribute/UserPrincipal;

    iput-object p3, p0, Ljj$/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iput-object p4, p0, Ljj$/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljj$/nio/file/attribute/AclEntryType;Ljj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljj$/nio/file/attribute/AclEntry-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljj$/nio/file/attribute/AclEntry;-><init>(Ljj$/nio/file/attribute/AclEntryType;Ljj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static hash(ILjava/lang/Object;)I
    .registers 4

    mul-int/lit8 v0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static newBuilder()Ljj$/nio/file/attribute/AclEntry$Builder;
    .registers 6

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    new-instance v0, Ljj$/nio/file/attribute/AclEntry$Builder;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Ljj$/nio/file/attribute/AclEntry$Builder;-><init>(Ljj$/nio/file/attribute/AclEntryType;Ljj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljj$/nio/file/attribute/AclEntry-IA;)V

    return-object v0
.end method

.method public static newBuilder(Ljj$/nio/file/attribute/AclEntry;)Ljj$/nio/file/attribute/AclEntry$Builder;
    .registers 7

    new-instance v0, Ljj$/nio/file/attribute/AclEntry$Builder;

    iget-object v1, p0, Ljj$/nio/file/attribute/AclEntry;->type:Ljj$/nio/file/attribute/AclEntryType;

    iget-object v2, p0, Ljj$/nio/file/attribute/AclEntry;->who:Ljj$/nio/file/attribute/UserPrincipal;

    iget-object v3, p0, Ljj$/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v4, p0, Ljj$/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljj$/nio/file/attribute/AclEntry$Builder;-><init>(Ljj$/nio/file/attribute/AclEntryType;Ljj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljj$/nio/file/attribute/AclEntry-IA;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    instance-of v2, p1, Ljj$/nio/file/attribute/AclEntry;

    if-nez v2, :cond_c

    goto :goto_38

    :cond_c
    move-object v2, p1

    check-cast v2, Ljj$/nio/file/attribute/AclEntry;

    iget-object v3, p0, Ljj$/nio/file/attribute/AclEntry;->type:Ljj$/nio/file/attribute/AclEntryType;

    iget-object v4, v2, Ljj$/nio/file/attribute/AclEntry;->type:Ljj$/nio/file/attribute/AclEntryType;

    if-eq v3, v4, :cond_16

    return v1

    :cond_16
    iget-object v3, p0, Ljj$/nio/file/attribute/AclEntry;->who:Ljj$/nio/file/attribute/UserPrincipal;

    iget-object v4, v2, Ljj$/nio/file/attribute/AclEntry;->who:Ljj$/nio/file/attribute/UserPrincipal;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    return v1

    :cond_21
    iget-object v3, p0, Ljj$/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v4, v2, Ljj$/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    return v1

    :cond_2c
    iget-object v3, p0, Ljj$/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    iget-object v4, v2, Ljj$/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    return v1

    :cond_37
    return v0

    :cond_38
    :goto_38
    return v1
.end method

.method public flags()Ljava/util/Set;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljj$/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Ljj$/nio/file/attribute/AclEntry;->hash:I

    if-eqz v0, :cond_7

    iget v0, p0, Ljj$/nio/file/attribute/AclEntry;->hash:I

    return v0

    :cond_7
    iget-object v0, p0, Ljj$/nio/file/attribute/AclEntry;->type:Ljj$/nio/file/attribute/AclEntryType;

    invoke-virtual {v0}, Ljj$/nio/file/attribute/AclEntryType;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/nio/file/attribute/AclEntry;->who:Ljj$/nio/file/attribute/UserPrincipal;

    invoke-static {v0, v1}, Ljj$/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljj$/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-static {v0, v1}, Ljj$/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljj$/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-static {v0, v1}, Ljj$/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljj$/nio/file/attribute/AclEntry;->hash:I

    iget v1, p0, Ljj$/nio/file/attribute/AclEntry;->hash:I

    return v1
.end method

.method public permissions()Ljava/util/Set;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljj$/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public principal()Ljj$/nio/file/attribute/UserPrincipal;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/AclEntry;->who:Ljj$/nio/file/attribute/UserPrincipal;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljj$/nio/file/attribute/AclEntry;->who:Ljj$/nio/file/attribute/UserPrincipal;

    invoke-interface {v1}, Ljj$/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljj$/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/nio/file/attribute/AclEntryPermission;

    invoke-virtual {v3}, Ljj$/nio/file/attribute/AclEntryPermission;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljj$/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    iget-object v2, p0, Ljj$/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/nio/file/attribute/AclEntryFlag;

    invoke-virtual {v3}, Ljj$/nio/file/attribute/AclEntryFlag;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6f
    iget-object v1, p0, Ljj$/nio/file/attribute/AclEntry;->type:Ljj$/nio/file/attribute/AclEntryType;

    invoke-virtual {v1}, Ljj$/nio/file/attribute/AclEntryType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Ljj$/nio/file/attribute/AclEntryType;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/AclEntry;->type:Ljj$/nio/file/attribute/AclEntryType;

    return-object v0
.end method
