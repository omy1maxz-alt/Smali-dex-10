.class public Lorg/ocpsoft/prettytime/i18n/Resources_pl;
.super Ljava/util/ListResourceBundle;
.source "Resources_pl.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;

.field private static final polishPluralForms:I = 0x3

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

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl;->OBJECTS:[[Ljava/lang/Object;

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

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 6

    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;

    invoke-direct {v0, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_pl;)V

    return-object v0

    :cond_a
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Century;

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "wieki"

    const-string v2, "wieków"

    const-string v3, "wiek"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_1e
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_30

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "dzień"

    const-string v2, "dni"

    filled-new-array {v1, v2, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_30
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v0, :cond_44

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "dekady"

    const-string v2, "dekad"

    const-string v3, "dekadę"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_44
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_58

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "godziny"

    const-string v2, "godzin"

    const-string v3, "godzinę"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_58
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v0, :cond_6c

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "milenia"

    const-string v2, "mileniów"

    const-string v3, "milenium"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_6c
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    if-eqz v0, :cond_80

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "milisekundy"

    const-string v2, "milisekund"

    const-string v3, "milisekundę"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_80
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    if-eqz v0, :cond_94

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "minuty"

    const-string v2, "minut"

    const-string v3, "minutę"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_94
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_a8

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "miesiące"

    const-string v2, "miesięcy"

    const-string v3, "miesiąc"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_a8
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Second;

    if-eqz v0, :cond_bc

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "sekundy"

    const-string v2, "sekund"

    const-string v3, "sekundę"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_bc
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_d0

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "tygodnie"

    const-string v2, "tygodni"

    const-string v3, "tydzień"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_d0
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz v0, :cond_e4

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v1, "lata"

    const-string v2, "lat"

    const-string v3, "rok"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_e4
    const/4 v0, 0x0

    return-object v0
.end method
