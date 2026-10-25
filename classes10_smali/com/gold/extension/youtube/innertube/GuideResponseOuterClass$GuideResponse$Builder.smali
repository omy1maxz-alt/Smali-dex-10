.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 565
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearItems()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse$Builder;
    .registers 2

    .line 611
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 612
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;->-$$Nest$mclearItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;)V

    return-object p0
.end method

.method public getItems()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 1

    .line 581
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;->getItems()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    move-result-object p0

    return-object p0
.end method

.method public hasItems()Z
    .registers 1

    .line 574
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;->hasItems()Z

    move-result p0

    return p0
.end method

.method public mergeItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse$Builder;
    .registers 3

    .line 604
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 605
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;->-$$Nest$mmergeItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)V

    return-object p0
.end method

.method public setItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse$Builder;
    .registers 3

    .line 596
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 597
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;->-$$Nest$msetItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)V

    return-object p0
.end method

.method public setItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse$Builder;
    .registers 3

    .line 587
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 588
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;->-$$Nest$msetItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$GuideResponse;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)V

    return-object p0
.end method
