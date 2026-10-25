.class public final synthetic Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->lambda$compatParseMap$0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
