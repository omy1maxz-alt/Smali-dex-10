.class public abstract Lcom/gold/extension/shared/settings/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/Setting$Availability;,
        Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OPTIONAL_MORPHE_SETTINGS_PREFIX:Ljava/lang/String; = "youtube_"

.field private static final PATH_TO_SETTINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final SETTINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final importExportCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;


# instance fields
.field private final availability:Lcom/gold/extension/shared/settings/Setting$Availability;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final includeWithImportExport:Z

.field public final key:Ljava/lang/String;

.field public final rebootApp:Z

.field public final userDialogMessage:Lcom/gold/extension/shared/StringRef;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-vXST265R2Oc8Ps7ujuXq8t3rDw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migrating old preference value into current preference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7ixFajRIcdRu6qDF4pEs9iLRL6o(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)Ljava/lang/String;
    .registers 4

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migrating old setting value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " into replacement setting: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B_GUEpRZla8tCPCzmbpKG2lWclQ(Lcom/gold/extension/shared/settings/Setting;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/Setting;->lambda$removeFromPreferences$7()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LLj7I8gk6hdhUPHwVDYAdYqJdGo(Lcom/gold/extension/shared/settings/Setting;)Ljava/lang/String;
    .registers 3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown setting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NRP3RsDj7EAZBxOcoIDPoTZNZig(Lcom/gold/extension/shared/settings/Setting;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/Setting;->lambda$new$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P32ZFii7D8JsxUFEB-2YVA2_XeU()Ljava/lang/String;
    .registers 1

    .line 591
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic $r8$lambda$RS_pZlWrAkDre30z6Fpepqml7HA(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)I
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$azfEOtILNR8O00lOSxjvkZYeTNU(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Import failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eyN-k42QAB0VJ7j7j2UMp-guPhw(Lcom/gold/extension/shared/settings/Setting;)Ljava/lang/String;
    .registers 3

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resetting to default: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mMgJCHtiii60nQI_Dwcd_slRLbI([Lcom/gold/extension/shared/settings/Setting$Availability;)Z
    .registers 5

    .line 135
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_11

    aget-object v3, p0, v2

    .line 136
    invoke-interface {v3}, Lcom/gold/extension/shared/settings/Setting$Availability;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_e

    return v1

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$nNFpkwi2LdFKIefseAo7cDeZPiE()Ljava/lang/String;
    .registers 1

    .line 528
    const-string v0, "Export failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$nmyQw4x1qFW3rlfWbIVb6xWFYYY(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value does not need migrating: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sa1KYQg1sfcIPiS0xPxOTWuc_UQ(ILjava/lang/String;)V
    .registers 2

    if-nez p0, :cond_7

    .line 579
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    .line 580
    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "youtube_settings_import_success"

    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 578
    :goto_15
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/settings/Setting;->importExportCallbacks:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/settings/Setting;->SETTINGS:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/settings/Setting;->PATH_TO_SETTINGS:Ljava/util/Map;

    .line 180
    new-instance v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    const-string v1, "youtube_prefs"

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 244
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/gold/extension/shared/settings/Setting$Availability;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 256
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 253
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 247
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;ZLcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z",
            "Lcom/gold/extension/shared/settings/Setting$Availability;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 262
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 259
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 13
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

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 265
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;ZZ)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 250
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V
    .registers 7
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

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    .line 286
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    .line 287
    iput-boolean p3, p0, Lcom/gold/extension/shared/settings/Setting;->rebootApp:Z

    .line 288
    iput-boolean p4, p0, Lcom/gold/extension/shared/settings/Setting;->includeWithImportExport:Z

    if-nez p5, :cond_17

    const/4 p2, 0x0

    goto :goto_1c

    .line 289
    :cond_17
    new-instance p2, Lcom/gold/extension/shared/StringRef;

    invoke-direct {p2, p5}, Lcom/gold/extension/shared/StringRef;-><init>(Ljava/lang/String;)V

    :goto_1c
    iput-object p2, p0, Lcom/gold/extension/shared/settings/Setting;->userDialogMessage:Lcom/gold/extension/shared/StringRef;

    .line 290
    iput-object p6, p0, Lcom/gold/extension/shared/settings/Setting;->availability:Lcom/gold/extension/shared/settings/Setting$Availability;

    .line 292
    sget-object p2, Lcom/gold/extension/shared/settings/Setting;->SETTINGS:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object p2, Lcom/gold/extension/shared/settings/Setting;->PATH_TO_SETTINGS:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 294
    new-instance p2, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, p1}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda13;-><init>(Lcom/gold/extension/shared/settings/Setting;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 298
    :cond_35
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->load()V

    return-void
.end method

.method public static addImportExportCallback(Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;)V
    .registers 2

    .line 163
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->importExportCallbacks:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static allLoadedSettings()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->SETTINGS:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static allLoadedSettingsSorted()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->SETTINGS:Ljava/util/List;

    new-instance v1, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    invoke-static {}, Lcom/gold/extension/shared/settings/Setting;->allLoadedSettings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static exportToJson(Landroid/app/Activity;)Ljava/lang/String;
    .registers 7
    .param p0  # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 494
    const-string v0, ""

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 495
    invoke-static {}, Lcom/gold/extension/shared/settings/Setting;->allLoadedSettingsSorted()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/shared/settings/Setting;

    .line 496
    invoke-direct {v3}, Lcom/gold/extension/shared/settings/Setting;->getImportExportKey()Ljava/lang/String;

    move-result-object v4

    .line 497
    iget-boolean v5, v3, Lcom/gold/extension/shared/settings/Setting;->includeWithImportExport:Z

    if-eqz v5, :cond_43

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_43

    .line 498
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate key found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_41
    move-exception p0

    goto :goto_ac

    .line 503
    :cond_43
    :goto_43
    iget-boolean v5, v3, Lcom/gold/extension/shared/settings/Setting;->includeWithImportExport:Z

    if-eqz v5, :cond_f

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/Setting;->isSetToDefault()Z

    move-result v5

    if-eqz v5, :cond_4e

    goto :goto_f

    .line 504
    :cond_4e
    invoke-virtual {v3, v1, v4}, Lcom/gold/extension/shared/settings/Setting;->writeToJSON(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_f

    .line 508
    :cond_52
    sget-object v2, Lcom/gold/extension/shared/settings/Setting;->importExportCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;

    .line 509
    invoke-interface {v3, p0}, Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;->settingsExported(Landroid/app/Activity;)V

    goto :goto_58

    .line 512
    :cond_68
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_6f

    return-object v0

    :cond_6f
    const/4 p0, 0x0

    .line 516
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 518
    const-string v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 524
    :cond_8e
    const-string v1, "^\\n+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\n+$"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_ab} :catch_41

    return-object p0

    .line 528
    :goto_ac
    new-instance v1, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private getImportExportKey()Ljava/lang/String;
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    const-string v1, "youtube_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 470
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    if-eqz v0, :cond_11

    const/4 v0, 0x7

    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_11
    return-object p0
.end method

.method public static getSettingFromPath(Ljava/lang/String;)Lcom/gold/extension/shared/settings/Setting;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->PATH_TO_SETTINGS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/settings/Setting;

    return-object p0
.end method

.method public static importFromJSON(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 9

    .line 538
    const-string v0, "{\n"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 540
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 541
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :catch_1a
    move-exception p0

    goto/16 :goto_be

    :catch_1d
    move-exception p0

    goto/16 :goto_c7

    :catch_20
    move-exception p0

    goto/16 :goto_c7

    .line 544
    :cond_23
    :goto_23
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 547
    :cond_40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 552
    sget-object p1, Lcom/gold/extension/shared/settings/Setting;->SETTINGS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    move v3, v2

    :cond_4d
    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/extension/shared/settings/Setting;

    .line 553
    invoke-direct {v4}, Lcom/gold/extension/shared/settings/Setting;->getImportExportKey()Ljava/lang/String;

    move-result-object v5

    .line 554
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 555
    invoke-virtual {v4, v0, v5}, Lcom/gold/extension/shared/settings/Setting;->readFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 556
    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/Setting;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 557
    iget-boolean v6, v4, Lcom/gold/extension/shared/settings/Setting;->rebootApp:Z

    or-int/2addr v3, v6

    .line 559
    invoke-virtual {v4, v5}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 562
    :cond_7a
    iget-boolean v5, v4, Lcom/gold/extension/shared/settings/Setting;->includeWithImportExport:Z

    if-eqz v5, :cond_4d

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/Setting;->isSetToDefault()Z

    move-result v5

    if-nez v5, :cond_4d

    .line 563
    new-instance v5, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/shared/settings/Setting;)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 564
    iget-boolean v5, v4, Lcom/gold/extension/shared/settings/Setting;->rebootApp:Z

    or-int/2addr v3, v5

    .line 565
    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/Setting;->resetToDefault()Ljava/lang/Object;

    goto :goto_4d

    .line 569
    :cond_93
    sget-object p1, Lcom/gold/extension/shared/settings/Setting;->importExportCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_99
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;

    .line 570
    invoke-interface {v0, p0}, Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;->settingsImported(Landroid/app/Activity;)V

    goto :goto_99

    .line 574
    :cond_a9
    const-string p0, "youtube_settings_import_reset"

    .line 576
    sget-object p1, Lcom/gold/extension/shared/ResourceType;->STRING:Lcom/gold/extension/shared/ResourceType;

    invoke-static {p1, p0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_bd

    .line 578
    new-instance p1, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda5;

    invoke-direct {p1, v2, p0}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;)V

    const-wide/16 v4, 0x96

    invoke-static {p1, v4, v5}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_bd
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_bd} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_bd} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_bd} :catch_1a

    :cond_bd
    return v3

    .line 593
    :goto_be
    new-instance p1, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_ef

    .line 587
    :goto_c7
    sget-object p1, Lcom/gold/extension/shared/ResourceType;->STRING:Lcom/gold/extension/shared/ResourceType;

    const-string v0, "youtube_settings_import_failure_parse"

    invoke-static {p1, v0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_d6

    .line 588
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d8

    .line 589
    :cond_d6
    const-string p1, "Import failed: %s"

    .line 590
    :goto_d8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 591
    new-instance p1, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_ef
    return v1
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error: Duplicate Setting key found: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$removeFromPreferences$7()Ljava/lang/String;
    .registers 3

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clearing stored preference value (reset to default): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static migrateFromOldPreferences(Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 5

    .line 319
    iget-object v0, p1, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 324
    :cond_b
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/Setting;->get()Ljava/lang/Object;

    move-result-object v1

    .line 326
    instance-of v2, p1, Lcom/gold/extension/shared/settings/BooleanSetting;

    if-eqz v2, :cond_23

    .line 327
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_52

    .line 328
    :cond_23
    instance-of v2, p1, Lcom/gold/extension/shared/settings/IntegerSetting;

    if-eqz v2, :cond_2f

    .line 329
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getIntegerString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_52

    .line 330
    :cond_2f
    instance-of v2, p1, Lcom/gold/extension/shared/settings/LongSetting;

    if-eqz v2, :cond_3b

    .line 331
    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v0, v2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getLongString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    goto :goto_52

    .line 332
    :cond_3b
    instance-of v2, p1, Lcom/gold/extension/shared/settings/FloatSetting;

    if-eqz v2, :cond_47

    .line 333
    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v0, v2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getFloatString(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    goto :goto_52

    .line 334
    :cond_47
    instance-of v2, p1, Lcom/gold/extension/shared/settings/StringSetting;

    if-eqz v2, :cond_7a

    .line 335
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    :goto_52
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 344
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 345
    new-instance p0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 349
    :cond_6e
    new-instance p0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 350
    invoke-virtual {p1, v2}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    return-void

    .line 337
    :cond_7a
    new-instance v1, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/Setting;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 339
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gold/extension/shared/settings/Setting<",
            "TT;>;",
            "Lcom/gold/extension/shared/settings/Setting<",
            "TT;>;)V"
        }
    .end annotation

    if-eq p0, p1, :cond_19

    .line 307
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->isSetToDefault()Z

    move-result v0

    if-nez v0, :cond_18

    .line 308
    new-instance v0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 309
    iget-object v0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->resetToDefault()Ljava/lang/Object;

    :cond_18
    return-void

    .line 305
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;
    .registers 2

    .line 60
    new-instance v0, Lcom/gold/extension/shared/settings/Setting$1;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/Setting$1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    return-object v0
.end method

.method public static parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;
    .registers 2

    .line 77
    new-instance v0, Lcom/gold/extension/shared/settings/Setting$2;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/Setting$2;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    return-object v0
.end method

.method public static varargs parentsAll([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;
    .registers 2

    .line 94
    new-instance v0, Lcom/gold/extension/shared/settings/Setting$3;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/Setting$3;-><init>([Lcom/gold/extension/shared/settings/BooleanSetting;)V

    return-object v0
.end method

.method public static varargs parentsAll([Lcom/gold/extension/shared/settings/Setting$Availability;)Lcom/gold/extension/shared/settings/Setting$Availability;
    .registers 2

    .line 134
    new-instance v0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda10;-><init>([Lcom/gold/extension/shared/settings/Setting$Availability;)V

    return-object v0
.end method

.method public static varargs parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;
    .registers 2

    .line 114
    new-instance v0, Lcom/gold/extension/shared/settings/Setting$4;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/Setting$4;-><init>([Lcom/gold/extension/shared/settings/BooleanSetting;)V

    return-object v0
.end method

.method public static privateSetValueFromString(Lcom/gold/extension/shared/settings/Setting;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 361
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/Setting;->setValueFromString(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->isSetToDefault()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 367
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->removeFromPreferences()V

    :cond_c
    return-void
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getParentSettings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation

    .line 438
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->availability:Lcom/gold/extension/shared/settings/Setting$Availability;

    if-nez p0, :cond_7

    .line 439
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 440
    :cond_7
    invoke-interface {p0}, Lcom/gold/extension/shared/settings/Setting$Availability;->getParentSettings()Ljava/util/List;

    move-result-object p0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isAvailable()Z
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->availability:Lcom/gold/extension/shared/settings/Setting$Availability;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/gold/extension/shared/settings/Setting$Availability;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public isSetToDefault()Z
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract load()V
.end method

.method public abstract readFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
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
.end method

.method public final removeFromPreferences()V
    .registers 2

    .line 408
    new-instance v0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda11;-><init>(Lcom/gold/extension/shared/settings/Setting;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 409
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public resetToDefault()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 422
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final save(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 390
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 393
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->removeFromPreferences()V

    return-void

    .line 395
    :cond_1a
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->saveToPreferences()V

    return-void
.end method

.method public abstract saveToPreferences()V
.end method

.method public abstract setValueFromString(Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToJSON(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 489
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->value:Ljava/lang/Object;

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
