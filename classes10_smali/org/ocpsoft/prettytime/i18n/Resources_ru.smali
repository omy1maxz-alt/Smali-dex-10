.class public Lorg/ocpsoft/prettytime/i18n/Resources_ru;
.super Ljava/util/ListResourceBundle;
.source "Resources_ru.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;

.field private static final russianPluralForms:I = 0x4

.field private static final tolerance:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru;->OBJECTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .registers 2

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 7

    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$1;

    invoke-direct {v0, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;)V

    return-object v0

    :cond_a
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Century;

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "века"

    const-string v2, "веков"

    const-string v3, "век"

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_1e
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_32

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "дня"

    const-string v2, "дней"

    const-string v3, "день"

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_32
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v0, :cond_46

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "десятилетия"

    const-string v2, "десятилетий"

    const-string v3, "десятилетие"

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_46
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_5a

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "часа"

    const-string v2, "часов"

    const-string v3, "час"

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_5a
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v0, :cond_6e

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "тысячелетия"

    const-string v2, "тысячелетий"

    const-string v3, "тысячелетие"

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_6e
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    if-eqz v0, :cond_84

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "миллисекунды"

    const-string v2, "миллисекунд"

    const-string v3, "миллисекунда"

    const-string v4, "миллисекунду"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_84
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    if-eqz v0, :cond_9a

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "минуты"

    const-string v2, "минут"

    const-string v3, "минута"

    const-string v4, "минуту"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_9a
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_ae

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "месяца"

    const-string v2, "месяцев"

    const-string v3, "месяц"

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_ae
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Second;

    if-eqz v0, :cond_c4

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "секунды"

    const-string v2, "секунд"

    const-string v3, "секунда"

    const-string v4, "секунду"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_c4
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_da

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "недели"

    const-string v2, "недель"

    const-string v3, "неделя"

    const-string v4, "неделю"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_da
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz v0, :cond_ee

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;

    const-string v1, "года"

    const-string v2, "лет"

    const-string v3, "год"

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V

    return-object v0

    :cond_ee
    const/4 v0, 0x0

    return-object v0
.end method
