.class final enum Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;
.super Ljava/lang/Enum;
.source "ShortsAutoplayPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShortsLoopBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

.field public static final enum AUTO_ADVANCE:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

.field public static final enum AUTO_ADVANCE_POST_FIVE_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

.field public static final enum AUTO_ADVANCE_POST_FOUR_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

.field public static final enum AUTO_ADVANCE_POST_THREE_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

.field public static final enum AUTO_ADVANCE_POST_TWO_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

.field public static final enum END_SCREEN:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

.field public static final enum REPEAT:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

.field public static final enum SINGLE_PLAY:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

.field public static final enum UNKNOWN:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;


# instance fields
.field private ytEnumValue:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$h53ZynVaBftv_qlXD-mkYIWBSME(Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;Ljava/lang/Enum;)Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " set to YT enum: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nHrsDGSR2_50UE1A2eqUrSaRioc(Ljava/lang/Enum;)Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Shorts loop behavior: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;
    .registers 9

    .line 26
    sget-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->UNKNOWN:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    sget-object v1, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->REPEAT:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    sget-object v2, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->SINGLE_PLAY:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    sget-object v3, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->END_SCREEN:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    sget-object v4, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    sget-object v5, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE_POST_TWO_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    sget-object v6, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE_POST_THREE_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    sget-object v7, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE_POST_FOUR_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    sget-object v8, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE_POST_FIVE_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    filled-new-array/range {v0 .. v8}, [Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetytEnumValue(Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;)Ljava/lang/Enum;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->ytEnumValue:Ljava/lang/Enum;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->UNKNOWN:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    .line 31
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    const-string v1, "REPEAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->REPEAT:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    .line 35
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    const-string v1, "SINGLE_PLAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->SINGLE_PLAY:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    .line 39
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    const-string v1, "END_SCREEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->END_SCREEN:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    .line 44
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    const-string v1, "AUTO_ADVANCE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    .line 50
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    const-string v1, "AUTO_ADVANCE_POST_TWO_LOOPS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE_POST_TWO_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    .line 51
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    const-string v1, "AUTO_ADVANCE_POST_THREE_LOOPS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE_POST_THREE_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    .line 52
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    const-string v1, "AUTO_ADVANCE_POST_FOUR_LOOPS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE_POST_FOUR_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    .line 53
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    const-string v1, "AUTO_ADVANCE_POST_FIVE_LOOPS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE_POST_FIVE_LOOPS:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    .line 26
    invoke-static {}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->$values()[Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->$VALUES:[Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static setYTEnumValue(Ljava/lang/Enum;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->values()[Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 57
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 58
    iput-object p0, v3, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->ytEnumValue:Ljava/lang/Enum;

    .line 60
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, p0}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;Ljava/lang/Enum;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 65
    :cond_26
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Enum;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    const-class v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;
    .registers 1

    .line 26
    sget-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->$VALUES:[Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    return-object v0
.end method
