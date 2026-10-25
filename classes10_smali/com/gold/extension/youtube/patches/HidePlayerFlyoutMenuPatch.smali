.class public final Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;
.super Ljava/lang/Object;
.source "HidePlayerFlyoutMenuPatch.java"


# static fields
.field private static final ADVANCED_VIDEO_QUALITY_BODY_PATH:Ljava/lang/String; = "advanced_quality_sheet_content.e"

.field private static final ADVANCED_VIDEO_QUALITY_HEADER_PATH:Ljava/lang/String; = "quality_sheet_header.e"

.field private static final BASE_VIDEO_QUALITY_HEADER_PATH:Ljava/lang/String; = "quick_quality_sheet_content.e"

.field private static final CAPTIONS_BODY_PATH:Ljava/lang/String; = "captions_sheet_content.e"

.field private static final CAPTIONS_HEADER_PATH:Ljava/lang/String; = "bottom_sheet_header.e"

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final HIDE_PLAYER_FLYOUT_CAPTIONS_FOOTER:Z

.field private static final HIDE_PLAYER_FLYOUT_CAPTIONS_HEADER:Z

.field private static final HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Z

.field private static final HIDE_PLAYER_FLYOUT_QUALITY_HEADER:Z

.field private static final PLAYER_FLYOUT_HEADER_IDENTIFIERS:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Dox8V4tp6a3LyVsnVtK0PxnzUww()Ljava/lang/String;
    .registers 1

    .line 94
    const-string v0, "hideNativeBottomSheetFooter failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$czpBGRYmoEwlI8DwSX6plzbRi5c()Ljava/lang/String;
    .registers 1

    .line 155
    const-string v0, "hideNativeBottomSheetHeader failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    const-string v0, "quick_quality_sheet_content.e"

    const-string v1, "bottom_sheet_header.e"

    const-string v2, "quality_sheet_header.e"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->PLAYER_FLYOUT_HEADER_IDENTIFIERS:[Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_CAPTIONS_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_CAPTIONS_FOOTER:Z

    .line 53
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_CAPTIONS_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_CAPTIONS_HEADER:Z

    .line 54
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Z

    .line 55
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_QUALITY_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_QUALITY_HEADER:Z

    const/4 v0, 0x0

    .line 57
    new-array v0, v0, [B

    sput-object v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideCaptionsOldBottomSheetFooter(Landroid/widget/ListView;Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 5

    .line 166
    sget-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_CAPTIONS_FOOTER:Z

    if-eqz v0, :cond_d

    .line 167
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 170
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static hideCaptionsOldBottomSheetHeader(Landroid/view/View;I)Landroid/view/View;
    .registers 2

    .line 177
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 178
    sget-boolean p1, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_CAPTIONS_HEADER:Z

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Utils;->hideViewByRemovingFromParentUnderCondition(ZLandroid/view/View;)Z

    return-object p0
.end method

.method public static hideNativeBottomSheetFooter(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 63
    sget-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_CAPTIONS_FOOTER:Z

    if-nez v0, :cond_8

    sget-boolean v1, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Z

    if-eqz v1, :cond_7c

    .line 65
    :cond_8
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_7c

    .line 67
    const-string v3, "captions_sheet_content.e"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_7d

    const-string v4, "ComponentType"

    if-eqz v3, :cond_4e

    if-eqz v0, :cond_4e

    .line 69
    :try_start_1b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_7c

    .line 71
    const-string v3, "Container"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    goto :goto_20

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_48
    add-int/lit8 v1, v1, -0x1

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 82
    :cond_4e
    const-string v0, "advanced_quality_sheet_content.e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7c

    sget-boolean p0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Z

    if-eqz p0, :cond_7c

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_7c

    :cond_73
    add-int/lit8 p0, v1, -0x1

    .line 89
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sub-int/2addr v1, v2

    .line 90
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_7c} :catch_7d

    :cond_7c
    :goto_7c
    return-void

    :catch_7d
    move-exception p0

    .line 94
    new-instance p1, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static hideNativeBottomSheetHeader([B)[B
    .registers 8

    .line 103
    sget-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_CAPTIONS_HEADER:Z

    if-nez v0, :cond_8

    sget-boolean v1, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_QUALITY_HEADER:Z

    if-eqz v1, :cond_dd

    .line 105
    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    .line 106
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;->getProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->getIdentifierProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 108
    sget-object v3, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->PLAYER_FLYOUT_HEADER_IDENTIFIERS:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gold/extension/shared/Utils;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 109
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;->getType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    .line 110
    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;->getComponentType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    .line 111
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;->getModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v4

    check-cast v4, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;

    .line 112
    sget-boolean v5, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_QUALITY_HEADER:Z

    if-eqz v5, :cond_d3

    invoke-virtual {v4}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;->hasYoutubeModel()Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 113
    invoke-virtual {v4}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;->getYoutubeModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;

    .line 114
    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;->getViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v5

    check-cast v5, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;

    .line 116
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;->hasQuickQualitySheetContentViewModel()Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 118
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;->getQuickQualitySheetContentViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;

    .line 120
    invoke-virtual {v6}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;->clearQualityHeader()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;

    .line 122
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    .line 123
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;->clearQuickQualitySheetContentViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;

    .line 124
    invoke-virtual {v5, v6}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;->setQuickQualitySheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;

    .line 126
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    .line 127
    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;->clearViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;

    .line 128
    invoke-virtual {v0, v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;->setViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;

    .line 130
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    .line 131
    invoke-virtual {v4}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;->clearYoutubeModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;

    .line 132
    invoke-virtual {v4, v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;->setYoutubeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;

    .line 134
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    .line 135
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;->clearModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    .line 136
    invoke-virtual {v3, v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;->setModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    .line 138
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    .line 139
    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;->clearComponentType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    .line 140
    invoke-virtual {v2, v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;->setComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    .line 142
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    .line 143
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;->clearType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    .line 144
    invoke-virtual {v1, v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;->setType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;

    .line 146
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_c8
    move-exception v0

    goto :goto_de

    .line 147
    :cond_ca
    invoke-virtual {v5}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;->hasQualitySheetHeaderViewModel()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 148
    sget-object p0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_d3
    if-eqz v0, :cond_dd

    .line 150
    invoke-virtual {v4}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;->hasBottomSheetHeaderModel()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 151
    sget-object p0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->EMPTY_BYTE_ARRAY:[B
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_dd} :catch_c8

    :cond_dd
    return-object p0

    .line 155
    :goto_de
    new-instance v1, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static hideQualityOldBottomSheetFooter(Landroid/widget/ListView;Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 5

    .line 190
    sget-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Z

    if-eqz v0, :cond_d

    .line 191
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 194
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static hideQualityOldBottomSheetHeader(Landroid/widget/ListView;Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 5

    .line 201
    sget-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->HIDE_PLAYER_FLYOUT_QUALITY_HEADER:Z

    if-eqz v0, :cond_d

    .line 202
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 205
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method
