.class public final enum Ljj$/libcore/api/CorePlatformApi$Status;
.super Ljava/lang/Enum;
.source "CorePlatformApi.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/libcore/api/CorePlatformApi$Status;

.field public static final enum LEGACY_ONLY:Ljj$/libcore/api/CorePlatformApi$Status;

.field public static final enum STABLE:Ljj$/libcore/api/CorePlatformApi$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljj$/libcore/api/CorePlatformApi$Status;

    const-string v1, "STABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/libcore/api/CorePlatformApi$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/libcore/api/CorePlatformApi$Status;->STABLE:Ljj$/libcore/api/CorePlatformApi$Status;

    new-instance v0, Ljj$/libcore/api/CorePlatformApi$Status;

    const-string v1, "LEGACY_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/libcore/api/CorePlatformApi$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/libcore/api/CorePlatformApi$Status;->LEGACY_ONLY:Ljj$/libcore/api/CorePlatformApi$Status;

    const/4 v0, 0x2

    new-array v0, v0, [Ljj$/libcore/api/CorePlatformApi$Status;

    sget-object v1, Ljj$/libcore/api/CorePlatformApi$Status;->STABLE:Ljj$/libcore/api/CorePlatformApi$Status;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/libcore/api/CorePlatformApi$Status;->LEGACY_ONLY:Ljj$/libcore/api/CorePlatformApi$Status;

    aput-object v1, v0, v3

    sput-object v0, Ljj$/libcore/api/CorePlatformApi$Status;->$VALUES:[Ljj$/libcore/api/CorePlatformApi$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/libcore/api/CorePlatformApi$Status;
    .registers 2

    const-class v0, Ljj$/libcore/api/CorePlatformApi$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/libcore/api/CorePlatformApi$Status;

    return-object v0
.end method

.method public static values()[Ljj$/libcore/api/CorePlatformApi$Status;
    .registers 1

    sget-object v0, Ljj$/libcore/api/CorePlatformApi$Status;->$VALUES:[Ljj$/libcore/api/CorePlatformApi$Status;

    invoke-virtual {v0}, [Ljj$/libcore/api/CorePlatformApi$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/libcore/api/CorePlatformApi$Status;

    return-object v0
.end method
