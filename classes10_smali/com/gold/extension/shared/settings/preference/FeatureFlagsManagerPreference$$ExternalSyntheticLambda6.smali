.class public final synthetic Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;->f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;->f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;

    invoke-static {p0, p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->$r8$lambda$J8jBsgtyMQO4RhlDWf1jQkX2fq8(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
