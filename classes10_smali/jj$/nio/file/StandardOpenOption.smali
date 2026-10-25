.class public final enum Ljj$/nio/file/StandardOpenOption;
.super Ljava/lang/Enum;
.source "StandardOpenOption.java"

# interfaces
.implements Ljj$/nio/file/OpenOption;


# static fields
.field private static final synthetic $VALUES:[Ljj$/nio/file/StandardOpenOption;

.field public static final enum APPEND:Ljj$/nio/file/StandardOpenOption;

.field public static final enum CREATE:Ljj$/nio/file/StandardOpenOption;

.field public static final enum CREATE_NEW:Ljj$/nio/file/StandardOpenOption;

.field public static final enum DELETE_ON_CLOSE:Ljj$/nio/file/StandardOpenOption;

.field public static final enum DSYNC:Ljj$/nio/file/StandardOpenOption;

.field public static final enum READ:Ljj$/nio/file/StandardOpenOption;

.field public static final enum SPARSE:Ljj$/nio/file/StandardOpenOption;

.field public static final enum SYNC:Ljj$/nio/file/StandardOpenOption;

.field public static final enum TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

.field public static final enum WRITE:Ljj$/nio/file/StandardOpenOption;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->READ:Ljj$/nio/file/StandardOpenOption;

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "WRITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "APPEND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "TRUNCATE_EXISTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "CREATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->CREATE:Ljj$/nio/file/StandardOpenOption;

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "CREATE_NEW"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->CREATE_NEW:Ljj$/nio/file/StandardOpenOption;

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "DELETE_ON_CLOSE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljj$/nio/file/StandardOpenOption;

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "SPARSE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->SPARSE:Ljj$/nio/file/StandardOpenOption;

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "SYNC"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->SYNC:Ljj$/nio/file/StandardOpenOption;

    new-instance v0, Ljj$/nio/file/StandardOpenOption;

    const-string v1, "DSYNC"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Ljj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->DSYNC:Ljj$/nio/file/StandardOpenOption;

    const/16 v0, 0xa

    new-array v0, v0, [Ljj$/nio/file/StandardOpenOption;

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->READ:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->CREATE:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v6

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->CREATE_NEW:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v7

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v8

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->SPARSE:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v9

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->SYNC:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v10

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->DSYNC:Ljj$/nio/file/StandardOpenOption;

    aput-object v1, v0, v11

    sput-object v0, Ljj$/nio/file/StandardOpenOption;->$VALUES:[Ljj$/nio/file/StandardOpenOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/nio/file/StandardOpenOption;
    .registers 2

    const-class v0, Ljj$/nio/file/StandardOpenOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static values()[Ljj$/nio/file/StandardOpenOption;
    .registers 1

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->$VALUES:[Ljj$/nio/file/StandardOpenOption;

    invoke-virtual {v0}, [Ljj$/nio/file/StandardOpenOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/nio/file/StandardOpenOption;

    return-object v0
.end method
