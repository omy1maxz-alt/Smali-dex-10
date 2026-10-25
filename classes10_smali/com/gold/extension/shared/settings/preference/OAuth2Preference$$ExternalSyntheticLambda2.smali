.class public final synthetic Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/OAuth2Preference;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;ZLandroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda2;->f$0:Lcom/gold/extension/shared/settings/preference/OAuth2Preference;

    iput-boolean p2, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda2;->f$0:Lcom/gold/extension/shared/settings/preference/OAuth2Preference;

    iget-boolean v1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda2;->f$1:Z

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->$r8$lambda$14_B2k53YxdTMGiKQdiD-bMi7l8(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;ZLandroid/content/Context;)V

    return-void
.end method
