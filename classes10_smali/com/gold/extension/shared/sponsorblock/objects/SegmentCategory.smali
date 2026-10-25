.class public final enum Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
.super Ljava/lang/Enum;
.source "SegmentCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final CATEGORY_DEFAULT_OPACITY:F = 0.7f

.field public static final COLOR_DOT_STRING:Ljava/lang/String; = "⬤"

.field public static final enum FILLER:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum HOOK:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum INTERACTION:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum INTRO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum MUSIC_OFFTOPIC:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum OUTRO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum PREVIEW:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum SELF_PROMO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum SPONSOR:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public static final enum UNSUBMITTED:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field private static final categoriesWithoutHighlights:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field private static final categoriesWithoutUnsubmitted:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field private static final mValuesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final skipSponsorTextCompact:Lcom/gold/extension/shared/StringRef;

.field private static final skipSponsorTextCompactHighlight:Lcom/gold/extension/shared/StringRef;

.field public static sponsorBlockAPIFetchCategories:Ljava/lang/String;


# instance fields
.field public volatile behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

.field private cachedBehaviorSetting:Lcom/gold/extension/shared/settings/StringSetting;

.field private cachedColorSetting:Lcom/gold/extension/shared/settings/StringSetting;

.field private color:I

.field public final description:Lcom/gold/extension/shared/StringRef;

.field public final keyValue:Ljava/lang/String;

.field public final paint:Landroid/graphics/Paint;

.field public final skipButtonTextBeginning:Lcom/gold/extension/shared/StringRef;

.field public final skipButtonTextEnd:Lcom/gold/extension/shared/StringRef;

.field public final skipButtonTextMiddle:Lcom/gold/extension/shared/StringRef;

.field public final skippedToastBeginning:Lcom/gold/extension/shared/StringRef;

.field public final skippedToastEnd:Lcom/gold/extension/shared/StringRef;

.field public final skippedToastMiddle:Lcom/gold/extension/shared/StringRef;

.field public final title:Lcom/gold/extension/shared/StringRef;


# direct methods
.method public static synthetic $r8$lambda$GVBAOT05hnbCshbrweSZUh5rnN8(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->lambda$setBehaviour$3(Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Sqi9eeMmpx0KVnbi71tjg5_7dto()Ljava/lang/String;
    .registers 1

    .line 141
    const-string v0, "updateEnabledCategories"

    return-object v0
.end method

.method public static synthetic $r8$lambda$_OOO7YvjSqOSF7q_zfT0KGKvZXE(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid color: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dna3ysE1puTjkLMdBJIbsPu5bRc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid behavior: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic $values()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
    .registers 11

    .line 34
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->SPONSOR:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->SELF_PROMO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->INTERACTION:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v3, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v4, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->INTRO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v5, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->OUTRO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v6, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->PREVIEW:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v7, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HOOK:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v8, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->FILLER:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v9, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->MUSIC_OFFTOPIC:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v10, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->UNSUBMITTED:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    filled-new-array/range {v0 .. v10}, [Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 23

    .line 35
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v1, "youtube_sb_segments_sponsor"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v4

    const-string v1, "youtube_sb_segments_sponsor_summary"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v5

    const-string v1, "youtube_sb_skip_button_sponsor"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v6

    const-string v1, "youtube_sb_skipped_sponsor"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v7

    const-string v1, "SPONSOR"

    const/4 v2, 0x0

    const-string v3, "sponsor"

    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->SPONSOR:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 36
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v2, "youtube_sb_segments_selfpromo"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v5

    const-string v2, "youtube_sb_segments_selfpromo_summary"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v6

    const-string v2, "youtube_sb_skip_button_selfpromo"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v7

    const-string v2, "youtube_sb_skipped_selfpromo"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v8

    const-string v2, "SELF_PROMO"

    const/4 v3, 0x1

    const-string v4, "selfpromo"

    invoke-direct/range {v1 .. v8}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->SELF_PROMO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 37
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v3, "youtube_sb_segments_interaction"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v6

    const-string v3, "youtube_sb_segments_interaction_summary"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v7

    const-string v3, "youtube_sb_skip_button_interaction"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v8

    const-string v3, "youtube_sb_skipped_interaction"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v9

    const-string v3, "INTERACTION"

    const/4 v4, 0x2

    const-string v5, "interaction"

    invoke-direct/range {v2 .. v9}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v2, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->INTERACTION:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 41
    new-instance v3, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v4, "youtube_sb_segments_highlight"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v7

    const-string v4, "youtube_sb_segments_highlight_summary"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v8

    const-string v4, "youtube_sb_skip_button_highlight"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v9

    const-string v4, "youtube_sb_skipped_highlight"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v10

    const-string v4, "HIGHLIGHT"

    const/4 v5, 0x3

    const-string v6, "poi_highlight"

    invoke-direct/range {v3 .. v10}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    move-object v9, v3

    sput-object v9, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 42
    new-instance v3, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v4, "youtube_sb_segments_intro"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v14

    const-string v4, "youtube_sb_segments_intro_summary"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v15

    const-string v4, "youtube_sb_skip_button_intro_beginning"

    .line 43
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v16

    const-string v4, "youtube_sb_skip_button_intro_middle"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v17

    const-string v4, "youtube_sb_skip_button_intro_end"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v18

    const-string v4, "youtube_sb_skipped_intro_beginning"

    .line 44
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v19

    const-string v4, "youtube_sb_skipped_intro_middle"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v20

    const-string v4, "youtube_sb_skipped_intro_end"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v21

    const-string v11, "INTRO"

    const/4 v12, 0x4

    const-string v13, "intro"

    move-object v10, v3

    invoke-direct/range {v10 .. v21}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v3, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->INTRO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 45
    new-instance v4, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v5, "youtube_sb_segments_outro"

    invoke-static {v5}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v14

    const-string v5, "youtube_sb_segments_outro_summary"

    invoke-static {v5}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v15

    const-string v5, "youtube_sb_skip_button_outro"

    invoke-static {v5}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v16

    const-string v5, "youtube_sb_skipped_outro"

    invoke-static {v5}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v17

    const-string v11, "OUTRO"

    const/4 v12, 0x5

    const-string v13, "outro"

    move-object v10, v4

    invoke-direct/range {v10 .. v17}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v4, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->OUTRO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 46
    new-instance v5, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v6, "youtube_sb_segments_preview"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v14

    const-string v6, "youtube_sb_segments_preview_summary"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v15

    const-string v6, "youtube_sb_skip_button_preview_beginning"

    .line 47
    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v16

    const-string v6, "youtube_sb_skip_button_preview_middle"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v17

    const-string v6, "youtube_sb_skip_button_preview_end"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v18

    const-string v6, "youtube_sb_skipped_preview_beginning"

    .line 48
    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v19

    const-string v6, "youtube_sb_skipped_preview_middle"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v20

    const-string v6, "youtube_sb_skipped_preview_end"

    invoke-static {v6}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v21

    const-string v11, "PREVIEW"

    const/4 v12, 0x6

    const-string v13, "preview"

    move-object v10, v5

    invoke-direct/range {v10 .. v21}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v5, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->PREVIEW:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 49
    new-instance v6, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v7, "youtube_sb_segments_hook"

    invoke-static {v7}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v14

    const-string v7, "youtube_sb_segments_hook_summary"

    invoke-static {v7}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v15

    const-string v7, "youtube_sb_skip_button_hook"

    invoke-static {v7}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v16

    const-string v7, "youtube_sb_skipped_hook"

    invoke-static {v7}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v17

    const-string v11, "HOOK"

    const/4 v12, 0x7

    const-string v13, "hook"

    move-object v10, v6

    invoke-direct/range {v10 .. v17}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v6, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HOOK:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 50
    new-instance v7, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v8, "youtube_sb_segments_filler"

    invoke-static {v8}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v14

    const-string v8, "youtube_sb_segments_filler_summary"

    invoke-static {v8}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v15

    const-string v8, "youtube_sb_skip_button_filler"

    invoke-static {v8}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v16

    const-string v8, "youtube_sb_skipped_filler"

    invoke-static {v8}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v17

    const-string v11, "FILLER"

    const/16 v12, 0x8

    const-string v13, "filler"

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v7, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->FILLER:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 51
    new-instance v8, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    const-string v10, "youtube_sb_segments_nomusic"

    invoke-static {v10}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v14

    const-string v10, "youtube_sb_segments_nomusic_summary"

    invoke-static {v10}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v15

    const-string v10, "youtube_sb_skip_button_nomusic"

    invoke-static {v10}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v16

    const-string v10, "youtube_sb_skipped_nomusic"

    invoke-static {v10}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v17

    const-string v11, "MUSIC_OFFTOPIC"

    const/16 v12, 0x9

    const-string v13, "music_offtopic"

    move-object v10, v8

    invoke-direct/range {v10 .. v17}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v8, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->MUSIC_OFFTOPIC:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 52
    new-instance v10, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v14, Lcom/gold/extension/shared/StringRef;->empty:Lcom/gold/extension/shared/StringRef;

    const-string v11, "youtube_sb_skip_button_unsubmitted"

    invoke-static {v11}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v16

    const-string v11, "youtube_sb_skipped_unsubmitted"

    invoke-static {v11}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v17

    const-string v11, "UNSUBMITTED"

    const/16 v12, 0xa

    const-string v13, "unsubmitted"

    move-object v15, v14

    invoke-direct/range {v10 .. v17}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    sput-object v10, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->UNSUBMITTED:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 34
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->$values()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v10

    sput-object v10, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 54
    const-string v10, "youtube_sb_skip_button_compact"

    invoke-static {v10}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v10

    sput-object v10, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipSponsorTextCompact:Lcom/gold/extension/shared/StringRef;

    .line 55
    const-string v10, "youtube_sb_skip_button_compact_highlight"

    invoke-static {v10}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v10

    sput-object v10, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipSponsorTextCompactHighlight:Lcom/gold/extension/shared/StringRef;

    .line 57
    filled-new-array/range {v0 .. v8}, [Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v10

    sput-object v10, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutHighlights:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-object/from16 v22, v4

    move-object v4, v3

    move-object v3, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, v22

    .line 69
    filled-new-array/range {v0 .. v9}, [Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutUnsubmitted:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->mValuesMap:Ljava/util/Map;

    .line 91
    const-string v1, "[]"

    sput-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->sponsorBlockAPIFetchCategories:Ljava/lang/String;

    .line 94
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1f9
    if-ge v2, v1, :cond_207

    aget-object v3, v0, v2

    .line 95
    sget-object v4, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->mValuesMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f9

    :cond_207
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
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
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p6

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    .line 235
    invoke-direct/range {v0 .. v11}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;Lcom/gold/extension/shared/StringRef;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
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
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            "Lcom/gold/extension/shared/StringRef;",
            ")V"
        }
    .end annotation

    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 230
    sget-object p1, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 243
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    .line 244
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->title:Lcom/gold/extension/shared/StringRef;

    .line 245
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->description:Lcom/gold/extension/shared/StringRef;

    .line 246
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipButtonTextBeginning:Lcom/gold/extension/shared/StringRef;

    .line 247
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p7, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipButtonTextMiddle:Lcom/gold/extension/shared/StringRef;

    .line 248
    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p8, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipButtonTextEnd:Lcom/gold/extension/shared/StringRef;

    .line 249
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p9, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skippedToastBeginning:Lcom/gold/extension/shared/StringRef;

    .line 250
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p10, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skippedToastMiddle:Lcom/gold/extension/shared/StringRef;

    .line 251
    invoke-static {p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p11, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skippedToastEnd:Lcom/gold/extension/shared/StringRef;

    .line 252
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public static activeCategories()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
    .registers 8

    .line 119
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutUnsubmitted:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v3, :cond_24

    aget-object v6, v2, v5

    .line 122
    sget-object v7, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v6, v7, :cond_1e

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->includesHighlight()Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_21

    .line 123
    :cond_1e
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 125
    :cond_24
    new-array v0, v4, [Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    return-object v0
.end method

.method public static byCategoryKey(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
    .registers 2

    .line 133
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->mValuesMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    return-object p0
.end method

.method public static categoriesWithoutHighlights()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
    .registers 1

    .line 109
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutHighlights:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    return-object v0
.end method

.method public static categoriesWithoutUnsubmitted()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
    .registers 1

    .line 102
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutUnsubmitted:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    return-object v0
.end method

.method private static getCategoryColorDotSpan(Ljava/lang/String;I)Landroid/text/SpannableString;
    .registers 6

    .line 377
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "⬤"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 378
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 380
    new-instance p0, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fc00000  # 1.5f

    invoke-direct {p0, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private synthetic lambda$setBehaviour$3(Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)Ljava/lang/String;
    .registers 4

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SegmentCategory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " behaviour -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadAllCategoriesFromSettings()V
    .registers 4

    .line 161
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->activeCategories()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 162
    invoke-direct {v3}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->loadFromSettings()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 166
    :cond_10
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->supportsSegmentCreation()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 167
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->UNSUBMITTED:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->loadFromSettings()V

    .line 169
    :cond_1f
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->updateEnabledCategories()V

    return-void
.end method

.method private loadFromSettings()V
    .registers 5

    .line 285
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v1}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->byMorpheKeyValue(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 289
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 290
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/Setting;->resetToDefault()Ljava/lang/Object;

    .line 291
    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->loadFromSettings()V

    return-void

    .line 294
    :cond_1d
    iput-object v2, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 296
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->colorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    .line 299
    :try_start_27
    invoke-virtual {p0, v1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->setColorWithOpacity(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception v2

    .line 301
    new-instance v3, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 302
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/Setting;->resetToDefault()Ljava/lang/Object;

    .line 303
    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->loadFromSettings()V

    return-void
.end method

.method public static updateEnabledCategories()V
    .registers 7

    .line 140
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 141
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 142
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->activeCategories()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_29

    aget-object v4, v0, v3

    .line 145
    iget-object v5, v4, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v6, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-eq v5, v6, :cond_26

    .line 146
    iget-object v4, v4, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 151
    :cond_29
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 152
    const-string v0, "[]"

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->sponsorBlockAPIFetchCategories:Ljava/lang/String;

    return-void

    .line 154
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[%22"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%22,%22"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%22]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->sponsorBlockAPIFetchCategories:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    const-class v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
    .registers 1

    .line 34
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    return-object v0
.end method


# virtual methods
.method public behaviorSetting()Lcom/gold/extension/shared/settings/StringSetting;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->cachedBehaviorSetting:Lcom/gold/extension/shared/settings/StringSetting;

    if-nez v0, :cond_12

    .line 262
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->categorySettings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;->behaviorFor(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    .line 263
    iput-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->cachedBehaviorSetting:Lcom/gold/extension/shared/settings/StringSetting;

    :cond_12
    return-object v0
.end method

.method public colorSetting()Lcom/gold/extension/shared/settings/StringSetting;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->cachedColorSetting:Lcom/gold/extension/shared/settings/StringSetting;

    if-nez v0, :cond_12

    .line 275
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->categorySettings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;->colorFor(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    .line 276
    iput-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->cachedColorSetting:Lcom/gold/extension/shared/settings/StringSetting;

    :cond_12
    return-object v0
.end method

.method public getColorStringWithoutOpacity()Ljava/lang/String;
    .registers 3

    .line 354
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getColorWithOpacity()I

    move-result p0

    const v0, 0xffffff

    and-int/2addr p0, v0

    .line 355
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "#%06X"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColorWithOpacity()I
    .registers 1

    .line 339
    iget p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->color:I

    return p0
.end method

.method public getDefaultColorWithOpacity()I
    .registers 1

    .line 347
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->colorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object p0

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getOpacity()D
    .registers 5

    .line 362
    iget p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->color:I

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L  # 255.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    mul-double/2addr v0, v2

    .line 363
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSkipButtonText(JJ)Lcom/gold/extension/shared/StringRef;
    .registers 7

    .line 407
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->compactSkipButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 408
    sget-object p1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne p0, p1, :cond_11

    .line 409
    sget-object p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipSponsorTextCompactHighlight:Lcom/gold/extension/shared/StringRef;

    return-object p0

    .line 410
    :cond_11
    sget-object p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipSponsorTextCompact:Lcom/gold/extension/shared/StringRef;

    return-object p0

    :cond_14
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1d

    .line 414
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipButtonTextBeginning:Lcom/gold/extension/shared/StringRef;

    return-object p0

    :cond_1d
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x3e800000  # 0.25f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_29

    .line 418
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipButtonTextBeginning:Lcom/gold/extension/shared/StringRef;

    return-object p0

    :cond_29
    const/high16 p2, 0x3f400000  # 0.75f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_32

    .line 420
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipButtonTextMiddle:Lcom/gold/extension/shared/StringRef;

    return-object p0

    .line 422
    :cond_32
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skipButtonTextEnd:Lcom/gold/extension/shared/StringRef;

    return-object p0
.end method

.method public getSkippedToastText(JJ)Lcom/gold/extension/shared/StringRef;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_9

    .line 434
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skippedToastBeginning:Lcom/gold/extension/shared/StringRef;

    return-object p0

    :cond_9
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x3e800000  # 0.25f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_15

    .line 438
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skippedToastBeginning:Lcom/gold/extension/shared/StringRef;

    return-object p0

    :cond_15
    const/high16 p2, 0x3f400000  # 0.75f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1e

    .line 440
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skippedToastMiddle:Lcom/gold/extension/shared/StringRef;

    return-object p0

    .line 442
    :cond_1e
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->skippedToastEnd:Lcom/gold/extension/shared/StringRef;

    return-object p0
.end method

.method public getTitle()Lcom/gold/extension/shared/StringRef;
    .registers 1

    .line 370
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->title:Lcom/gold/extension/shared/StringRef;

    return-object p0
.end method

.method public getTitleWithColorDot()Landroid/text/SpannableString;
    .registers 2

    .line 396
    iget v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->color:I

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getTitleWithColorDot(I)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method public getTitleWithColorDot(I)Landroid/text/SpannableString;
    .registers 4

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->title:Lcom/gold/extension/shared/StringRef;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getCategoryColorDotSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method public setBehaviour(Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)V
    .registers 3

    .line 311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 312
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 313
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object p0

    iget-object p1, p1, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public setColorWithOpacity(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 320
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 321
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->colorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "#%08X"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 322
    iput p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->color:I

    .line 323
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOpacity(D)V
    .registers 5

    const-wide v0, 0x406fe00000000000L  # 255.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 330
    iget p2, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->color:I

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p2

    iget v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->color:I

    .line 331
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
