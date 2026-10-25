.class public final enum Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;
.super Ljava/lang/Enum;
.source "ThemePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/theme/ThemePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SplashScreenAnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

.field public static final enum DISABLED:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

.field public static final enum FPS_30_BLACK_AND_WHITE:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

.field public static final enum FPS_30_FIVE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

.field public static final enum FPS_30_ONE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

.field public static final enum FPS_30_TWO_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

.field public static final enum FPS_60_BLACK_AND_WHITE:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

.field public static final enum FPS_60_FIVE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

.field public static final enum FPS_60_ONE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

.field public static final enum FPS_60_TWO_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;


# instance fields
.field final style:I


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;
    .registers 9

    .line 11
    sget-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->DISABLED:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    sget-object v1, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_60_ONE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    sget-object v2, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_60_TWO_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    sget-object v3, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_60_FIVE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    sget-object v4, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_60_BLACK_AND_WHITE:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    sget-object v5, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_30_ONE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    sget-object v6, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_30_TWO_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    sget-object v7, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_30_FIVE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    sget-object v8, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_30_BLACK_AND_WHITE:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    filled-new-array/range {v0 .. v8}, [Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 13
    new-instance v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->DISABLED:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 14
    new-instance v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    const-string v1, "FPS_60_ONE_SECOND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_60_ONE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 15
    new-instance v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    const-string v1, "FPS_60_TWO_SECOND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_60_TWO_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 16
    new-instance v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    const-string v1, "FPS_60_FIVE_SECOND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_60_FIVE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 17
    new-instance v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    const-string v1, "FPS_60_BLACK_AND_WHITE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_60_BLACK_AND_WHITE:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 18
    new-instance v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    const-string v1, "FPS_30_ONE_SECOND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_30_ONE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 19
    new-instance v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    const-string v1, "FPS_30_TWO_SECOND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_30_TWO_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 20
    new-instance v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    const-string v1, "FPS_30_FIVE_SECOND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_30_FIVE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 21
    new-instance v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    const-string v1, "FPS_30_BLACK_AND_WHITE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_30_BLACK_AND_WHITE:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 11
    invoke-static {}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->$values()[Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->$VALUES:[Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
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
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->style:I

    return-void
.end method

.method public static styleFromOrdinal(I)Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 28
    invoke-static {}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->values()[Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 29
    iget v4, v3, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->style:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;
    .registers 1

    .line 11
    sget-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->$VALUES:[Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    return-object v0
.end method
