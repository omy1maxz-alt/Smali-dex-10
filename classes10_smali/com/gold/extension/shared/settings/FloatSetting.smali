.class public Lcom/gold/extension/shared/settings/FloatSetting;
.super Lcom/gold/extension/shared/settings/Setting;
.source "FloatSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/settings/Setting<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;Z)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;ZLcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 6

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;ZZ)V
    .registers 5

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Float;
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

    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Float;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/FloatSetting;->get()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public load()V
    .registers 4

    .line 44
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getFloatString(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    return-void
.end method

.method public readFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Float;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/settings/FloatSetting;->readFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public saveToPreferences()V
    .registers 3

    .line 59
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveFloatString(Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public setValueFromString(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    return-void
.end method
