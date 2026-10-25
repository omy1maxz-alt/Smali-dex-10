.class public final enum Ljj$/nio/file/attribute/AclEntryType;
.super Ljava/lang/Enum;
.source "AclEntryType.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/nio/file/attribute/AclEntryType;

.field public static final enum ALARM:Ljj$/nio/file/attribute/AclEntryType;

.field public static final enum ALLOW:Ljj$/nio/file/attribute/AclEntryType;

.field public static final enum AUDIT:Ljj$/nio/file/attribute/AclEntryType;

.field public static final enum DENY:Ljj$/nio/file/attribute/AclEntryType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljj$/nio/file/attribute/AclEntryType;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryType;->ALLOW:Ljj$/nio/file/attribute/AclEntryType;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryType;

    const-string v1, "DENY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryType;->DENY:Ljj$/nio/file/attribute/AclEntryType;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryType;

    const-string v1, "AUDIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryType;->AUDIT:Ljj$/nio/file/attribute/AclEntryType;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryType;

    const-string v1, "ALARM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryType;->ALARM:Ljj$/nio/file/attribute/AclEntryType;

    const/4 v0, 0x4

    new-array v0, v0, [Ljj$/nio/file/attribute/AclEntryType;

    sget-object v1, Ljj$/nio/file/attribute/AclEntryType;->ALLOW:Ljj$/nio/file/attribute/AclEntryType;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/nio/file/attribute/AclEntryType;->DENY:Ljj$/nio/file/attribute/AclEntryType;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/nio/file/attribute/AclEntryType;->AUDIT:Ljj$/nio/file/attribute/AclEntryType;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/nio/file/attribute/AclEntryType;->ALARM:Ljj$/nio/file/attribute/AclEntryType;

    aput-object v1, v0, v5

    sput-object v0, Ljj$/nio/file/attribute/AclEntryType;->$VALUES:[Ljj$/nio/file/attribute/AclEntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/nio/file/attribute/AclEntryType;
    .registers 2

    const-class v0, Ljj$/nio/file/attribute/AclEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/attribute/AclEntryType;

    return-object v0
.end method

.method public static values()[Ljj$/nio/file/attribute/AclEntryType;
    .registers 1

    sget-object v0, Ljj$/nio/file/attribute/AclEntryType;->$VALUES:[Ljj$/nio/file/attribute/AclEntryType;

    invoke-virtual {v0}, [Ljj$/nio/file/attribute/AclEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/nio/file/attribute/AclEntryType;

    return-object v0
.end method
