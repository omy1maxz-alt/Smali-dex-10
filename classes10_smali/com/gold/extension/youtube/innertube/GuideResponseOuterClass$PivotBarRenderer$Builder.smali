.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3590
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllItems(Ljava/lang/Iterable;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;",
            ">;)",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;"
        }
    .end annotation

    .line 3675
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3676
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$maddAllItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addItems(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 4

    .line 3665
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3666
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    .line 3667
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    .line 3666
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$maddItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-object p0
.end method

.method public addItems(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 4

    .line 3647
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3648
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$maddItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-object p0
.end method

.method public addItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 3

    .line 3656
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3657
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$maddItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-object p0
.end method

.method public addItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 3

    .line 3638
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$maddItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-object p0
.end method

.method public clearItems()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 2

    .line 3683
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3684
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$mclearItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V

    return-object p0
.end method

.method public getItems(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 2

    .line 3613
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->getItems(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    move-result-object p0

    return-object p0
.end method

.method public getItemsCount()I
    .registers 1

    .line 3607
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->getItemsCount()I

    move-result p0

    return p0
.end method

.method public getItemsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;",
            ">;"
        }
    .end annotation

    .line 3599
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    .line 3600
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->getItemsList()Ljava/util/List;

    move-result-object p0

    .line 3599
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeItems(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 3

    .line 3691
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3692
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$mremoveItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;I)V

    return-object p0
.end method

.method public setItems(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 4

    .line 3629
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3630
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    .line 3631
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    .line 3630
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$msetItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-object p0
.end method

.method public setItems(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;
    .registers 4

    .line 3620
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3621
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->-$$Nest$msetItems(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-object p0
.end method
