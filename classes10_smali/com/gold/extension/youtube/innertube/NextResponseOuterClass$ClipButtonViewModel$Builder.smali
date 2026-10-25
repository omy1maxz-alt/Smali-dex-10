.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 17525
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVideoActionButtonEnablementEntityKey()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel$Builder;
    .registers 2

    .line 17562
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;->-$$Nest$mclearVideoActionButtonEnablementEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;)V

    return-object p0
.end method

.method public getVideoActionButtonEnablementEntityKey()Ljava/lang/String;
    .registers 1

    .line 17535
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;->getVideoActionButtonEnablementEntityKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoActionButtonEnablementEntityKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 17544
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;->getVideoActionButtonEnablementEntityKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setVideoActionButtonEnablementEntityKey(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel$Builder;
    .registers 3

    .line 17553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;->-$$Nest$msetVideoActionButtonEnablementEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVideoActionButtonEnablementEntityKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel$Builder;
    .registers 3

    .line 17573
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;->-$$Nest$msetVideoActionButtonEnablementEntityKeyBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ClipButtonViewModel;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
