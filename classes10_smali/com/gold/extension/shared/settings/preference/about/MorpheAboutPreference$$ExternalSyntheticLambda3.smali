.class public final synthetic Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Ljava/lang/Runnable;

.field public final synthetic f$4:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$0:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$4:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$0:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$2:Landroid/os/Handler;

    iget-object v3, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;->f$4:Landroid/app/ProgressDialog;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->$r8$lambda$y69RnyXe3KOFbe_mCCpfbh9hPx0(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    return-void
.end method
