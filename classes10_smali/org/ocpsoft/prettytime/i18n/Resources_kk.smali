.class public Lorg/ocpsoft/prettytime/i18n/Resources_kk;
.super Ljava/util/ListResourceBundle;
.source "Resources_kk.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;


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

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk;->OBJECTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContents()[[Ljava/lang/Object;
    .registers 2

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 5

    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$1;

    invoke-direct {v0, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_kk;)V

    return-object v0

    :cond_a
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Century;

    if-eqz v0, :cond_1c

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "ғасыр"

    const-string v2, "ғасырдан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_1c
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_2e

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "күн"

    const-string v2, "күннен"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_2e
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v0, :cond_40

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "онжылдық"

    const-string v2, "онжылдықтан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_40
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_52

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "сағат"

    const-string v2, "сағаттан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_52
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v0, :cond_64

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "мыңжылдық"

    const-string v2, "мыңжылдықтан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_64
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    if-eqz v0, :cond_76

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "миллисекунд"

    const-string v2, "миллисекундтан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_76
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    if-eqz v0, :cond_88

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "минут"

    const-string v2, "минуттан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_88
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_9a

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "ай"

    const-string v2, "айдан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_9a
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Second;

    if-eqz v0, :cond_ac

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "секунд"

    const-string v2, "секундтан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_ac
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_be

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "апта"

    const-string v2, "аптадан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_be
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz v0, :cond_d0

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;

    const-string v1, "жыл"

    const-string v2, "жылдан"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_d0
    const/4 v0, 0x0

    return-object v0
.end method
