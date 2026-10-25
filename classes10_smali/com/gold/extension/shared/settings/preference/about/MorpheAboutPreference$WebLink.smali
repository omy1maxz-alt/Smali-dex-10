.class Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;
.super Ljava/lang/Object;
.source "MorpheAboutPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebLink"
.end annotation


# static fields
.field private static final webLinkNameReplacements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final name:Ljava/lang/String;

.field final preferred:Z

.field final subText:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink$1;

    invoke-direct {v0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink$1;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->webLinkNameReplacements:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 69
    const-string v0, "preferred"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "name"

    .line 70
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    .line 72
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p1, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->preferred:Z

    .line 82
    sget-object p1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->webLinkNameReplacements:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_19

    .line 83
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_19
    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->name:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->subText:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebLink{preferred="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->preferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', subText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->subText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
