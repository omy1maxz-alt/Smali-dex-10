.class public final enum Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;
.super Ljava/lang/Enum;
.source "SegmentPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SponsorBlockDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum EIGHT_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum FIVE_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum FOUR_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum NINE_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum ONE_SECOND:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum SEVEN_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum SIX_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum TEN_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum THREE_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

.field public static final enum TWO_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;


# instance fields
.field public final adjustedDuration:J


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;
    .registers 10

    .line 70
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->ONE_SECOND:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->TWO_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->THREE_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    sget-object v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->FOUR_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    sget-object v4, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->FIVE_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    sget-object v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->SIX_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    sget-object v6, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->SEVEN_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    sget-object v7, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->EIGHT_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    sget-object v8, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->NINE_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    sget-object v9, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->TEN_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    filled-new-array/range {v0 .. v9}, [Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 71
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "ONE_SECOND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->ONE_SECOND:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 72
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "TWO_SECONDS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->TWO_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 73
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "THREE_SECONDS"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->THREE_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 74
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "FOUR_SECONDS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->FOUR_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 75
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "FIVE_SECONDS"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->FIVE_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 76
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "SIX_SECONDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->SIX_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 77
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "SEVEN_SECONDS"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->SEVEN_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 78
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "EIGHT_SECONDS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->EIGHT_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 79
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "NINE_SECONDS"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->NINE_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 80
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    const-string v1, "TEN_SECONDS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->TEN_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    .line 70
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->$values()[Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 6
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

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-long p1, p3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    sub-long/2addr p1, v0

    .line 88
    iput-wide p1, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->adjustedDuration:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 70
    const-class v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;
    .registers 1

    .line 70
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    return-object v0
.end method
