.class public final Lcom/gold/extension/youtube/patches/components/PlaybackSpeedMenuFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "PlaybackSpeedMenuFilter.java"


# static fields
.field public static volatile isOldPlaybackSpeedMenuVisible:Z

.field public static volatile isPlaybackRateSelectorMenuVisible:Z


# instance fields
.field private final oldPlaybackMenuGroup:Lcom/gold/extension/shared/patches/components/StringFilterGroup;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 27
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 29
    new-instance v0, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->CUSTOM_SPEED_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "playback_rate_selector_menu_sheet.e"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 35
    new-instance v2, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v3, "playback_speed_sheet_content.e"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gold/extension/youtube/patches/components/PlaybackSpeedMenuFilter;->oldPlaybackMenuGroup:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 39
    filled-new-array {v0, v2}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 52
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/PlaybackSpeedMenuFilter;->oldPlaybackMenuGroup:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const/4 p1, 0x1

    if-ne p7, p0, :cond_8

    .line 53
    sput-boolean p1, Lcom/gold/extension/youtube/patches/components/PlaybackSpeedMenuFilter;->isOldPlaybackSpeedMenuVisible:Z

    goto :goto_a

    .line 55
    :cond_8
    sput-boolean p1, Lcom/gold/extension/youtube/patches/components/PlaybackSpeedMenuFilter;->isPlaybackRateSelectorMenuVisible:Z

    :goto_a
    const/4 p0, 0x0

    return p0
.end method
