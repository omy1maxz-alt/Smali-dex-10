.class public final synthetic Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:Landroid/app/ProgressDialog;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    iput-object p5, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$4:Landroid/app/ProgressDialog;

    iput-object p6, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    iget-object v4, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$4:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->$r8$lambda$HhpTaLv1sEwMuk9PQ7iI10h0B7A(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    return-void
.end method
