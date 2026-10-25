.class public Lcom/gold/extension/shared/settings/BooleanSetting;
.super Lcom/gold/extension/shared/settings/Setting;
.source "BooleanSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/settings/Setting<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 5

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V
    .registers 5

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 6

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V
    .registers 5

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Lcom/gold/extension/shared/settings/Setting$Availability;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public static privateSetValue(Lcom/gold/extension/shared/settings/BooleanSetting;Ljava/lang/Boolean;)V
    .registers 2
    .param p0  # Lcom/gold/extension/shared/settings/BooleanSetting;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->isSetToDefault()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 52
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->removeFromPreferences()V

    :cond_e
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public load()V
    .registers 4

    .line 58
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    return-void
.end method

.method public readFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/settings/BooleanSetting;->readFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public saveToPreferences()V
    .registers 3

    .line 73
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setValueFromString(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    return-void
.end method
