.class Ljj$/time/temporal/TemporalQueries$6;
.super Ljava/lang/Object;
.source "TemporalQueries.java"

# interfaces
.implements Ljj$/time/temporal/TemporalQuery;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/temporal/TemporalQueries$6;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;
    .registers 4

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "LocalDate"

    return-object v0
.end method
