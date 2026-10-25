.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RunsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RunsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 7327
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearText()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs$Builder;
    .registers 2

    .line 7364
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;->-$$Nest$mclearText(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 7337
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 7346
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs$Builder;
    .registers 3

    .line 7355
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;->-$$Nest$msetText(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs$Builder;
    .registers 3

    .line 7375
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7376
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;->-$$Nest$msetTextBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
