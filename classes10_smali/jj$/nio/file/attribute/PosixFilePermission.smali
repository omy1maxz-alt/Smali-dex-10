.class public final enum Ljj$/nio/file/attribute/PosixFilePermission;
.super Ljava/lang/Enum;
.source "PosixFilePermission.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/nio/file/attribute/PosixFilePermission;

.field public static final enum GROUP_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

.field public static final enum GROUP_READ:Ljj$/nio/file/attribute/PosixFilePermission;

.field public static final enum GROUP_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OTHERS_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OTHERS_READ:Ljj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OTHERS_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OWNER_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OWNER_READ:Ljj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OWNER_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Ljj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OWNER_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    new-instance v0, Ljj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OWNER_WRITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    new-instance v0, Ljj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OWNER_EXECUTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    new-instance v0, Ljj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "GROUP_READ"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    new-instance v0, Ljj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "GROUP_WRITE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    new-instance v0, Ljj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "GROUP_EXECUTE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    new-instance v0, Ljj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OTHERS_READ"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    new-instance v0, Ljj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OTHERS_WRITE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    new-instance v0, Ljj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OTHERS_EXECUTE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ljj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    const/16 v0, 0x9

    new-array v0, v0, [Ljj$/nio/file/attribute/PosixFilePermission;

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v6

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v7

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v8

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v9

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    aput-object v1, v0, v10

    sput-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->$VALUES:[Ljj$/nio/file/attribute/PosixFilePermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/nio/file/attribute/PosixFilePermission;
    .registers 2

    const-class v0, Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static values()[Ljj$/nio/file/attribute/PosixFilePermission;
    .registers 1

    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->$VALUES:[Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0}, [Ljj$/nio/file/attribute/PosixFilePermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method
