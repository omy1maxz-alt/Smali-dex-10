.class public final synthetic Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/time/temporal/TemporalAdjuster;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 4

    iget v0, p0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1}, Ljj$/time/temporal/TemporalAdjusters;->lambda$dayOfWeekInMonth$7(IILjj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
