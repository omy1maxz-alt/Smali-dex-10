.class final enum Lcom/gold/extension/shared/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/Logger$LogLevel;

.field public static final enum DEBUG:Lcom/gold/extension/shared/Logger$LogLevel;

.field public static final enum ERROR:Lcom/gold/extension/shared/Logger$LogLevel;

.field public static final enum INFO:Lcom/gold/extension/shared/Logger$LogLevel;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/Logger$LogLevel;
    .registers 3

    .line 99
    sget-object v0, Lcom/gold/extension/shared/Logger$LogLevel;->DEBUG:Lcom/gold/extension/shared/Logger$LogLevel;

    sget-object v1, Lcom/gold/extension/shared/Logger$LogLevel;->INFO:Lcom/gold/extension/shared/Logger$LogLevel;

    sget-object v2, Lcom/gold/extension/shared/Logger$LogLevel;->ERROR:Lcom/gold/extension/shared/Logger$LogLevel;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/shared/Logger$LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 100
    new-instance v0, Lcom/gold/extension/shared/Logger$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/Logger$LogLevel;->DEBUG:Lcom/gold/extension/shared/Logger$LogLevel;

    .line 101
    new-instance v0, Lcom/gold/extension/shared/Logger$LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/Logger$LogLevel;->INFO:Lcom/gold/extension/shared/Logger$LogLevel;

    .line 102
    new-instance v0, Lcom/gold/extension/shared/Logger$LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/Logger$LogLevel;->ERROR:Lcom/gold/extension/shared/Logger$LogLevel;

    .line 99
    invoke-static {}, Lcom/gold/extension/shared/Logger$LogLevel;->$values()[Lcom/gold/extension/shared/Logger$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/Logger$LogLevel;->$VALUES:[Lcom/gold/extension/shared/Logger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/Logger$LogLevel;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 99
    const-class v0, Lcom/gold/extension/shared/Logger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/Logger$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/Logger$LogLevel;
    .registers 1

    .line 99
    sget-object v0, Lcom/gold/extension/shared/Logger$LogLevel;->$VALUES:[Lcom/gold/extension/shared/Logger$LogLevel;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/Logger$LogLevel;

    return-object v0
.end method
