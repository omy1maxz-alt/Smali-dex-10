.class public final Lcom/gold/extension/youtube/patches/AddToQueuePatch;
.super Ljava/lang/Object;
.source "AddToQueuePatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/AddToQueuePatch$FlyoutMenuVideoIdInterface;,
        Lcom/gold/extension/youtube/patches/AddToQueuePatch$ProtocolBufferFieldInterface;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_SHELF_BYTES:[B

.field private static final VIDEO_ID_PREFIXES_BYTES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private static currentButtonIndex:I = 0x0

.field private static currentButtonName:Ljava/lang/String; = null

.field private static flyoutDialog:Landroid/app/Dialog; = null

.field private static flyoutPopupWindow:Landroid/widget/PopupWindow; = null

.field private static flyoutVideoId:Ljava/lang/String; = null

.field private static final queueButtonName:Ljava/lang/String; = "QUEUE_PLAY_NEXT"

.field private static senderViewObjectRef:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final shareButtonName:Ljava/lang/String; = "SHARE_ARROW"

.field private static final visibleFlyoutButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6W5vSyw2sh-tTZxOJktc325p1ds(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlyoutBuffer class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7jXsHpz0opp0hEsPPGzHhZrNkxY()Ljava/lang/String;
    .registers 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found flyout videoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$7noUAnRAI8S6NWX9vBGqPGJLIgI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found flyout videoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9bVSvDtb7tnLDH-n7zLFroBCNRA()Ljava/lang/String;
    .registers 1

    .line 248
    const-string v0, "extractVideoIdFromFlyoutBuffer failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$EN97JOoMF8SFRsf9nk6ua-8XIb0()Ljava/lang/String;
    .registers 1

    .line 195
    const-string v0, "FlyoutBuffer is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$RuegRNmDrW6vUlezO2DAyos6Y8o(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 2

    .line 421
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutButtonClickLogic(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_c

    :cond_7
    if-eqz p1, :cond_c

    .line 426
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_c
    :goto_c
    return-void
.end method

.method public static synthetic $r8$lambda$SJCtbe-RqmIr84eqRy52nSLjn2k()Ljava/lang/String;
    .registers 1

    .line 179
    const-string v0, "VideoId is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$TcYYFkYSYsS6t07biNVEbYE-G7c([B)Ljava/lang/String;
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flyout buffer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;-><init>([B)V

    .line 202
    invoke-virtual {v1}, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;->getStrings()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WcloCDsx3zztR1b1fW5m1pMDXCc()Ljava/lang/String;
    .registers 1

    .line 392
    const-string v0, "Cannot replace on item click, flyoutVideoId is empty"

    return-object v0
.end method

.method public static synthetic $r8$lambda$YZfA9mdkzsyXq36YxLIuGZp3rKs()Ljava/lang/String;
    .registers 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opening custom queue flyout with videoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$g7lRVlZfXS_dRoz6nZrbTpqLkt4()Ljava/lang/String;
    .registers 1

    .line 414
    const-string v0, "replaceOnItemClick failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$yOAwYPJYokdoCeuYHgdazawe038()Ljava/lang/String;
    .registers 1

    .line 374
    const-string v0, "Cannot replace on item click, flyoutVideoId is empty"

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputflyoutVideoId(Ljava/lang/String;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->senderViewObjectRef:Ljava/lang/ref/WeakReference;

    .line 60
    sput-object v1, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutDialog:Landroid/app/Dialog;

    .line 61
    sput-object v1, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutPopupWindow:Landroid/widget/PopupWindow;

    .line 67
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 69
    const-string v1, ".ytimg.com/vi/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "youtube.com/watch?v="

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->VIDEO_ID_PREFIXES_BYTES:Ljava/util/List;

    .line 72
    const-string v1, "horizontal_shelf.e"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->HORIZONTAL_SHELF_BYTES:[B

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->visibleFlyoutButtons:Ljava/util/List;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    .line 77
    sput-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->currentButtonName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissBottomSheetFlyout()V
    .registers 1

    .line 96
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutDialog:Landroid/app/Dialog;

    if-nez v0, :cond_5

    return-void

    .line 100
    :cond_5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static dismissPopupWindowFlyout()V
    .registers 1

    .line 117
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_5

    return-void

    .line 120
    :cond_5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static extractVideoId(Ljava/lang/Object;)V
    .registers 5
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    :try_start_0
    new-instance v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 176
    instance-of v0, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$FlyoutMenuVideoIdInterface;

    if-eqz v0, :cond_2c

    check-cast p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$FlyoutMenuVideoIdInterface;

    .line 177
    invoke-interface {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$FlyoutMenuVideoIdInterface;->patch_getVideoId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1c

    .line 179
    new-instance v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 181
    :cond_1c
    new-instance v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 182
    sput-object p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    .line 183
    sget-object p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->visibleFlyoutButtons:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 187
    :cond_2c
    instance-of v0, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$ProtocolBufferFieldInterface;

    if-eqz v0, :cond_be

    check-cast p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$ProtocolBufferFieldInterface;

    .line 191
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->visibleFlyoutButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    invoke-interface {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$ProtocolBufferFieldInterface;->patch_getBuffer()[B

    move-result-object p0

    if-nez p0, :cond_46

    .line 195
    new-instance p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 199
    :cond_46
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEBUG_PROTOBUFFER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 201
    new-instance v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda8;-><init>([B)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 205
    :cond_5a
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->HORIZONTAL_SHELF_BYTES:[B

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->indexOf([B[B)I

    move-result v0

    if-ltz v0, :cond_8c

    .line 206
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->senderViewObjectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_8c

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_70
    if-eqz v0, :cond_8c

    .line 212
    instance-of v1, v0, Lcom/facebook/litho/ComponentHost;

    if-eqz v1, :cond_87

    move-object v1, v0

    check-cast v1, Lcom/facebook/litho/ComponentHost;

    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 216
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {p0, v1}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->getTrimmedHorizontalShelfBuffer([BLjava/lang/String;)[B

    move-result-object p0

    .line 222
    :cond_87
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_70

    .line 227
    :cond_8c
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->VIDEO_ID_PREFIXES_BYTES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 228
    invoke-static {p0, v1}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->indexOf([B[B)I

    move-result v2

    if-ltz v2, :cond_92

    .line 232
    array-length v1, v1

    add-int/2addr v2, v1

    add-int/lit8 v1, v2, 0xb

    .line 235
    array-length v3, p0

    if-gt v1, v3, :cond_92

    .line 236
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v3, 0xb

    invoke-direct {v0, p0, v2, v3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    .line 242
    new-instance p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda9;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_be} :catch_bf

    :cond_be
    return-void

    :catch_bf
    move-exception p0

    .line 248
    new-instance v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static extractVideoId(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/ref/WeakReference;

    const-string v1, "com.google.android.libraries.youtube.rendering.elements.sender_view"

    .line 163
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->senderViewObjectRef:Ljava/lang/ref/WeakReference;

    .line 166
    const-string v0, "com.google.android.libraries.youtube.innertube.endpoint.tag"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->extractVideoId(Ljava/lang/Object;)V

    return-void
.end method

.method private static flyoutButtonClickLogic(Ljava/lang/String;)Z
    .registers 2

    .line 432
    const-string v0, "QUEUE_PLAY_NEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 433
    new-instance p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda13;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 435
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 436
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_2b

    .line 437
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->prepareDialogBuilder(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    :cond_2b
    invoke-static {}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->dismissBottomSheetFlyout()V

    .line 441
    invoke-static {}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->dismissPopupWindowFlyout()V

    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public static getFlyoutVideoId()Ljava/lang/String;
    .registers 1

    .line 449
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    return-object v0
.end method

.method private static getNewRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 3
    .param p0  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 420
    new-instance v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static getTrimmedHorizontalShelfBuffer([BLjava/lang/String;)[B
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_c5

    if-eqz v0, :cond_c5

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_c5

    .line 280
    :cond_10
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 281
    array-length v2, v1

    if-nez v2, :cond_1b

    goto/16 :goto_c5

    :cond_1b
    const/4 v2, 0x0

    .line 285
    aget-object v1, v1, v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[^a-zA-Z0-9\\s]"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 287
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 289
    array-length v4, v1

    move v5, v2

    :goto_39
    if-ge v5, v4, :cond_50

    aget-object v6, v1, v5

    .line 290
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_4d

    .line 291
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 295
    :cond_50
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_58

    goto/16 :goto_c5

    .line 301
    :cond_58
    array-length v1, v0

    const/4 v4, -0x1

    move v5, v2

    move v7, v5

    move v6, v4

    :goto_5d
    add-int/lit16 v8, v1, -0xc8

    if-gt v5, v8, :cond_a8

    .line 306
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v2

    move v10, v9

    :goto_67
    if-ge v10, v8, :cond_a0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, [B

    add-int/lit16 v12, v5, 0xc8

    .line 308
    array-length v13, v11

    sub-int/2addr v12, v13

    move v13, v5

    :goto_76
    if-gt v13, v12, :cond_9e

    move v14, v2

    .line 312
    :goto_79
    array-length v15, v11

    if-ge v14, v15, :cond_94

    add-int v15, v13, v14

    .line 313
    aget-byte v15, v0, v15

    const/16 v2, 0x41

    if-lt v15, v2, :cond_8b

    const/16 v2, 0x5a

    if-gt v15, v2, :cond_8b

    add-int/lit8 v15, v15, 0x20

    int-to-byte v15, v15

    .line 315
    :cond_8b
    aget-byte v2, v11, v14

    if-eq v15, v2, :cond_90

    goto :goto_94

    :cond_90
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_79

    .line 320
    :cond_94
    :goto_94
    array-length v2, v11

    if-ne v14, v2, :cond_9a

    add-int/lit8 v9, v9, 0x1

    goto :goto_9e

    :cond_9a
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_76

    :cond_9e
    :goto_9e
    const/4 v2, 0x0

    goto :goto_67

    :cond_a0
    if-le v9, v7, :cond_a4

    move v6, v5

    move v7, v9

    :cond_a4
    add-int/lit8 v5, v5, 0x14

    const/4 v2, 0x0

    goto :goto_5d

    .line 335
    :cond_a8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide v8, 0x3fd999999999999aL  # 0.4

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v6, v4, :cond_c5

    if-lt v7, v2, :cond_c5

    .line 337
    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :cond_c5
    :goto_c5
    return-object v0
.end method

.method private static indexOf([B[B)I
    .registers 9

    .line 254
    array-length v0, p1

    .line 255
    array-length v1, p0

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-gt v3, v1, :cond_19

    move v4, v2

    :goto_8
    if-ge v4, v0, :cond_18

    add-int v5, v3, v4

    .line 258
    aget-byte v5, p0, v5

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_15

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_18
    return v3

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public static replaceButtonRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 369
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_OVERRIDE_FLYOUT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    return-object p0

    .line 373
    :cond_d
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 374
    new-instance v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p0

    .line 378
    :cond_1e
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->currentButtonName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->getNewRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static replaceOnItemClick(Ljava/lang/Object;)Z
    .registers 5

    .line 387
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_OVERRIDE_FLYOUT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 391
    :cond_e
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutVideoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 392
    new-instance p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda11;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return v1

    .line 399
    :cond_1f
    instance-of v0, p0, Ljava/lang/Integer;

    const-string v2, ""

    if-eqz v0, :cond_2c

    check-cast p0, Ljava/lang/Integer;

    .line 400
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_35

    .line 401
    :cond_2c
    instance-of v0, p0, Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v0, :cond_34

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_34
    move p0, v3

    .line 406
    :goto_35
    :try_start_35
    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->visibleFlyoutButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    if-ltz p0, :cond_50

    .line 408
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutButtonClickLogic(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_4e
    move-exception p0

    goto :goto_5b

    .line 409
    :cond_50
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_63

    .line 410
    invoke-static {v2}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutButtonClickLogic(Ljava/lang/String;)Z

    move-result p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5a} :catch_4e

    return p0

    .line 414
    :goto_5b
    new-instance v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_63
    return v1
.end method

.method private static runFlyoutPanelVisibilityHandler(Ljava/lang/Object;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 131
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    new-instance v1, Lcom/gold/extension/youtube/patches/AddToQueuePatch$1;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$1;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setBottomSheetFlyout(Landroid/app/Dialog;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 90
    :cond_3
    sput-object p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutDialog:Landroid/app/Dialog;

    .line 92
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->runFlyoutPanelVisibilityHandler(Ljava/lang/Object;)V

    return-void
.end method

.method public static setCurrentButtonInfo(Ljava/lang/Enum;Ljava/lang/Object;)V
    .registers 4
    .param p0  # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_23

    .line 351
    :cond_3
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_23

    .line 355
    :cond_15
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_24

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_24

    :goto_23
    return-void

    .line 359
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->currentButtonName:Ljava/lang/String;

    .line 360
    sget p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->currentButtonIndex:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->currentButtonIndex:I

    .line 362
    sget-object p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->visibleFlyoutButtons:Ljava/util/List;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->currentButtonName:Ljava/lang/String;

    sget v1, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->currentButtonIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setPopupWindowFlyout(Landroid/widget/PopupWindow;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 111
    :cond_3
    sput-object p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->flyoutPopupWindow:Landroid/widget/PopupWindow;

    .line 113
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->runFlyoutPanelVisibilityHandler(Ljava/lang/Object;)V

    return-void
.end method
