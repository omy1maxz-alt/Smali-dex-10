.class Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
.super Ljava/lang/Object;
.source "Resources_ja.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;


# static fields
.field private static final NEGATIVE:Ljava/lang/String; = "-"

.field public static final QUANTITY:Ljava/lang/String; = "%n"

.field public static final SIGN:Ljava/lang/String; = "%s"

.field public static final UNIT:Ljava/lang/String; = "%u"


# instance fields
.field private futurePluralName:Ljava/lang/String;

.field private futurePrefix:Ljava/lang/String;

.field private futureSingularName:Ljava/lang/String;

.field private futureSuffix:Ljava/lang/String;

.field private pastPluralName:Ljava/lang/String;

.field private pastPrefix:Ljava/lang/String;

.field private pastSingularName:Ljava/lang/String;

.field private pastSuffix:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private pluralName:Ljava/lang/String;

.field private roundingTolerance:I

.field private singularName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ResourceBundle;Lorg/ocpsoft/prettytime/TimeUnit;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->singularName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSingularName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futurePluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSingularName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastPluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futurePrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSuffix:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastPrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSuffix:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->roundingTolerance:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FuturePrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setFuturePrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FutureSuffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setFutureSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PastPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setPastPrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PastSuffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setPastSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SingularName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PluralName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    :try_start_f1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FuturePluralName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_10f} :catch_110

    goto :goto_111

    :catch_110
    move-exception v0

    :goto_111
    :try_start_111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FutureSingularName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setFutureSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_12f} :catch_130

    goto :goto_131

    :catch_130
    move-exception v0

    :goto_131
    :try_start_131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PastPluralName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_14f} :catch_150

    goto :goto_151

    :catch_150
    move-exception v0

    :goto_151
    :try_start_151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PastSingularName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->setPastSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_16f} :catch_170

    goto :goto_171

    :catch_170
    move-exception v0

    :goto_171
    return-void
.end method

.method private applyPattern(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0, p3, p4}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getPattern(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%n"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%u"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private format(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;
    .registers 9

    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getSign(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getGramaticallyCorrectName(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide v2

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v4

    instance-of v4, v4, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v4, :cond_17

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    :cond_17
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v4

    instance-of v4, v4, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v4, :cond_22

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :cond_22
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->applyPattern(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getPluralName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futurePluralName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSingularName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futurePluralName:Ljava/lang/String;

    return-object v0

    :cond_15
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastPluralName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSingularName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastPluralName:Ljava/lang/String;

    return-object v0

    :cond_2a
    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pluralName:Ljava/lang/String;

    return-object v0
.end method

.method private getSign(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 6

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    const-string v0, "-"

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method private getSingularName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSingularName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSingularName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSingularName:Ljava/lang/String;

    return-object v0

    :cond_15
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSingularName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSingularName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSingularName:Ljava/lang/String;

    return-object v0

    :cond_2a
    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->singularName:Ljava/lang/String;

    return-object v0
.end method

.method private getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_1b
    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futurePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGramaticallyCorrectName(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;
    .registers 8

    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getSingularName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_24

    :cond_20
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->getPluralName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    :cond_24
    return-object v0
.end method

.method protected getPattern(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method protected getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J
    .registers 5

    if-eqz p2, :cond_9

    iget v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->roundingTolerance:I

    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide v0

    goto :goto_d

    :cond_9
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v0

    :goto_d
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futurePluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setFuturePrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futurePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setFutureSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSingularName:Ljava/lang/String;

    return-object p0
.end method

.method public setFutureSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastPluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setPastPrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setPastSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSingularName:Ljava/lang/String;

    return-object p0
.end method

.method public setPastSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public setPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->singularName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JaTimeFormat [pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", futurePrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futurePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", futureSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->futureSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pastPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pastSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->pastSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roundingTolerance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;->roundingTolerance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
