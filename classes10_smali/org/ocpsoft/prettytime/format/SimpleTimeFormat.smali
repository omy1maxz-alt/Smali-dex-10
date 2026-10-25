.class public Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
.super Ljava/lang/Object;
.source "SimpleTimeFormat.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;
.implements Lorg/ocpsoft/prettytime/LocaleAware;


# static fields
.field private static final NEGATIVE:Ljava/lang/String; = "-"

.field private static final PATTERN_MULTIPLE_WHITESPACES:Ljava/util/regex/Pattern;

.field public static final QUANTITY:Ljava/lang/String; = "%n"

.field public static final SIGN:Ljava/lang/String; = "%s"

.field public static final UNIT:Ljava/lang/String; = "%u"


# instance fields
.field private futurePluralName:Ljava/lang/String;

.field private futurePrefix:Ljava/lang/String;

.field private futureSingularName:Ljava/lang/String;

.field private futureSuffix:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private pastPluralName:Ljava/lang/String;

.field private pastPrefix:Ljava/lang/String;

.field private pastSingularName:Ljava/lang/String;

.field private pastSuffix:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private pluralName:Ljava/lang/String;

.field private roundingTolerance:I

.field private singularName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\s{2,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->PATTERN_MULTIPLE_WHITESPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->singularName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSuffix:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSuffix:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->roundingTolerance:I

    return-void
.end method

.method private applyPattern(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0, p3, p4}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getPattern(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->locale:Ljava/util/Locale;

    const-string v2, "%d"

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->locale:Ljava/util/Locale;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_1f
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2b
    nop

    const-string v2, "%n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%u"

    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private format(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;
    .registers 8

    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getSign(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getGramaticallyCorrectName(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->applyPattern(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getPluralName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePluralName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePluralName:Ljava/lang/String;

    return-object v0

    :cond_15
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPluralName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPluralName:Ljava/lang/String;

    return-object v0

    :cond_2a
    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pluralName:Ljava/lang/String;

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

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    return-object v0

    :cond_15
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    return-object v0

    :cond_2a
    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->singularName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_25

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_25
    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3c
    sget-object v1, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->PATTERN_MULTIPLE_WHITESPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGramaticallyCorrectName(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getSingularName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->isPlural(Lorg/ocpsoft/prettytime/Duration;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getPluralName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method protected getPattern(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method protected getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J
    .registers 5

    if-eqz p2, :cond_9

    iget v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->roundingTolerance:I

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

.method protected isPlural(Lorg/ocpsoft/prettytime/Duration;Z)Z
    .registers 7

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_17

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v2, 0x1

    :goto_18
    return v2
.end method

.method public setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setFuturePrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setFutureSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    return-object p0
.end method

.method public setFutureSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setLocale(Ljava/util/Locale;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    move-result-object p1

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setPastPrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setPastSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    return-object p0
.end method

.method public setPastSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public setPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setRoundingTolerance(I)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    iput p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->roundingTolerance:I

    return-object p0
.end method

.method public setSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->singularName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleTimeFormat [pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", futurePrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", futureSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pastPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pastSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roundingTolerance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->roundingTolerance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
