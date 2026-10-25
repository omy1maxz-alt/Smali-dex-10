.class public final synthetic Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->lambda$getStringResultFromRegexArray$2(I)[Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method
