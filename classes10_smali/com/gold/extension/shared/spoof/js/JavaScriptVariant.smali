.class public final enum Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;
.super Ljava/lang/Enum;
.source "JavaScriptVariant.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

.field public static final enum HOUSE_BRAND:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

.field public static final enum PHONE:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

.field public static final enum TV_ES6:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

.field public static final enum WEB:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

.field public static final enum WEB_EMBED:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

.field public static final enum WEB_ES6:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;


# instance fields
.field public final format:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;
    .registers 6

    .line 10
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->HOUSE_BRAND:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    sget-object v1, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->PHONE:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    sget-object v2, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->TV_ES6:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    sget-object v3, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->WEB:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    sget-object v4, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->WEB_ES6:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    sget-object v5, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->WEB_EMBED:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    filled-new-array/range {v0 .. v5}, [Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 13
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    const/4 v1, 0x0

    const-string v2, "https://youtube.googleapis.com/s/player/%s/house_brand_player.vflset/en_US/base.js"

    const-string v3, "HOUSE_BRAND"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->HOUSE_BRAND:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    .line 14
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    const/4 v1, 0x1

    const-string v2, "https://m.youtube.com/s/player/%s/player-plasma-ias-phone-en_US.vflset/base.js"

    const-string v3, "PHONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->PHONE:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    .line 15
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    const/4 v1, 0x2

    const-string v2, "https://www.youtube.com/s/player/%s/tv-player-es6.vflset/tv-player-es6.js"

    const-string v3, "TV_ES6"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->TV_ES6:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    .line 16
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    const/4 v1, 0x3

    const-string v2, "https://www.youtube.com/s/player/%s/player_ias.vflset/en_US/base.js"

    const-string v3, "WEB"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->WEB:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    .line 17
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    const/4 v1, 0x4

    const-string v2, "https://www.youtube.com/s/player/%s/player_es6.vflset/en_US/base.js"

    const-string v3, "WEB_ES6"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->WEB_ES6:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    .line 18
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    const/4 v1, 0x5

    const-string v2, "https://www.youtube.com/s/player/%s/player_embed.vflset/en_US/base.js"

    const-string v3, "WEB_EMBED"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->WEB_EMBED:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    .line 10
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->$values()[Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->$VALUES:[Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->format:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    const-class v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;
    .registers 1

    .line 10
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->$VALUES:[Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    return-object v0
.end method
