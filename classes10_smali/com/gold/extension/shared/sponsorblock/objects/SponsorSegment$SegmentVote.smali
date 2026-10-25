.class public final enum Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;
.super Ljava/lang/Enum;
.source "SponsorSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SegmentVote"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

.field public static final enum CATEGORY_CHANGE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

.field public static final enum DOWNVOTE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

.field public static final enum UPVOTE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

.field public static final voteTypesWithoutCategoryChange:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;


# instance fields
.field public final apiVoteType:I

.field public final highlightIfVipAndVideoIsLocked:Z

.field public final title:Lcom/gold/extension/shared/StringRef;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;
    .registers 3

    .line 17
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->UPVOTE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->DOWNVOTE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->CATEGORY_CHANGE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 18
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    const-string v1, "youtube_sb_vote_upvote"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "UPVOTE"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;-><init>(Ljava/lang/String;ILcom/gold/extension/shared/StringRef;IZ)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->UPVOTE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    .line 19
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    const-string v2, "youtube_sb_vote_downvote"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v4

    const/4 v6, 0x1

    const-string v2, "DOWNVOTE"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;-><init>(Ljava/lang/String;ILcom/gold/extension/shared/StringRef;IZ)V

    sput-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->DOWNVOTE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    .line 20
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    const-string v3, "youtube_sb_vote_category"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    const-string v3, "CATEGORY_CHANGE"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;-><init>(Ljava/lang/String;ILcom/gold/extension/shared/StringRef;IZ)V

    sput-object v2, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->CATEGORY_CHANGE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    .line 17
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->$values()[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    move-result-object v2

    sput-object v2, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    .line 22
    filled-new-array {v0, v1}, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->voteTypesWithoutCategoryChange:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/gold/extension/shared/StringRef;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/StringRef;",
            "IZ)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->title:Lcom/gold/extension/shared/StringRef;

    .line 37
    iput p4, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->apiVoteType:I

    .line 38
    iput-boolean p5, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->highlightIfVipAndVideoIsLocked:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    const-class v0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;
    .registers 1

    .line 17
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    return-object v0
.end method
