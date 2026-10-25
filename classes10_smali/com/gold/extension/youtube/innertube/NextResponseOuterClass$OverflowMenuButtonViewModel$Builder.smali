.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 18921
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearForceEnablePushoverOverflowMenuItems()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;
    .registers 2

    .line 18948
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->-$$Nest$mclearForceEnablePushoverOverflowMenuItems(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;)V

    return-object p0
.end method

.method public getForceEnablePushoverOverflowMenuItems()Z
    .registers 1

    .line 18931
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->getForceEnablePushoverOverflowMenuItems()Z

    move-result p0

    return p0
.end method

.method public setForceEnablePushoverOverflowMenuItems(Z)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;
    .registers 3

    .line 18939
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18940
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->-$$Nest$msetForceEnablePushoverOverflowMenuItems(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;Z)V

    return-object p0
.end method
