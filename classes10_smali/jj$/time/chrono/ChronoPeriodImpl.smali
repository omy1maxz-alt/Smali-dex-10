.class final Ljj$/time/chrono/ChronoPeriodImpl;
.super Ljava/lang/Object;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Ljj$/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final SUPPORTED_UNITS:Ljava/util/List;

.field private static final serialVersionUID:J = 0xd5c8c11b1L


# instance fields
.field private final chrono:Ljj$/time/chrono/Chronology;

.field final days:I

.field final months:I

.field final years:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-static {v0, v1, v2}, Ljj$/time/Period$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljj$/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljj$/time/chrono/Chronology;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "chrono"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    iput p2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    iput p3, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    iput p4, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    return-void
.end method

.method private monthRange()J
    .registers 6

    iget-object v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljj$/time/chrono/Chronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->isIntValue()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    return-wide v1

    :cond_21
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/ChronoPeriodImpl;
    .registers 6

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/chrono/Chronology$-CC;->of(Ljava/lang/String;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    new-instance v4, Ljj$/time/chrono/ChronoPeriodImpl;

    invoke-direct {v4, v0, v1, v2, v3}, Ljj$/time/chrono/ChronoPeriodImpl;-><init>(Ljj$/time/chrono/Chronology;III)V

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateAmount(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoPeriodImpl;
    .registers 8

    const-string v0, "amount"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Ljj$/time/chrono/ChronoPeriodImpl;

    if-eqz v0, :cond_4a

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    invoke-virtual {v0}, Ljj$/time/chrono/ChronoPeriodImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-object v0

    :cond_19
    new-instance v1, Ljava/lang/ClassCastException;

    iget-object v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    invoke-interface {v2}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljj$/time/chrono/ChronoPeriodImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chronology mismatch, expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4a
    new-instance v0, Ljj$/time/DateTimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoPeriod from TemporalAmount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateChrono(Ljj$/time/temporal/TemporalAccessor;)V
    .registers 8

    const-string v0, "temporal"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/Chronology;

    if-eqz v0, :cond_47

    iget-object v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    invoke-interface {v1, v0}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_47

    :cond_1a
    new-instance v1, Ljj$/time/DateTimeException;

    iget-object v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    invoke-interface {v2}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chronology mismatch, expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 8

    invoke-direct {p0, p1}, Ljj$/time/chrono/ChronoPeriodImpl;->validateChrono(Ljj$/time/temporal/TemporalAccessor;)V

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_15

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_45

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_45

    :cond_15
    invoke-direct {p0}, Ljj$/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2f

    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_45

    :cond_2f
    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_3c

    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_3c
    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_45
    :goto_45
    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_52

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_52
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/chrono/ChronoPeriodImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    move-object v1, p1

    check-cast v1, Ljj$/time/chrono/ChronoPeriodImpl;

    iget v3, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v1, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    if-ne v3, v4, :cond_29

    iget v3, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    iget v4, v1, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v3, v4, :cond_29

    iget v3, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    iget v4, v1, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    if-ne v3, v4, :cond_29

    iget-object v3, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    iget-object v4, v1, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    invoke-interface {v3, v4}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    return v2
.end method

.method public get(Ljj$/time/temporal/TemporalUnit;)J
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_8

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    return-wide v0

    :cond_8
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_10

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v0, v0

    return-wide v0

    :cond_10
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_18

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    return-wide v0

    :cond_18
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    return-object v0
.end method

.method public getUnits()Ljava/util/List;
    .registers 2

    sget-object v0, Ljj$/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    invoke-interface {v1}, Ljj$/time/chrono/Chronology;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .registers 2

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    if-gez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isZero()Z
    .registers 2

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    if-nez v0, :cond_e

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_e

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoPeriod;
    .registers 9

    invoke-direct {p0, p1}, Ljj$/time/chrono/ChronoPeriodImpl;->validateAmount(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    new-instance v1, Ljj$/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    iget v3, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v3, v4}, Ljj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v3

    iget v4, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v4, v5}, Ljj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v4

    iget v5, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v5, v6}, Ljj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljj$/time/chrono/ChronoPeriodImpl;-><init>(Ljj$/time/chrono/Chronology;III)V

    return-object v1
.end method

.method public multipliedBy(I)Ljj$/time/chrono/ChronoPeriod;
    .registers 7

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    goto :goto_24

    :cond_a
    new-instance v0, Ljj$/time/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v2, p1}, Ljj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v2

    iget v3, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v3, p1}, Ljj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v3

    iget v4, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v4, p1}, Ljj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/time/chrono/ChronoPeriodImpl;-><init>(Ljj$/time/chrono/Chronology;III)V

    return-object v0

    :cond_24
    :goto_24
    return-object p0
.end method

.method public synthetic negated()Ljj$/time/chrono/ChronoPeriod;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoPeriod$-CC;->$default$negated(Ljj$/time/chrono/ChronoPeriod;)Ljj$/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Ljj$/time/chrono/ChronoPeriod;
    .registers 12

    invoke-direct {p0}, Ljj$/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_32

    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    div-long v4, v2, v0

    rem-long v6, v2, v0

    long-to-int v7, v6

    iget v6, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v8, v6

    cmp-long v6, v4, v8

    if-nez v6, :cond_24

    iget v6, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v7, v6, :cond_24

    return-object p0

    :cond_24
    new-instance v6, Ljj$/time/chrono/ChronoPeriodImpl;

    iget-object v8, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    invoke-static {v4, v5}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v9

    iget v10, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v6, v8, v9, v7, v10}, Ljj$/time/chrono/ChronoPeriodImpl;-><init>(Ljj$/time/chrono/Chronology;III)V

    return-object v6

    :cond_32
    return-object p0
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoPeriod;
    .registers 9

    invoke-direct {p0, p1}, Ljj$/time/chrono/ChronoPeriodImpl;->validateAmount(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    new-instance v1, Ljj$/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    iget v3, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v3, v4}, Ljj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v3

    iget v4, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v4, v5}, Ljj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v4

    iget v5, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v5, v6}, Ljj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljj$/time/chrono/ChronoPeriodImpl;-><init>(Ljj$/time/chrono/Chronology;III)V

    return-object v1
.end method

.method public subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 8

    invoke-direct {p0, p1}, Ljj$/time/chrono/ChronoPeriodImpl;->validateChrono(Ljj$/time/temporal/TemporalAccessor;)V

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_15

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_45

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_45

    :cond_15
    invoke-direct {p0}, Ljj$/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2f

    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_45

    :cond_2f
    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_3c

    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_3c
    iget v2, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_45
    :goto_45
    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_52

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_52
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoPeriodImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P0D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoPeriodImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Ljj$/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_4d

    iget v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4d
    iget v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_5c

    iget v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5c
    iget v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_6b

    iget v1, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->chrono:Ljj$/time/chrono/Chronology;

    invoke-interface {v0}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Ljj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/chrono/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Ljj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
