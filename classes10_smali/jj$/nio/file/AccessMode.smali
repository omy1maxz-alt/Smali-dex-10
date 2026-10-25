.class public final enum Ljj$/nio/file/AccessMode;
.super Ljava/lang/Enum;
.source "AccessMode.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/nio/file/AccessMode;

.field public static final enum EXECUTE:Ljj$/nio/file/AccessMode;

.field public static final enum READ:Ljj$/nio/file/AccessMode;

.field public static final enum WRITE:Ljj$/nio/file/AccessMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljj$/nio/file/AccessMode;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/AccessMode;->READ:Ljj$/nio/file/AccessMode;

    new-instance v0, Ljj$/nio/file/AccessMode;

    const-string v1, "WRITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/AccessMode;->WRITE:Ljj$/nio/file/AccessMode;

    new-instance v0, Ljj$/nio/file/AccessMode;

    const-string v1, "EXECUTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/AccessMode;->EXECUTE:Ljj$/nio/file/AccessMode;

    const/4 v0, 0x3

    new-array v0, v0, [Ljj$/nio/file/AccessMode;

    sget-object v1, Ljj$/nio/file/AccessMode;->READ:Ljj$/nio/file/AccessMode;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/nio/file/AccessMode;->WRITE:Ljj$/nio/file/AccessMode;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/nio/file/AccessMode;->EXECUTE:Ljj$/nio/file/AccessMode;

    aput-object v1, v0, v4

    sput-object v0, Ljj$/nio/file/AccessMode;->$VALUES:[Ljj$/nio/file/AccessMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/nio/file/AccessMode;
    .registers 2

    const-class v0, Ljj$/nio/file/AccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/AccessMode;

    return-object v0
.end method

.method public static values()[Ljj$/nio/file/AccessMode;
    .registers 1

    sget-object v0, Ljj$/nio/file/AccessMode;->$VALUES:[Ljj$/nio/file/AccessMode;

    invoke-virtual {v0}, [Ljj$/nio/file/AccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/nio/file/AccessMode;

    return-object v0
.end method
