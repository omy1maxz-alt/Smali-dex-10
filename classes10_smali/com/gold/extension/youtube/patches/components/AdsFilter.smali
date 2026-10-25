.class public final Lcom/gold/extension/youtube/patches/components/AdsFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "AdsFilter.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final HIDE_END_SCREEN_STORE_BANNER:Z

.field private static final PLAYER_POPUP_AD_PANEL_IDS:[Ljava/lang/String;

.field private static final STORE_BANNER_DOMAIN:Ljava/lang/String; = "gstatic.com/shopping"

.field private static final statementBannerSearch:Lcom/gold/extension/shared/ByteTrieSearch;

.field private static final yoodleSearch:Lcom/gold/extension/shared/ByteTrieSearch;


# instance fields
.field private final buyMovieAd:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final buyMovieAdBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

.field private final exceptions:Lcom/gold/extension/shared/StringTrieSearch;


# direct methods
.method public static synthetic $r8$lambda$7Rs4IbHcYEdBo18AlNRwHhW119g()Ljava/lang/String;
    .registers 1

    .line 218
    const-string v0, "hideStatementBanner failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$BRyDTt_AUxDRXXdsfH5SPFR9_U4()Ljava/lang/String;
    .registers 1

    .line 207
    const-string v0, "Hiding YouTube Doodles"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Hvyc0UxVBHCRezlJB8LYJlMMFFI()Ljava/lang/String;
    .registers 1

    .line 265
    const-string v0, "Hiding store banner"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ik_LzmRghDhnHzYJed5btczsl6o()Ljava/lang/String;
    .registers 1

    .line 212
    const-string v0, "Hiding YouTube Premium promotions"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    const-string v0, "PAproduct"

    const-string v1, "jumpahead"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->PLAYER_POPUP_AD_PANEL_IDS:[Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_END_SCREEN_STORE_BANNER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 41
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->HIDE_END_SCREEN_STORE_BANNER:Z

    const/4 v0, 0x0

    .line 43
    new-array v0, v0, [B

    sput-object v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->EMPTY_BYTE_ARRAY:[B

    .line 44
    new-instance v0, Lcom/gold/extension/shared/ByteTrieSearch;

    const-string v1, "statement_banner"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/gold/extension/shared/ByteTrieSearch;->convertStringsToBytes([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/ByteTrieSearch;-><init>([[B)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->statementBannerSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    .line 46
    new-instance v0, Lcom/gold/extension/shared/ByteTrieSearch;

    const-string v1, "EgliaWd5b29kbGU"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/gold/extension/shared/ByteTrieSearch;->convertStringsToBytes([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/ByteTrieSearch;-><init>([[B)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->yoodleSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    return-void
.end method

.method public constructor <init>()V
    .registers 35

    move-object/from16 v0, p0

    .line 54
    invoke-direct {v0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 49
    new-instance v1, Lcom/gold/extension/shared/StringTrieSearch;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/gold/extension/shared/StringTrieSearch;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->exceptions:Lcom/gold/extension/shared/StringTrieSearch;

    .line 55
    const-string v2, "|comment."

    const-string v3, "library_recent_shelf"

    const-string v4, "home_video_with_context"

    const-string v5, "related_video_with_context"

    const-string v6, "comment_thread"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gold/extension/shared/StringTrieSearch;->addPatterns([Ljava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_GENERAL_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "carousel_ad"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 69
    filled-new-array {v1}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/patches/components/Filter;->addIdentifierCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 73
    new-instance v4, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v32, "watch_metadata_app_promo"

    const-string v33, "shopping_timely_shelf."

    const-string v5, "_ad_with"

    const-string v6, "_buttoned_layout"

    const-string v7, "ads_video_with_context"

    const-string v8, "banner_text_icon"

    const-string v9, "brand_video_shelf"

    const-string v10, "brand_video_singleton"

    const-string v11, "carousel_footered_layout"

    const-string v12, "carousel_headered_layout"

    const-string v13, "compact_landscape_image_layout"

    const-string v14, "composite_concurrent_carousel_layout"

    const-string v15, "full_width_portrait_image_layout"

    const-string v16, "full_width_square_image_carousel_layout"

    const-string v17, "full_width_square_image_layout"

    const-string v18, "hero_promo_image"

    const-string v19, "image_button_group_layout"

    const-string v20, "landscape_image_carousel_layout"

    const-string v21, "landscape_image_wide_button_layout"

    const-string v22, "primetime_promo"

    const-string v23, "product_details"

    const-string v24, "square_image_layout"

    const-string v25, "text_image_button_layout"

    const-string v26, "text_image_no_button_layout"

    const-string v27, "video_display_button_group_layout"

    const-string v28, "video_display_carousel_button_group_layout"

    const-string v29, "video_display_carousel_buttoned_short_dr_layout"

    const-string v30, "video_display_full_buttoned_short_dr_layout"

    const-string v31, "video_display_full_layout"

    filled-new-array/range {v5 .. v33}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 107
    new-instance v6, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MOVIES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v11, "movie_and_show_upsell_card"

    const-string v12, "offer_module_root"

    const-string v7, "browsy_bar"

    const-string v8, "compact_movie"

    const-string v9, "compact_tvfilm_item"

    const-string v10, "horizontal_movie_shelf"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 117
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v2, "video_lockup_with_attachment.e"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v3, v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->buyMovieAd:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 122
    new-instance v1, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v2, "FEstorefront"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->buyMovieAdBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 127
    new-instance v11, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_POPUP_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "products_in_video"

    const-string v5, "shopping_overlay.e"

    const-string v7, "product_item"

    filled-new-array {v7, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 134
    new-instance v10, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHOPPING_LINKS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "shopping_description_shelf.e"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v2, v5}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 139
    new-instance v5, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MERCHANDISE_BANNERS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "product_carousel"

    const-string v8, "shopping_carousel.e"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v2, v7}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 145
    new-instance v7, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PAID_PROMOTION_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "reel_player_disclosure.e"

    const-string v9, "shorts_disclosures.e"

    const-string v12, "paid_content_overlay"

    filled-new-array {v12, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 152
    new-instance v8, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v2, "stickers_layer.e"

    const-string v9, "product_sticker.e"

    filled-new-array {v2, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 158
    new-instance v9, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SELF_SPONSOR:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "cta_shelf_card"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 163
    filled-new-array/range {v3 .. v11}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    return-void
.end method

.method public static allowAds(Z)Z
    .registers 2

    .line 235
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_GENERAL_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return p0
.end method

.method public static hideAdAttributionView(Landroid/view/View;)V
    .registers 2

    .line 254
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_GENERAL_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewBy0dpUnderCondition(Lcom/gold/extension/shared/settings/BooleanSetting;Landroid/view/View;)V

    return-void
.end method

.method public static hideAds(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 243
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_GENERAL_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 244
    const-string p0, "Android Automotive"

    :cond_e
    return-object p0
.end method

.method public static hideAds()Z
    .registers 1

    .line 228
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_GENERAL_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static hideEndScreenStoreBanner(Ljava/util/List;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 264
    sget-boolean v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->HIDE_END_SCREEN_STORE_BANNER:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gstatic.com/shopping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 265
    new-instance p0, Lcom/gold/extension/youtube/patches/components/AdsFilter$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/components/AdsFilter$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 269
    :cond_19
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static hideGetPremiumView()Z
    .registers 1

    .line 276
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_YOUTUBE_PREMIUM_PROMOTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static hideMiniplayerPaidPromotionLabelView(Landroid/view/View;)V
    .registers 2

    .line 291
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PAID_PROMOTION_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewBy0dpUnderCondition(Lcom/gold/extension/shared/settings/BooleanSetting;Landroid/view/View;)V

    return-void
.end method

.method public static hidePlayerPopupAds(Ljava/lang/String;)Z
    .registers 2

    .line 283
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_POPUP_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->PLAYER_POPUP_AD_PANEL_IDS:[Ljava/lang/String;

    .line 284
    invoke-static {p0, v0}, Lcom/gold/extension/shared/Utils;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static hideStatementBanner([B)[B
    .registers 3

    .line 202
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->statementBannerSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/ByteTrieSearch;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 203
    sget-object v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->yoodleSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/ByteTrieSearch;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 206
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_YOUTUBE_DOODLES:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 207
    new-instance v0, Lcom/gold/extension/youtube/patches/components/AdsFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/AdsFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 208
    sget-object p0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :catch_27
    move-exception v0

    goto :goto_40

    .line 211
    :cond_29
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_YOUTUBE_PREMIUM_PROMOTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 212
    new-instance v0, Lcom/gold/extension/youtube/patches/components/AdsFilter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/AdsFilter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 213
    sget-object p0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->EMPTY_BYTE_ARRAY:[B
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_27

    :cond_3f
    return-object p0

    .line 218
    :goto_40
    new-instance v1, Lcom/gold/extension/youtube/patches/components/AdsFilter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/components/AdsFilter$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 186
    sget-object p1, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->IDENTIFIER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    const/4 p2, 0x1

    if-ne p8, p1, :cond_6

    return p2

    .line 190
    :cond_6
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->buyMovieAd:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_1b

    if-nez p9, :cond_19

    .line 191
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->buyMovieAdBuffer:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    if-eqz p0, :cond_19

    return p2

    :cond_19
    const/4 p0, 0x0

    return p0

    .line 194
    :cond_1b
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/AdsFilter;->exceptions:Lcom/gold/extension/shared/StringTrieSearch;

    invoke-virtual {p0, p4}, Lcom/gold/extension/shared/StringTrieSearch;->matches(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    return p0
.end method
