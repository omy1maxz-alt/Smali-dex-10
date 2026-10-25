.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 11883
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 4

    .line 11958
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    .line 11960
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    .line 11959
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public addActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 4

    .line 11940
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11941
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public addActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 3

    .line 11949
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11950
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public addActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 3

    .line 11931
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$maddActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public addAllActionButtons(Ljava/lang/Iterable;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;",
            ">;)",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;"
        }
    .end annotation

    .line 11968
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11969
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$maddAllActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public clearActionButtons()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 2

    .line 11976
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11977
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$mclearActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;)V

    return-object p0
.end method

.method public getActionButtons(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;
    .registers 2

    .line 11906
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->getActionButtons(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    move-result-object p0

    return-object p0
.end method

.method public getActionButtonsCount()I
    .registers 1

    .line 11900
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->getActionButtonsCount()I

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

    .line 11892
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    .line 11893
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->getActionButtonsList()Ljava/util/List;

    move-result-object p0

    .line 11892
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeActionButtons(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 3

    .line 11984
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11985
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$mremoveActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;I)V

    return-object p0
.end method

.method public setActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 4

    .line 11922
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11923
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    .line 11924
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;

    .line 11923
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$msetActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method

.method public setActionButtons(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;
    .registers 4

    .line 11913
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11914
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;->-$$Nest$msetActionButtons(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$ActionButtons;)V

    return-object p0
.end method
