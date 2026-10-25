.class public Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;
.super Ljava/lang/Object;
.source "SharedPrefCategory.java"


# instance fields
.field public final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final preferences:Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UyaNx-B8te30YT54HcAZg_wi2VE(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found conflicting preference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sJpqHw08BEvnmpLiNsJo8O1gmCo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using default, and ignoring unknown enum value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->name:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private removeConflictingPreferenceKeyValue(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    new-instance v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method private saveObjectAsString(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p2, :cond_a

    const/4 p2, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_e
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    .line 138
    :catch_7
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->removeConflictingPreferenceKeyValue(Ljava/lang/String;)V

    return p2
.end method

.method public getEnum(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 113
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :try_start_3
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_a} :catch_21

    if-eqz v0, :cond_24

    .line 119
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_14} :catch_15
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_14} :catch_21

    return-object p0

    .line 122
    :catch_15
    :try_start_15
    new-instance v1, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->removeKey(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_24

    .line 128
    :catch_21
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->removeConflictingPreferenceKeyValue(Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-object p2
.end method

.method public getFloatString(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 184
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_f

    return-object p0

    :cond_e
    return-object p2

    .line 188
    :catch_f
    :try_start_f
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_1d} :catch_1e

    return-object p0

    .line 190
    :catch_1e
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->removeConflictingPreferenceKeyValue(Ljava/lang/String;)V

    return-object p2
.end method

.method public getIntegerString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_f

    return-object p0

    :cond_e
    return-object p2

    .line 153
    :catch_f
    :try_start_f
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_1d} :catch_1e

    return-object p0

    .line 156
    :catch_1e
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->removeConflictingPreferenceKeyValue(Ljava/lang/String;)V

    return-object p2
.end method

.method public getLongString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 167
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_f

    return-object p0

    :cond_e
    return-object p2

    .line 171
    :catch_f
    :try_start_f
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_1d} :catch_1e

    return-object p0

    .line 173
    :catch_1e
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->removeConflictingPreferenceKeyValue(Ljava/lang/String;)V

    return-object p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 101
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :try_start_3
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    return-object p0

    .line 106
    :catch_a
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->removeConflictingPreferenceKeyValue(Ljava/lang/String;)V

    return-object p2
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBoolean(Ljava/lang/String;Z)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveEnumAsString(Ljava/lang/String;Ljava/lang/Enum;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveObjectAsString(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveFloatString(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveObjectAsString(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveIntegerString(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveObjectAsString(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveLongString(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveObjectAsString(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveObjectAsString(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 199
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->name:Ljava/lang/String;

    return-object p0
.end method
