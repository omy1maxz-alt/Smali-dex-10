.class public final Lcom/gold/extension/youtube/shared/NavigationBar;
.super Ljava/lang/Object;
.source "NavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/shared/NavigationBar$AppCompatToolbarPatchInterface;,
        Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;
    }
.end annotation


# static fields
.field private static final LATCH_AWAIT_TIMEOUT_MILLISECONDS:J = 0x78L

.field private static final fillBellCairoBlack:I

.field private static lastYTNavigationEnumName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static volatile navButtonLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static volatile searchBarResultsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile toolbarResultsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/shared/NavigationBar$AppCompatToolbarPatchInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static final viewToButtonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7WO7p8oai9OkQg0_N8Ey2OSIBxQ()Ljava/lang/String;
    .registers 1

    .line 165
    const-string v0, "Cannot block main thread waiting for nav button. Using last known navbar button status."

    return-object v0
.end method

.method public static synthetic $r8$lambda$CHQ4Tzfr4kwEEBGuaQ6JTBmFGSM()Ljava/lang/String;
    .registers 1

    .line 75
    const-string v0, "Could not find navigation toolbar"

    return-object v0
.end method

.method public static synthetic $r8$lambda$FqmgdNY2k6T2chG5GiYXRX3WBps()Ljava/lang/String;
    .registers 1

    .line 276
    const-string v0, "navigationTabSelected failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$KNq4VSesvyP1PkjVHUkULjBlQi8()Ljava/lang/String;
    .registers 1

    .line 310
    const-string v0, "YouTube fixed the notification icons"

    return-object v0
.end method

.method public static synthetic $r8$lambda$KTef9BvNwed_OBHEaeCm8IBqopQ()Ljava/lang/String;
    .registers 1

    .line 185
    const-string v0, "Latch wait interrupted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$L_oaVJXkcYYa8OOKBBYMw-cKZpw()Ljava/lang/String;
    .registers 1

    .line 174
    const-string v0, "Latch wait complete"

    return-object v0
.end method

.method public static synthetic $r8$lambda$MLbuzZYhAaS7ZMO14kq0mQBEjW0(Landroid/view/View;)Z
    .registers 1

    .line 71
    instance-of p0, p0, Lcom/gold/extension/youtube/shared/NavigationBar$AppCompatToolbarPatchInterface;

    return p0
.end method

.method public static synthetic $r8$lambda$SBQ-WG9OynT94d_0QJCpsO7zQh4(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "navigationTabLoaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U34VSOdnvZxlO1gGIlPBmI6Owrw(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown navigation view selected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZsoHkVrPpaWVJaJdic5-vgNvm_4(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 4

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown tab: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " view: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fd9grN6e5ysSB5KvkrkHPyAuU24()Ljava/lang/String;
    .registers 1

    .line 181
    const-string v0, "Latch wait timed out"

    return-object v0
.end method

.method public static synthetic $r8$lambda$kYBPoZ9F5ltt4Ac06e0ALTE8NPQ()Ljava/lang/String;
    .registers 1

    .line 171
    const-string v0, "Latch wait started"

    return-object v0
.end method

.method public static synthetic $r8$lambda$s0BBVVy1lxXJJsA-PS1SgE9sK3I(Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;)Ljava/lang/String;
    .registers 3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Changed to navigation button: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t4xH64PX7o_0MmQoTiimtSm2reM()Ljava/lang/String;
    .registers 1

    .line 229
    const-string v0, "navigationTabLoaded failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$wa2vLantsMYoM-Cw1WAES9FQXu8()Ljava/lang/String;
    .registers 1

    .line 284
    const-string v0, "Back button pressed"

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smwaitForNavButtonLatchIfNeeded()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->waitForNavButtonLatchIfNeeded()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->searchBarResultsRef:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->toolbarResultsRef:Ljava/lang/ref/WeakReference;

    .line 135
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->viewToButtonMap:Ljava/util/Map;

    .line 140
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->createNavButtonLatch()V

    .line 296
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    .line 297
    sget-boolean v1, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_31_OR_GREATER:Z

    if-eqz v1, :cond_2a

    const-string v1, "20.31.00"

    invoke-static {v1}, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->isSpoofingToLessThan(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 298
    const-string v1, "yt_fill_experimental_bell_vd_theme_24"

    goto :goto_2c

    .line 299
    :cond_2a
    const-string v1, "youtube_fill_bell_cairo_black_24"

    .line 296
    :goto_2c
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/youtube/shared/NavigationBar;->fillBellCairoBlack:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNavButtonLatch()V
    .registers 2

    .line 144
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->navButtonLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static isBackButtonVisible()Z
    .registers 1

    .line 93
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->toolbarResultsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/shared/NavigationBar$AppCompatToolbarPatchInterface;

    if-eqz v0, :cond_12

    .line 94
    invoke-interface {v0}, Lcom/gold/extension/youtube/shared/NavigationBar$AppCompatToolbarPatchInterface;->patch_getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static isSearchBarActive()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->searchBarResultsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_12

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static navigationImageResourceTabLoaded(Landroid/view/View;)V
    .registers 3

    .line 241
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->CREATE:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    iget-object v0, v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->ytEnumNames:Ljava/util/List;

    sget-object v1, Lcom/gold/extension/youtube/shared/NavigationBar;->lastYTNavigationEnumName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 242
    invoke-static {p0}, Lcom/gold/extension/youtube/shared/NavigationBar;->navigationTabLoaded(Landroid/view/View;)V

    return-void

    .line 244
    :cond_10
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->LIBRARY:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    iget-object v0, v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->ytEnumNames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->lastYTNavigationEnumName:Ljava/lang/String;

    .line 245
    invoke-static {p0}, Lcom/gold/extension/youtube/shared/NavigationBar;->navigationTabLoaded(Landroid/view/View;)V

    return-void
.end method

.method private static navigationTabCreatedCallback(Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->navigationTabCreated(Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;Landroid/view/View;)V

    .line 0
    return-void
.end method

.method public static navigationTabLoaded(Landroid/view/View;)V
    .registers 7

    .line 211
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->lastYTNavigationEnumName:Ljava/lang/String;

    .line 213
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->values()[Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 214
    iget-object v5, v4, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->ytEnumNames:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 215
    new-instance v1, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 216
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->viewToButtonMap:Ljava/util/Map;

    invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {v4, p0}, Lcom/gold/extension/youtube/shared/NavigationBar;->navigationTabCreatedCallback(Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;Landroid/view/View;)V

    return-void

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 224
    :cond_28
    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 225
    new-instance v1, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    :cond_3c
    return-void

    :catch_3d
    move-exception p0

    .line 229
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static navigationTabSelected(Landroid/view/View;Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 258
    :cond_3
    :try_start_3
    sget-object p1, Lcom/gold/extension/youtube/shared/NavigationBar;->viewToButtonMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    if-nez p1, :cond_26

    .line 262
    sget-object p1, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 263
    new-instance p1, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_21
    const/4 p0, 0x0

    .line 266
    invoke-static {p0}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->-$$Nest$sfputselectedNavigationButton(Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;)V

    return-void

    .line 270
    :cond_26
    invoke-static {p1}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->-$$Nest$sfputselectedNavigationButton(Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;)V

    .line 271
    new-instance p0, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda5;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 274
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->releaseNavButtonLatch()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p0

    .line 276
    new-instance p1, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onBackPressed(Landroid/app/Activity;)V
    .registers 1

    .line 284
    new-instance p0, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 285
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->createNavButtonLatch()V

    return-void
.end method

.method private static releaseNavButtonLatch()V
    .registers 2

    .line 148
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->navButtonLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 150
    sput-object v1, Lcom/gold/extension/youtube/shared/NavigationBar;->navButtonLatch:Ljava/util/concurrent/CountDownLatch;

    .line 151
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_a
    return-void
.end method

.method public static searchBarResultsViewLoaded(Landroid/view/View;)V
    .registers 2

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->searchBarResultsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setCairoNotificationFilledIcon(Ljava/util/EnumMap;Ljava/lang/Enum;)V
    .registers 3

    .line 309
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 310
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 313
    :cond_1a
    sget v0, Lcom/gold/extension/youtube/shared/NavigationBar;->fillBellCairoBlack:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setLastAppNavigationEnum(Ljava/lang/Enum;)V
    .registers 1
    .param p0  # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 202
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gold/extension/youtube/shared/NavigationBar;->lastYTNavigationEnumName:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public static setToolbar(Landroid/widget/FrameLayout;)V
    .registers 3

    .line 70
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda7;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/gold/extension/shared/Utils;->getChildView(Landroid/view/ViewGroup;ZLcom/gold/extension/shared/Utils$MatchFilter;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/shared/NavigationBar$AppCompatToolbarPatchInterface;

    if-nez p0, :cond_17

    .line 75
    new-instance p0, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 79
    :cond_17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->toolbarResultsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static waitForNavButtonLatchIfNeeded()V
    .registers 4

    .line 156
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar;->navButtonLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_5

    return-void

    .line 161
    :cond_5
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isCurrentlyOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 165
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 171
    :cond_14
    :try_start_14
    new-instance v1, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 172
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 174
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 180
    :cond_2f
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->releaseNavButtonLatch()V

    .line 181
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception v0

    .line 185
    new-instance v1, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/gold/extension/youtube/shared/NavigationBar$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
