.class public final Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;
.super Ljava/lang/Object;
.source "AudioVolumeController.kt"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty;"
        }
    .end annotation
.end field


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private final maximumVolumeIndex$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final minimumVolumeIndex$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final targetStream:I


# direct methods
.method public static $r8$lambda$v5wbum6vjIoGW7RvjqhF_IpRe6c()Ljava/lang/String;
    .registers 1

    .line 32
    const-string v0, "failed to acquire AUDIO_SERVICE"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 0
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;

    const-string v2, "minimumVolumeIndex"

    const-string v3, "getMinimumVolumeIndex()I"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "maximumVolumeIndex"

    const-string v5, "getMaximumVolumeIndex()I"

    invoke-direct {v2, v1, v3, v5, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->targetStream:I

    .line 25
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->minimumVolumeIndex$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 26
    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->maximumVolumeIndex$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 30
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    check-cast p1, Landroid/media/AudioManager;

    goto :goto_25

    :cond_24
    move-object p1, v1

    :goto_25
    if-nez p1, :cond_30

    .line 32
    new-instance p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 34
    :cond_30
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->audioManager:Landroid/media/AudioManager;

    .line 35
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->setMaximumVolumeIndex(I)V

    .line 37
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_4f

    .line 38
    iget-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->audioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_49

    const-string p1, "audioManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4a

    :cond_49
    move-object v1, p1

    :goto_4a
    invoke-static {v1, p2}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;I)I

    move-result p1

    goto :goto_50

    :cond_4f
    const/4 p1, 0x0

    .line 36
    :goto_50
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->setMinimumVolumeIndex(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x3

    .line 16
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private final getCurrentVolumeIndex()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_a

    const-string v0, "audioManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->targetStream:I

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method private final getMaximumVolumeIndex()I
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->maximumVolumeIndex$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMinimumVolumeIndex()I
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->minimumVolumeIndex$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final setCurrentVolumeIndex(I)V
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_a

    const-string v0, "audioManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->targetStream:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method private final setMaximumVolumeIndex(I)V
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->maximumVolumeIndex$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setMinimumVolumeIndex(I)V
    .registers 5

    .line 25
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->minimumVolumeIndex$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getMaxVolume()I
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getMaximumVolumeIndex()I

    move-result v0

    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getMinimumVolumeIndex()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getVolume()I
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_6
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getCurrentVolumeIndex()I

    move-result v0

    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getMinimumVolumeIndex()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final setVolume(I)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    return-void

    .line 64
    :cond_5
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getMinimumVolumeIndex()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getMinimumVolumeIndex()I

    move-result v0

    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->getMaximumVolumeIndex()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsUtilsKt;->clamp(III)I

    move-result p1

    .line 63
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/AudioVolumeController;->setCurrentVolumeIndex(I)V

    return-void
.end method
