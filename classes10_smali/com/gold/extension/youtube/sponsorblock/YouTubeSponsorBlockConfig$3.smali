.class Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$3;
.super Ljava/lang/Object;
.source "YouTubeSponsorBlockConfig.java"

# interfaces
.implements Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public behaviorFor(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)Lcom/gold/extension/shared/settings/StringSetting;
    .registers 2
    .param p1  # Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 198
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_32

    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    .line 209
    :pswitch_11  #0xb
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_UNSUBMITTED:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 208
    :pswitch_14  #0xa
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_MUSIC_OFFTOPIC:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 207
    :pswitch_17  #0x9
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_FILLER:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 206
    :pswitch_1a  #0x8
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_HOOK:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 205
    :pswitch_1d  #0x7
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_PREVIEW:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 204
    :pswitch_20  #0x6
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_OUTRO:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 203
    :pswitch_23  #0x5
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_INTRO:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 202
    :pswitch_26  #0x4
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_HIGHLIGHT:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 201
    :pswitch_29  #0x3
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_INTERACTION:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 200
    :pswitch_2c  #0x2
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_SELF_PROMO:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 199
    :pswitch_2f  #0x1
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_SPONSOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f  #00000001
        :pswitch_2c  #00000002
        :pswitch_29  #00000003
        :pswitch_26  #00000004
        :pswitch_23  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_17  #00000009
        :pswitch_14  #0000000a
        :pswitch_11  #0000000b
    .end packed-switch
.end method

.method public colorFor(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)Lcom/gold/extension/shared/settings/StringSetting;
    .registers 2
    .param p1  # Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 215
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_32

    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    .line 226
    :pswitch_11  #0xb
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_UNSUBMITTED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 225
    :pswitch_14  #0xa
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_MUSIC_OFFTOPIC_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 224
    :pswitch_17  #0x9
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_FILLER_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 223
    :pswitch_1a  #0x8
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_HOOK_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 222
    :pswitch_1d  #0x7
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_PREVIEW_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 221
    :pswitch_20  #0x6
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_OUTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 220
    :pswitch_23  #0x5
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_INTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 219
    :pswitch_26  #0x4
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_HIGHLIGHT_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 218
    :pswitch_29  #0x3
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_INTERACTION_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 217
    :pswitch_2c  #0x2
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_SELF_PROMO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    .line 216
    :pswitch_2f  #0x1
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_SPONSOR_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f  #00000001
        :pswitch_2c  #00000002
        :pswitch_29  #00000003
        :pswitch_26  #00000004
        :pswitch_23  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_17  #00000009
        :pswitch_14  #0000000a
        :pswitch_11  #0000000b
    .end packed-switch
.end method
