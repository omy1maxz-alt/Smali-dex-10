.class public final synthetic Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda24;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda24;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->$r8$lambda$wun9KgeMWjU22AimnmHs1eqyZW4(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
