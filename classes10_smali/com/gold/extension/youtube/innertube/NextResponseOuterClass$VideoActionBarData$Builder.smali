.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 14480
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 4

    .line 14555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    .line 14557
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    .line 14556
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public addActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 4

    .line 14537
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14538
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public addActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 3

    .line 14546
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14547
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public addActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 3

    .line 14528
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14529
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public addAllActionButtons(Ljava/lang/Iterable;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;",
            ">;)",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;"
        }
    .end annotation

    .line 14565
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14566
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$maddAllActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public clearActionButtons()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 2

    .line 14573
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$mclearActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;)V

    return-object p0
.end method

.method public getActionButtons(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;
    .registers 2

    .line 14503
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->getActionButtons(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    move-result-object p0

    return-object p0
.end method

.method public getActionButtonsCount()I
    .registers 1

    .line 14497
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->getActionButtonsCount()I

    move-result p0

    return p0
.end method

.method public getActionButtonsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;",
            ">;"
        }
    .end annotation

    .line 14489
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    .line 14490
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->getActionButtonsList()Ljava/util/List;

    move-result-object p0

    .line 14489
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeActionButtons(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 3

    .line 14581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$mremoveActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;I)V

    return-object p0
.end method

.method public setActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 4

    .line 14519
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14520
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    .line 14521
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    .line 14520
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$msetActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public setActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;
    .registers 4

    .line 14510
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14511
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;->-$$Nest$msetActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method
