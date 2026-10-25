.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CommandsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CommandsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4488
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearShowSheetCommand()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;
    .registers 2

    .line 4534
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4535
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->-$$Nest$mclearShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;)V

    return-object p0
.end method

.method public getShowSheetCommand()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 1

    .line 4504
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->getShowSheetCommand()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    move-result-object p0

    return-object p0
.end method

.method public hasShowSheetCommand()Z
    .registers 1

    .line 4497
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->hasShowSheetCommand()Z

    move-result p0

    return p0
.end method

.method public mergeShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;
    .registers 3

    .line 4527
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4528
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->-$$Nest$mmergeShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V

    return-object p0
.end method

.method public setShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;
    .registers 3

    .line 4519
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4520
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->-$$Nest$msetShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V

    return-object p0
.end method

.method public setShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;
    .registers 3

    .line 4510
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4511
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->-$$Nest$msetShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V

    return-object p0
.end method
