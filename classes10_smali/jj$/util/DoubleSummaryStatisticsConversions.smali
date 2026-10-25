.class public Ljj$/util/DoubleSummaryStatisticsConversions;
.super Ljava/lang/Object;
.source "DoubleSummaryStatisticsConversions.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljj$/util/DoubleSummaryStatistics;)Ljava/util/DoubleSummaryStatistics;
    .registers 2

    new-instance p0, Ljava/lang/Error;

    const-string v0, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Ljava/util/DoubleSummaryStatistics;)Ljj$/util/DoubleSummaryStatistics;
    .registers 2

    new-instance p0, Ljava/lang/Error;

    const-string v0, "Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
