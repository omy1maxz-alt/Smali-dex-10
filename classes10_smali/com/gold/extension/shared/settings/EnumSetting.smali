.class public Lcom/gold/extension/shared/settings/EnumSetting;
.super Lcom/gold/extension/shared/settings/Setting;
.source "EnumSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "*>;>",
        "Lcom/gold/extension/shared/settings/Setting<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$VRAUdF2AHNEwOfTX9Ta3B9l-yrw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using default, and ignoring unknown enum value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p0cv6S3jdKpz2UGpilM9Uygw27o(Lcom/gold/extension/shared/settings/EnumSetting;[Ljava/lang/Enum;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/EnumSetting;->lambda$availability$1([Ljava/lang/Enum;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/gold/extension/shared/settings/Setting$Availability;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZLcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z",
            "Lcom/gold/extension/shared/settings/Setting$Availability;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/settings/Setting$Availability;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;ZZ)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Enum;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;ZZ",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/settings/Setting$Availability;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method private synthetic lambda$availability$1([Ljava/lang/Enum;)Z
    .registers 6

    .line 115
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    .line 116
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    if-ne p0, v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    return v1
.end method


# virtual methods
.method public final varargs availability([Ljava/lang/Enum;)Lcom/gold/extension/shared/settings/Setting$Availability;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lcom/gold/extension/shared/settings/Setting$Availability;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/gold/extension/shared/settings/EnumSetting$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/shared/settings/EnumSetting$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/EnumSetting;[Ljava/lang/Enum;)V

    return-object v0
.end method

.method public get()Ljava/lang/Enum;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Enum;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public getEnumFromString(Ljava/lang/String;)Ljava/lang/Enum;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    aget-object v2, p0, v1

    .line 82
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 88
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown enum value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public load()V
    .registers 4

    .line 53
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v0, v1, v2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getEnum(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    return-void
.end method

.method public readFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/EnumSetting;->getEnumFromString(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p2

    .line 63
    new-instance v0, Lcom/gold/extension/shared/settings/EnumSetting$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/settings/EnumSetting$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 64
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Enum;

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

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/settings/EnumSetting;->readFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public saveToPreferences()V
    .registers 3

    .line 98
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveEnumAsString(Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method

.method public setValueFromString(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/EnumSetting;->getEnumFromString(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    return-void
.end method

.method public writeToJSON(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
