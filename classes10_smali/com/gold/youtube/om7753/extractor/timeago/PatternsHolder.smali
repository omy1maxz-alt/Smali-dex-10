.class public abstract Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.super Ljava/lang/Object;
.source "PatternsHolder.java"


# instance fields
.field private final days:Ljava/util/Collection;

.field private final hours:Ljava/util/Collection;

.field private final minutes:Ljava/util/Collection;

.field private final months:Ljava/util/Collection;

.field private final seconds:Ljava/util/Collection;

.field private final specialCases:Ljava/util/Map;

.field private final weeks:Ljava/util/Collection;

.field private final wordSeparator:Ljava/lang/String;

.field private final years:Ljava/util/Collection;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljj$/time/temporal/ChronoUnit;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->specialCases:Ljava/util/Map;

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->wordSeparator:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->seconds:Ljava/util/Collection;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->minutes:Ljava/util/Collection;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->hours:Ljava/util/Collection;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->days:Ljava/util/Collection;

    iput-object p6, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->weeks:Ljava/util/Collection;

    iput-object p7, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->months:Ljava/util/Collection;

    iput-object p8, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->years:Ljava/util/Collection;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 18

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic lambda$putSpecialCase$0(Ljj$/time/temporal/ChronoUnit;)Ljava/util/Map;
    .registers 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 4

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljj$/time/temporal/ChronoUnit;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->seconds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MINUTES:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->minutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->hours()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->days()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->weeks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->months()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->years()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public days()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->days:Ljava/util/Collection;

    return-object v0
.end method

.method public hours()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->hours:Ljava/util/Collection;

    return-object v0
.end method

.method public minutes()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->minutes:Ljava/util/Collection;

    return-object v0
.end method

.method public months()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->months:Ljava/util/Collection;

    return-object v0
.end method

.method protected putSpecialCase(Ljj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->specialCases:Ljava/util/Map;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public seconds()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->seconds:Ljava/util/Collection;

    return-object v0
.end method

.method public specialCases()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->specialCases:Ljava/util/Map;

    return-object v0
.end method

.method public weeks()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->weeks:Ljava/util/Collection;

    return-object v0
.end method

.method public wordSeparator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->wordSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public years()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->years:Ljava/util/Collection;

    return-object v0
.end method
