.class public final synthetic Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;

    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->$r8$lambda$sS9Ph-c3EiUvYjn_ogOokP1D5ME(Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
