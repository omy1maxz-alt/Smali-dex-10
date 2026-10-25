.class public final enum Ljj$/nio/file/attribute/AclEntryPermission;
.super Ljava/lang/Enum;
.source "AclEntryPermission.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final ADD_FILE:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final ADD_SUBDIRECTORY:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum APPEND_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum DELETE:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum DELETE_CHILD:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum EXECUTE:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final LIST_DIRECTORY:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_ACL:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_ATTRIBUTES:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_NAMED_ATTRS:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum SYNCHRONIZE:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_ACL:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_ATTRIBUTES:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_NAMED_ATTRS:Ljj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_OWNER:Ljj$/nio/file/attribute/AclEntryPermission;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_DATA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "APPEND_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_NAMED_ATTRS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_NAMED_ATTRS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "EXECUTE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->EXECUTE:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "DELETE_CHILD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_ATTRIBUTES"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_ATTRIBUTES"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "DELETE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->DELETE:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_ACL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->READ_ACL:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_ACL"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_OWNER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Ljj$/nio/file/attribute/AclEntryPermission;

    new-instance v0, Ljj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "SYNCHRONIZE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Ljj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->SYNCHRONIZE:Ljj$/nio/file/attribute/AclEntryPermission;

    const/16 v0, 0xe

    new-array v0, v0, [Ljj$/nio/file/attribute/AclEntryPermission;

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v6

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->EXECUTE:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v7

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v8

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v9

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v10

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->DELETE:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v11

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->READ_ACL:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v12

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v13

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v14

    sget-object v1, Ljj$/nio/file/attribute/AclEntryPermission;->SYNCHRONIZE:Ljj$/nio/file/attribute/AclEntryPermission;

    aput-object v1, v0, v15

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->$VALUES:[Ljj$/nio/file/attribute/AclEntryPermission;

    sget-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->LIST_DIRECTORY:Ljj$/nio/file/attribute/AclEntryPermission;

    sget-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->ADD_FILE:Ljj$/nio/file/attribute/AclEntryPermission;

    sget-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljj$/nio/file/attribute/AclEntryPermission;

    sput-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->ADD_SUBDIRECTORY:Ljj$/nio/file/attribute/AclEntryPermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/nio/file/attribute/AclEntryPermission;
    .registers 2

    const-class v0, Ljj$/nio/file/attribute/AclEntryPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method

.method public static values()[Ljj$/nio/file/attribute/AclEntryPermission;
    .registers 1

    sget-object v0, Ljj$/nio/file/attribute/AclEntryPermission;->$VALUES:[Ljj$/nio/file/attribute/AclEntryPermission;

    invoke-virtual {v0}, [Ljj$/nio/file/attribute/AclEntryPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method
