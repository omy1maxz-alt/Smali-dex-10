.class public Lorg/ocpsoft/prettytime/i18n/Resources_be;
.super Ljava/util/ListResourceBundle;
.source "Resources_be.java"

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

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_be;->OBJECTS:[[Ljava/lang/Object;

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

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_be;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 6

    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$1;

    invoke-direct {v0, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_be$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_be;)V

    return-object v0

    :cond_a
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Century;

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "стагоддзі"

    const-string v2, "стагоддзяў"

    const-string v3, "стагоддзе"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_1e
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_32

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "дні"

    const-string v2, "дзён"

    const-string v3, "дзень"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_32
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v0, :cond_46

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "дзесяцігоддзі"

    const-string v2, "дзесяцігоддзяў"

    const-string v3, "дзесяцігоддзе"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_46
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_5a

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "гадзіны"

    const-string v2, "гадзін"

    const-string v3, "гадзіну"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_5a
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v0, :cond_6e

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "тысячагоддзі"

    const-string v2, "тысячагоддзяў"

    const-string v3, "тысячагоддзе"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_6e
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    if-eqz v0, :cond_82

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "мілісекунды"

    const-string v2, "мілісекунд"

    const-string v3, "мілісекунду"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_82
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    if-eqz v0, :cond_96

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "хвіліны"

    const-string v2, "хвілін"

    const-string v3, "хвіліну"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_96
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_aa

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "месяцы"

    const-string v2, "месяцаў"

    const-string v3, "месяц"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_aa
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Second;

    if-eqz v0, :cond_be

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "секунды"

    const-string v2, "секунд"

    const-string v3, "секунду"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_be
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_d2

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "тыдні"

    const-string v2, "тыдняў"

    const-string v3, "тыдзень"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_d2
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz v0, :cond_e6

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;

    const-string v1, "гады"

    const-string v2, "гадоў"

    const-string v3, "год"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_e6
    const/4 v0, 0x0

    return-object v0
.end method
