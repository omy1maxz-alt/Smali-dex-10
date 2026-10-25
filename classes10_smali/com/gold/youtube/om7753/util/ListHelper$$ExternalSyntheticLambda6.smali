.class public final synthetic Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/ListHelper;->$r8$lambda$bF8NpN5YnAzIYU1DnD7GydeMcO8(Lcom/gold/youtube/om7753/extractor/stream/VideoStream;)I

    move-result p1

    return p1
.end method
