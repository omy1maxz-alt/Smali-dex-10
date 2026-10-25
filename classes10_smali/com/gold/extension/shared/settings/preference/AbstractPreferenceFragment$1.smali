.class Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$1;
.super Ljava/lang/Object;
.source "AbstractPreferenceFragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 704
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$1;->this$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ChromeOsOnConfigurationChanged"
        }
    .end annotation

    .line 708
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    .line 709
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$1;->this$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->-$$Nest$fgetcurrentUiMode(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$1;->this$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->-$$Nest$fgetcurrentUiMode(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)I

    move-result v0

    if-eq p1, v0, :cond_44

    .line 710
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$1;->this$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->-$$Nest$fputcurrentUiMode(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;I)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ne p1, v0, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    move p1, v1

    .line 711
    :goto_22
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->setIsDarkModeEnabled(Z)V

    .line 713
    iget-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$1;->this$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 715
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000

    .line 716
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 717
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 718
    invoke-virtual {p1, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 719
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$1;->this$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 720
    invoke-virtual {p1, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_44
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .line 0
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    .line 0
    return-void
.end method
