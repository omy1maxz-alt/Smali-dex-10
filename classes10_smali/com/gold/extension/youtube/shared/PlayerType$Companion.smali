.class public final Lcom/gold/extension/youtube/shared/PlayerType$Companion;
.super Ljava/lang/Object;
.source "PlayerType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/shared/PlayerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static $r8$lambda$6LNtJmGrkLazUScCjskgC6pmgYk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown PlayerType encountered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static $r8$lambda$MMnI6PiKeRxwKkVX4Emud2zPPzU(Lcom/gold/extension/youtube/shared/PlayerType;)Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Changed to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$setCurrent(Lcom/gold/extension/youtube/shared/PlayerType$Companion;Lcom/gold/extension/youtube/shared/PlayerType;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;->setCurrent(Lcom/gold/extension/youtube/shared/PlayerType;)V

    return-void
.end method

.method public static synthetic getCurrent$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getOnChange$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method private final setCurrent(Lcom/gold/extension/youtube/shared/PlayerType;)V
    .registers 3

    .line 76
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->access$getCurrentPlayerType$cp()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    if-eq v0, p1, :cond_18

    .line 77
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/gold/extension/youtube/shared/PlayerType$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/shared/PlayerType;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 79
    invoke-static {p1}, Lcom/gold/extension/youtube/shared/PlayerType;->access$setCurrentPlayerType$cp(Lcom/gold/extension/youtube/shared/PlayerType;)V

    .line 80
    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/shared/Event;->invoke(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public final getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;
    .registers 1

    .line 74
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->access$getCurrentPlayerType$cp()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    return-object p0
.end method

.method public final getOnChange()Lcom/gold/extension/youtube/shared/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/PlayerType;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->access$getOnChange$cp()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p0

    return-object p0
.end method

.method public final setFromString(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->access$getNameToPlayerType$cp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/shared/PlayerType;

    if-nez v0, :cond_18

    .line 63
    new-instance p0, Lcom/gold/extension/youtube/shared/PlayerType$Companion$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/shared/PlayerType$Companion$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 65
    :cond_18
    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;->setCurrent(Lcom/gold/extension/youtube/shared/PlayerType;)V

    return-void
.end method
