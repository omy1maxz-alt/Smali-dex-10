.class public final Lcom/gold/extension/youtube/shared/EngagementPanel;
.super Ljava/lang/Object;
.source "EngagementPanel.java"


# static fields
.field private static final lastEngagementPanelId:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1XtncWL9tcjZ4OzV9afbgi6Lvnc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngagementPanel open, New panel id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4bo8LopZSTj_tI9Ojnqo4t9x1YQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngagementPanel closed, Last panel id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/EngagementPanel;->lastEngagementPanelId:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .registers 3

    .line 18
    invoke-static {}, Lcom/gold/extension/youtube/shared/EngagementPanel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 20
    sget-object v1, Lcom/gold/extension/youtube/shared/EngagementPanel;->lastEngagementPanelId:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 21
    new-instance v1, Lcom/gold/extension/youtube/shared/EngagementPanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/shared/EngagementPanel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_19
    return-void
.end method

.method private static getId()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lcom/gold/extension/youtube/shared/EngagementPanel;->lastEngagementPanelId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isDescription()Z
    .registers 2

    .line 36
    invoke-static {}, Lcom/gold/extension/youtube/shared/EngagementPanel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video-description-ep-identifier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static open(Ljava/lang/String;)V
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 30
    sget-object v0, Lcom/gold/extension/youtube/shared/EngagementPanel;->lastEngagementPanelId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lcom/gold/extension/youtube/shared/EngagementPanel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/shared/EngagementPanel$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_13
    return-void
.end method
