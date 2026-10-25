.class Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;
.super Ljava/lang/Object;
.source "Resources_pl.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;


# instance fields
.field final synthetic this$0:Lorg/ocpsoft/prettytime/i18n/Resources_pl;


# direct methods
.method constructor <init>(Lorg/ocpsoft/prettytime/i18n/Resources_pl;)V
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;->this$0:Lorg/ocpsoft/prettytime/i18n/Resources_pl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private performFormat(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "za chwilę"

    return-object v0

    :cond_9
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "przed chwilą"

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;->performFormat(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;->performFormat(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
