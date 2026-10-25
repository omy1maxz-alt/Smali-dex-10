.class public Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;
.super Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
.source "ResourcesTimeFormat.java"


# instance fields
.field private override:Lorg/ocpsoft/prettytime/TimeFormat;

.field private overrideResourceBundle:Ljava/lang/String;

.field private final unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;


# direct methods
.method public constructor <init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V
    .registers 2

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;-><init>()V

    iput-object p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    return-void
.end method

.method public constructor <init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;-><init>()V

    iput-object p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    iput-object p2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->overrideResourceBundle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    invoke-interface {v0, p1, p2}, Lorg/ocpsoft/prettytime/TimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    invoke-interface {v0, p1, p2}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public bridge synthetic setLocale(Ljava/util/Locale;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    move-result-object p1

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->overrideResourceBundle:Ljava/lang/String;

    if-eqz v1, :cond_e

    :try_start_5
    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->overrideResourceBundle:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_d

    move-object v0, v1

    goto :goto_e

    :catch_d
    move-exception v1

    :cond_e
    :goto_e
    if-nez v0, :cond_1a

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceBundleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    :cond_1a
    instance-of v1, v0, Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;

    if-eqz v1, :cond_2c

    move-object v1, v0

    check-cast v1, Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-interface {v1, v2}, Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;->getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v1

    if-eqz v1, :cond_2b

    iput-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    :cond_2b
    goto :goto_2f

    :cond_2c
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    :goto_2f
    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez v1, :cond_19b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Pattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FuturePrefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setFuturePrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FutureSuffix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setFutureSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PastPrefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPastPrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PastSuffix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPastSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SingularName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PluralName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    :try_start_113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FuturePluralName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_133} :catch_134

    goto :goto_135

    :catch_134
    move-exception v1

    :goto_135
    :try_start_135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FutureSingularName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setFutureSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_155} :catch_156

    goto :goto_157

    :catch_156
    move-exception v1

    :goto_157
    :try_start_157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PastPluralName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_177} :catch_178

    goto :goto_179

    :catch_178
    move-exception v1

    :goto_179
    :try_start_179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PastSingularName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPastSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_199} :catch_19a

    goto :goto_19b

    :catch_19a
    move-exception v1

    :cond_19b
    :goto_19b
    return-object p0
.end method
