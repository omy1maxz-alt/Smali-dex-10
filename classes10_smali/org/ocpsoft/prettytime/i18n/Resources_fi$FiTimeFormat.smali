.class Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;
.super Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
.source "Resources_fi.java"


# instance fields
.field private final bundle:Ljava/util/ResourceBundle;

.field private futureName:Ljava/lang/String;

.field private futurePluralName:Ljava/lang/String;

.field private pastName:Ljava/lang/String;

.field private pastPluralName:Ljava/lang/String;

.field private pluralPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ResourceBundle;Lorg/ocpsoft/prettytime/TimeUnit;)V
    .registers 10

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->pastName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->futureName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->pastPluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->futurePluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->pluralPattern:Ljava/lang/String;

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PastSingularName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f5

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setPastName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FutureSingularName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setFutureName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Pattern"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setPluralPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PastPluralName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    :cond_10b
    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FuturePluralName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_148

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    :cond_148
    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PluralPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_185

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setPluralPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    :cond_185
    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PastSuffix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->setPastSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->bundle:Ljava/util/ResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getUnitName(Lorg/ocpsoft/prettytime/TimeUnit;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FutureSuffix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->setFutureSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->setFuturePrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->setPastPrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->setSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->setPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    :cond_1f5
    return-void
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
    .registers 8

    const-string v0, ""

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v1

    instance-of v1, v1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v1, :cond_1c

    const/16 v1, 0x32

    invoke-interface {p1, v1}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1c

    move-object v0, p2

    goto :goto_20

    :cond_1c
    invoke-super {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0
.end method

.method public getFutureName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->futureName:Ljava/lang/String;

    return-object v0
.end method

.method public getFuturePluralName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->futurePluralName:Ljava/lang/String;

    return-object v0
.end method

.method protected getGramaticallyCorrectName(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;
    .registers 8

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getPastName()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getFutureName()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_3b

    :cond_2b
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getPastPluralName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    :cond_36
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getFuturePluralName()Ljava/lang/String;

    move-result-object v1

    :goto_3a
    move-object v0, v1

    :cond_3b
    return-object v0
.end method

.method public getPastName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->pastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPastPluralName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->pastPluralName:Ljava/lang/String;

    return-object v0
.end method

.method protected getPattern(J)Ljava/lang/String;
    .registers 7

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->getPluralPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluralPattern()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->pluralPattern:Ljava/lang/String;

    return-object v0
.end method

.method public setFutureName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->futureName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    move-result-object p1

    return-object p1
.end method

.method public setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->futurePluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setPastName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->pastName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    move-result-object p1

    return-object p1
.end method

.method public setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->pastPluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setPluralPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;->pluralPattern:Ljava/lang/String;

    return-object p0
.end method
