.class Ljj$/time/chrono/Chronology$1;
.super Ljava/lang/Object;
.source "Chronology.java"

# interfaces
.implements Ljj$/time/temporal/TemporalAccessor;


# instance fields
.field final synthetic this$0:Ljj$/time/chrono/Chronology;


# direct methods
.method constructor <init>(Ljj$/time/chrono/Chronology;)V
    .registers 2

    iput-object p1, p0, Ljj$/time/chrono/Chronology$1;->this$0:Ljj$/time/chrono/Chronology;

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
    .registers 5

    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Ljj$/time/chrono/Chronology$1;->this$0:Ljj$/time/chrono/Chronology;

    return-object v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$query(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method
