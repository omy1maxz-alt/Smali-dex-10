.class public final Lcom/gold/extension/youtube/patches/ChangeStartPagePatch;
.super Lcom/gold/extension/shared/patches/BaseChangeStartPagePatch;
.source "ChangeStartPagePatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;
    }
.end annotation


# static fields
.field private static final START_PAGE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;


# direct methods
.method public static synthetic $r8$lambda$fErgklKW79OB8ymYNmJ0n9oqH1E()Ljava/lang/String;
    .registers 1

    .line 116
    const-string v0, "Ignore override intent action as the current activity is not the entry point of the application"

    return-object v0
.end method

.method public static synthetic $r8$lambda$s_B1timWk2rOxnjS9smiOBHS9E0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Changing intent action to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 104
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->CHANGE_START_PAGE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch;->START_PAGE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/BaseChangeStartPagePatch;-><init>()V

    return-void
.end method

.method public static overrideBrowseId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch;->START_PAGE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->-$$Nest$misBrowseId(Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;)Z

    move-result v1

    iget-object v0, v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->id:Ljava/lang/String;

    invoke-static {p0, v1, v0, v0}, Lcom/gold/extension/shared/patches/BaseChangeStartPagePatch;->processBrowseId(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static overrideIntentAction(Landroid/content/Intent;)V
    .registers 4
    .param p0  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch;->START_PAGE:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->-$$Nest$misIntentAction(Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 115
    :cond_9
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 116
    new-instance p0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 121
    :cond_1e
    iget-object v0, v0, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->id:Ljava/lang/String;

    .line 122
    new-instance v1, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
