.class public final synthetic Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/OAuth2Preference;

.field public final synthetic f$1:Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/settings/preference/OAuth2Preference;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda0;->f$1:Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/settings/preference/OAuth2Preference;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda0;->f$1:Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->$r8$lambda$3tIti7QL3K2iV9YbF-qFXGkxhOc(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;Landroid/content/Context;)V

    return-void
.end method
