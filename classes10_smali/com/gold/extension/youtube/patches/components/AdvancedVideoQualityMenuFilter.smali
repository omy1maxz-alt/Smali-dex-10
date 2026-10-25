.class public final Lcom/gold/extension/youtube/patches/components/AdvancedVideoQualityMenuFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "AdvancedVideoQualityMenuFilter.java"


# static fields
.field public static volatile isVideoQualityMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 18
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 19
    new-instance v0, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->ADVANCED_VIDEO_QUALITY_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "quick_quality_sheet_content.e"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    const/4 p0, 0x1

    .line 35
    sput-boolean p0, Lcom/gold/extension/youtube/patches/components/AdvancedVideoQualityMenuFilter;->isVideoQualityMenuVisible:Z

    const/4 p0, 0x0

    return p0
.end method
