.class public final Lcom/gold/extension/youtube/shared/VideoState$Companion;
.super Ljava/lang/Object;
.source "VideoState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/shared/VideoState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static $r8$lambda$X-tTuumxC8L6LLRjVGs3Kb0SmXc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown VideoState encountered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static $r8$lambda$_-W7WiREuEAoQEtiCChe9FjrOJg(Lcom/gold/extension/youtube/shared/VideoState;)Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoState changed to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/shared/VideoState$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$setCurrent(Lcom/gold/extension/youtube/shared/VideoState$Companion;Lcom/gold/extension/youtube/shared/VideoState;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/shared/VideoState$Companion;->setCurrent(Lcom/gold/extension/youtube/shared/VideoState;)V

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

.method private final setCurrent(Lcom/gold/extension/youtube/shared/VideoState;)V
    .registers 2

    .line 51
    invoke-static {p1}, Lcom/gold/extension/youtube/shared/VideoState;->access$setCurrentVideoState$cp(Lcom/gold/extension/youtube/shared/VideoState;)V

    return-void
.end method


# virtual methods
.method public final getCurrent()Lcom/gold/extension/youtube/shared/VideoState;
    .registers 1

    .line 49
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->access$getCurrentVideoState$cp()Lcom/gold/extension/youtube/shared/VideoState;

    move-result-object p0

    return-object p0
.end method

.method public final getOnChange()Lcom/gold/extension/youtube/shared/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/VideoState;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->access$getOnChange$cp()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p0

    return-object p0
.end method

.method public final setFromString(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->access$getNameToVideoState$cp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/shared/VideoState;

    if-nez v0, :cond_18

    .line 35
    new-instance p0, Lcom/gold/extension/youtube/shared/VideoState$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/shared/VideoState$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 36
    :cond_18
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->access$getCurrentVideoState$cp()Lcom/gold/extension/youtube/shared/VideoState;

    move-result-object p1

    if-eq p1, v0, :cond_30

    .line 37
    new-instance p1, Lcom/gold/extension/youtube/shared/VideoState$Companion$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/gold/extension/youtube/shared/VideoState$Companion$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/youtube/shared/VideoState;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 38
    invoke-static {v0}, Lcom/gold/extension/youtube/shared/VideoState;->access$setCurrentVideoState$cp(Lcom/gold/extension/youtube/shared/VideoState;)V

    .line 39
    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/VideoState$Companion;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/gold/extension/youtube/shared/Event;->invoke(Ljava/lang/Object;)V

    :cond_30
    return-void
.end method
