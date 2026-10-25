.class public Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
.super Ljava/lang/Object;
.source "DateWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final instant:Ljj$/time/Instant;

.field private final isApproximation:Z


# direct methods
.method public constructor <init>(Ljj$/time/Instant;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/Instant;Z)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/Instant;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->instant:Ljj$/time/Instant;

    iput-boolean p2, p0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->isApproximation:Z

    return-void
.end method

.method public constructor <init>(Ljj$/time/LocalDateTime;Z)V
    .registers 4

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/Instant;Z)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/OffsetDateTime;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/OffsetDateTime;Z)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/OffsetDateTime;Z)V
    .registers 4

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/Instant;Z)V

    return-void
.end method

.method public static fromInstant(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 5

    if-eqz p0, :cond_2c

    :try_start_2
    new-instance v0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    invoke-static {p0}, Ljj$/time/Instant;->parse(Ljava/lang/CharSequence;)Ljj$/time/Instant;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/Instant;)V
    :try_end_b
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_2d

    :catch_c
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return-object v0
.end method

.method public static fromOffsetDateTime(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 5

    if-eqz p0, :cond_2c

    :try_start_2
    new-instance v0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    invoke-static {p0}, Ljj$/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljj$/time/OffsetDateTime;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/OffsetDateTime;)V
    :try_end_b
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_2d

    :catch_c
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return-object v0
.end method


# virtual methods
.method public getInstant()Ljj$/time/Instant;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->instant:Ljj$/time/Instant;

    return-object v0
.end method

.method public getLocalDateTime()Ljj$/time/LocalDateTime;
    .registers 2

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->getLocalDateTime(Ljj$/time/ZoneId;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDateTime(Ljj$/time/ZoneId;)Ljj$/time/LocalDateTime;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->instant:Ljj$/time/Instant;

    invoke-static {v0, p1}, Ljj$/time/LocalDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public isApproximation()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->isApproximation:Z

    return v0
.end method

.method public offsetDateTime()Ljj$/time/OffsetDateTime;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->instant:Ljj$/time/Instant;

    sget-object v1, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/Instant;->atOffset(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->instant:Ljj$/time/Instant;

    iget-boolean v1, p0, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;->isApproximation:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DateWrapper{instant="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isApproximation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
