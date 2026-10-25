.class public final synthetic Ljj$/time/LocalDateTime$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/time/temporal/TemporalQuery;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljj$/time/LocalDateTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method
