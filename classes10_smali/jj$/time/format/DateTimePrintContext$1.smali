.class Ljj$/time/format/DateTimePrintContext$1;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"

# interfaces
.implements Ljj$/time/temporal/TemporalAccessor;


# instance fields
.field final synthetic val$effectiveChrono:Ljj$/time/chrono/Chronology;

.field final synthetic val$effectiveDate:Ljj$/time/chrono/ChronoLocalDate;

.field final synthetic val$effectiveZone:Ljj$/time/ZoneId;

.field final synthetic val$temporal:Ljj$/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V
    .registers 5

    iput-object p1, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljj$/time/chrono/ChronoLocalDate;

    iput-object p2, p0, Ljj$/time/format/DateTimePrintContext$1;->val$temporal:Ljj$/time/temporal/TemporalAccessor;

    iput-object p3, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljj$/time/chrono/Chronology;

    iput-object p4, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljj$/time/ZoneId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljj$/time/temporal/TemporalField;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 4

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :cond_11
    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$temporal:Ljj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 3

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljj$/time/chrono/ChronoLocalDate;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    :cond_11
    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$temporal:Ljj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljj$/time/chrono/Chronology;

    return-object v0

    :cond_9
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljj$/time/ZoneId;

    return-object v0

    :cond_12
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$temporal:Ljj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1f
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljj$/time/chrono/ChronoLocalDate;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$temporal:Ljj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljj$/time/temporal/TemporalAccessor;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext$1;->val$temporal:Ljj$/time/temporal/TemporalAccessor;

    iget-object v1, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljj$/time/chrono/Chronology;

    const-string v2, ""

    if-eqz v1, :cond_1e

    iget-object v1, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljj$/time/chrono/Chronology;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " with chronology "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v2

    :goto_1f
    iget-object v3, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljj$/time/ZoneId;

    if-eqz v3, :cond_38

    iget-object v2, p0, Ljj$/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljj$/time/ZoneId;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " with zone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
