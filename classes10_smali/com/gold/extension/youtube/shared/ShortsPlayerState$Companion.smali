.class public final Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;
.super Ljava/lang/Object;
.source "ShortsPlayerState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/shared/ShortsPlayerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static $r8$lambda$29uuORFCeZ0ZjapQ1I7Hkx7053w()Ljava/lang/String;
    .registers 3

    .line 15
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->access$isOpen$cp()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShortsPlayerState open changed to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getOnChange$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final getOnChange()Lcom/gold/extension/youtube/shared/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/youtube/shared/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->access$getOnChange$cp()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p0

    return-object p0
.end method

.method public final isOpen()Z
    .registers 1

    .line 34
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->access$isOpen$cp()Z

    move-result p0

    return p0
.end method

.method public final setOpen(Z)V
    .registers 3

    .line 13
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->access$isOpen$cp()Z

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 14
    invoke-static {p1}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->access$setOpen$cp(Z)V

    .line 15
    new-instance v0, Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 16
    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/shared/Event;->invoke(Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method
