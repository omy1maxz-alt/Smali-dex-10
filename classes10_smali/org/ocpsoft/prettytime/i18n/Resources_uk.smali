.class public Lorg/ocpsoft/prettytime/i18n/Resources_uk;
.super Ljava/util/ListResourceBundle;
.source "Resources_uk.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;

.field private static final slavicPluralForms:I = 0x3

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

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk;->OBJECTS:[[Ljava/lang/Object;

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

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 6

    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$1;

    invoke-direct {v0, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_uk;)V

    return-object v0

    :cond_a
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Century;

    if-eqz v0, :cond_1c

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "столітть"

    const-string v2, "століття"

    filled-new-array {v2, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_1c
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_30

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "дні"

    const-string v2, "днів"

    const-string v3, "день"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_30
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v0, :cond_42

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "десятиліть"

    const-string v2, "десятиліття"

    filled-new-array {v2, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_42
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_56

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "години"

    const-string v2, "годин"

    const-string v3, "годину"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_56
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v0, :cond_68

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "тисячоліть"

    const-string v2, "тисячоліття"

    filled-new-array {v2, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_68
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    if-eqz v0, :cond_7c

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "мілісекунди"

    const-string v2, "мілісекунд"

    const-string v3, "мілісекунду"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_7c
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    if-eqz v0, :cond_90

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "хвилини"

    const-string v2, "хвилин"

    const-string v3, "хвилину"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_90
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_a4

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "місяці"

    const-string v2, "місяців"

    const-string v3, "місяць"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_a4
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Second;

    if-eqz v0, :cond_b8

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "секунди"

    const-string v2, "секунд"

    const-string v3, "секунду"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_b8
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_cc

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "тижні"

    const-string v2, "тижнів"

    const-string v3, "тиждень"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_cc
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz v0, :cond_e0

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v1, "роки"

    const-string v2, "років"

    const-string v3, "рік"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_e0
    const/4 v0, 0x0

    return-object v0
.end method
