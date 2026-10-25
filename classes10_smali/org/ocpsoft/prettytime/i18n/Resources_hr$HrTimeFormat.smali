.class Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;
.super Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
.source "Resources_hr.java"


# instance fields
.field private final futureNames:Ljava/util/List;

.field private final pastNames:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/Collection;)V
    .registers 7

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->futureNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->pastNames:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FuturePrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setFuturePrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FutureSuffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setFutureSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PastPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setPastPrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PastSuffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setPastSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SingularName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PluralName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    :try_start_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FuturePluralName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e1} :catch_e2

    goto :goto_e3

    :catch_e2
    move-exception v0

    :goto_e3
    :try_start_e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FutureSingularName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setFutureSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_fd} :catch_fe

    goto :goto_ff

    :catch_fe
    move-exception v0

    :goto_ff
    :try_start_ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PastPluralName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_119} :catch_11a

    goto :goto_11b

    :catch_11a
    move-exception v0

    :goto_11b
    :try_start_11b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PastSingularName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->setPastSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_135} :catch_136

    goto :goto_137

    :catch_136
    move-exception v0

    :goto_137
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_159

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->isFuture()Z

    move-result v2

    if-eqz v2, :cond_153

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->futureNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_158

    :cond_153
    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->pastNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_158
    goto :goto_13b

    :cond_159
    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->futureNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->pastNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private getGramaticallyCorrectName(JLjava/util/List;)Ljava/lang/String;
    .registers 8

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->getThreshold()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1d

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    goto :goto_4

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid resource bundle configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getGramaticallyCorrectName(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->futureNames:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->getGramaticallyCorrectName(JLjava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_15
    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->pastNames:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;->getGramaticallyCorrectName(JLjava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
