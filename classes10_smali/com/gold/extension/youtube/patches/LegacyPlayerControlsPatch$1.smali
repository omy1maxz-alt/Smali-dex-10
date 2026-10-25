.class Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1;
.super Ljava/lang/Object;
.source "LegacyPlayerControlsPatch.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->setFullscreenCloseButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field lastVisibility:I

.field final synthetic val$imageButton:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$tcjcw-ahDGfUDDXHvDbwZozJSPs()Ljava/lang/String;
    .registers 1

    .line 84
    const-string v0, "OnGlobalLayoutListener failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$wo0qU-ASBL4GSsqODVZX6qTkq9w(I)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 78
    const-string p0, "VISIBLE"

    goto :goto_e

    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    .line 79
    const-string p0, "GONE"

    goto :goto_e

    :cond_c
    const-string p0, "INVISIBLE"

    :goto_e
    const-string v0, "fullscreen button visibility: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1;->val$imageButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1;->lastVisibility:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1;->val$imageButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 74
    iget v1, p0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1;->lastVisibility:I

    if-eq v1, v0, :cond_1c

    .line 75
    iput v0, p0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1;->lastVisibility:I

    .line 77
    new-instance p0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-nez v0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 81
    :goto_19
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->-$$Nest$smfullscreenButtonVisibilityChanged(Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    :cond_1c
    return-void

    :catch_1d
    move-exception p0

    .line 84
    new-instance v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method
