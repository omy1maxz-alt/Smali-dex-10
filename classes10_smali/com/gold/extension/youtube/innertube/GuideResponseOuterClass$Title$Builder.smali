.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TitleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TitleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 7018
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;
    .registers 2

    .line 7028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->-$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-object p0
.end method

.method public clearRuns()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;
    .registers 2

    .line 7077
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7078
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->-$$Nest$mclearRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$DataCase;
    .registers 1

    .line 7024
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getRuns()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;
    .registers 1

    .line 7046
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->getRuns()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    move-result-object p0

    return-object p0
.end method

.method public hasRuns()Z
    .registers 1

    .line 7039
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->hasRuns()Z

    move-result p0

    return p0
.end method

.method public mergeRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;
    .registers 3

    .line 7069
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->-$$Nest$mmergeRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V

    return-object p0
.end method

.method public setRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;
    .registers 3

    .line 7061
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->-$$Nest$msetRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V

    return-object p0
.end method

.method public setRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;
    .registers 3

    .line 7052
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7053
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->-$$Nest$msetRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V

    return-object p0
.end method
