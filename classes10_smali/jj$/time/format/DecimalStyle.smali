.class public final Ljj$/time/format/DecimalStyle;
.super Ljava/lang/Object;
.source "DecimalStyle.java"


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;

.field public static final STANDARD:Ljj$/time/format/DecimalStyle;


# instance fields
.field private final decimalSeparator:C

.field private final negativeSign:C

.field private final positiveSign:C

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljj$/time/format/DecimalStyle;

    const/16 v1, 0x2d

    const/16 v2, 0x2e

    const/16 v3, 0x30

    const/16 v4, 0x2b

    invoke-direct {v0, v3, v4, v1, v2}, Ljj$/time/format/DecimalStyle;-><init>(CCCC)V

    sput-object v0, Ljj$/time/format/DecimalStyle;->STANDARD:Ljj$/time/format/DecimalStyle;

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000  # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljj$/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(CCCC)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    iput-char p2, p0, Ljj$/time/format/DecimalStyle;->positiveSign:C

    iput-char p3, p0, Ljj$/time/format/DecimalStyle;->negativeSign:C

    iput-char p4, p0, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    return-void
.end method

.method private static create(Ljava/util/Locale;)Ljj$/time/format/DecimalStyle;
    .registers 7

    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    const/16 v2, 0x2b

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    const/16 v5, 0x30

    if-ne v1, v5, :cond_21

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_21

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_21

    sget-object v5, Ljj$/time/format/DecimalStyle;->STANDARD:Ljj$/time/format/DecimalStyle;

    return-object v5

    :cond_21
    new-instance v5, Ljj$/time/format/DecimalStyle;

    invoke-direct {v5, v1, v2, v3, v4}, Ljj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v5
.end method

.method public static getAvailableLocales()Ljava/util/Set;
    .registers 3

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static of(Ljava/util/Locale;)Ljj$/time/format/DecimalStyle;
    .registers 3

    const-string v0, "locale"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/format/DecimalStyle;

    if-nez v0, :cond_21

    invoke-static {p0}, Ljj$/time/format/DecimalStyle;->create(Ljava/util/Locale;)Ljj$/time/format/DecimalStyle;

    move-result-object v0

    sget-object v1, Ljj$/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljj$/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljj$/time/format/DecimalStyle;

    :cond_21
    return-object v0
.end method

.method public static ofDefaultLocale()Ljj$/time/format/DecimalStyle;
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljj$/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    const/16 v1, 0x30

    if-ne v0, v1, :cond_7

    return-object p1

    :cond_7
    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_1b

    aget-char v3, v1, v2

    add-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method convertToDigit(C)I
    .registers 4

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    sub-int v0, p1, v0

    if-ltz v0, :cond_c

    const/16 v1, 0x9

    if-gt v0, v1, :cond_c

    move v1, v0

    goto :goto_d

    :cond_c
    const/4 v1, -0x1

    :goto_d
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/format/DecimalStyle;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    move-object v1, p1

    check-cast v1, Ljj$/time/format/DecimalStyle;

    iget-char v3, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v4, v1, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    if-ne v3, v4, :cond_25

    iget-char v3, p0, Ljj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v4, v1, Ljj$/time/format/DecimalStyle;->positiveSign:C

    if-ne v3, v4, :cond_25

    iget-char v3, p0, Ljj$/time/format/DecimalStyle;->negativeSign:C

    iget-char v4, v1, Ljj$/time/format/DecimalStyle;->negativeSign:C

    if-ne v3, v4, :cond_25

    iget-char v3, p0, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    iget-char v4, v1, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    if-ne v3, v4, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    return v2
.end method

.method public getDecimalSeparator()C
    .registers 2

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    return v0
.end method

.method public getNegativeSign()C
    .registers 2

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->negativeSign:C

    return v0
.end method

.method public getPositiveSign()C
    .registers 2

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->positiveSign:C

    return v0
.end method

.method public getZeroDigit()C
    .registers 2

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v1, p0, Ljj$/time/format/DecimalStyle;->positiveSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Ljj$/time/format/DecimalStyle;->negativeSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v1, p0, Ljj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v2, p0, Ljj$/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DecimalStyle["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDecimalSeparator(C)Ljj$/time/format/DecimalStyle;
    .registers 6

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljj$/time/format/DecimalStyle;

    iget-char v1, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Ljj$/time/format/DecimalStyle;->negativeSign:C

    invoke-direct {v0, v1, v2, v3, p1}, Ljj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public withNegativeSign(C)Ljj$/time/format/DecimalStyle;
    .registers 6

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->negativeSign:C

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljj$/time/format/DecimalStyle;

    iget-char v1, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, v2, p1, v3}, Ljj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public withPositiveSign(C)Ljj$/time/format/DecimalStyle;
    .registers 6

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->positiveSign:C

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljj$/time/format/DecimalStyle;

    iget-char v1, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljj$/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, p1, v2, v3}, Ljj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public withZeroDigit(C)Ljj$/time/format/DecimalStyle;
    .registers 6

    iget-char v0, p0, Ljj$/time/format/DecimalStyle;->zeroDigit:C

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljj$/time/format/DecimalStyle;

    iget-char v1, p0, Ljj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v2, p0, Ljj$/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Ljj$/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, p1, v1, v2, v3}, Ljj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method
