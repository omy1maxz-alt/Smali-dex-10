.class final Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;
.super Lcom/android/tools/r8/RecordTag;
.source "LicensesDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "License"
.end annotation


# instance fields
.field private final licenseUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final noticeUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    if-eqz v0, :cond_26

    check-cast p1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->licenseUrls:Ljava/util/List;

    iget-object v1, p1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->licenseUrls:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->noticeUrls:Ljava/util/List;

    iget-object p1, p1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->noticeUrls:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->licenseUrls:Ljava/util/List;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->noticeUrls:Ljava/util/List;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public static bridge synthetic -$$Nest$fgetlicenseUrls(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->licenseUrls:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetname(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetnoticeUrls(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->noticeUrls:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 63
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 67
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "licenseUrls",
            "noticeUrls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->licenseUrls:Ljava/util/List;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->noticeUrls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->licenseUrls:Ljava/util/List;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->noticeUrls:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public licenseUrls()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->licenseUrls:Ljava/util/List;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->name:Ljava/lang/String;

    return-object p0
.end method

.method public noticeUrls()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->noticeUrls:Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 61
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v1, "name;licenseUrls;noticeUrls"

    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/StringRef$StringKeyLookup$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
