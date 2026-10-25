.class public final synthetic Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/time/temporal/TemporalAdjuster;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p1}, Ljj$/time/temporal/TemporalAdjusters;->lambda$firstDayOfYear$4(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
