.class public final enum Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;
.super Ljava/lang/Enum;
.source "OpenShortsInRegularPlayerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShortsPlayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

.field public static final enum REGULAR_PLAYER:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

.field public static final enum REGULAR_PLAYER_FULLSCREEN:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

.field public static final enum SHORTS_PLAYER:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;
    .registers 3

    .line 15
    sget-object v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->SHORTS_PLAYER:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    sget-object v1, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->REGULAR_PLAYER:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    sget-object v2, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->REGULAR_PLAYER_FULLSCREEN:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    const-string v1, "SHORTS_PLAYER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->SHORTS_PLAYER:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    .line 17
    new-instance v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    const-string v1, "REGULAR_PLAYER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->REGULAR_PLAYER:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    .line 18
    new-instance v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    const-string v1, "REGULAR_PLAYER_FULLSCREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->REGULAR_PLAYER_FULLSCREEN:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    .line 15
    invoke-static {}, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->$values()[Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->$VALUES:[Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    const-class v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;
    .registers 1

    .line 15
    sget-object v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->$VALUES:[Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    return-object v0
.end method
