.class public final synthetic Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/time/temporal/TemporalAdjuster;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 3

    iget v0, p0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda2;->f$0:I

    invoke-static {v0, p1}, Ljj$/time/temporal/TemporalAdjusters;->lambda$previous$11(ILjj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
