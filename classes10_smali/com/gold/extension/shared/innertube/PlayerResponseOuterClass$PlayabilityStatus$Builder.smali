.class public final Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlayerResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;",
        ">;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatusOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 798
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearReason()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
    .registers 2

    .line 882
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 883
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->-$$Nest$mclearReason(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V

    return-object p0
.end method

.method public clearStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
    .registers 2

    .line 844
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->-$$Nest$mclearStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V

    return-object p0
.end method

.method public getReason()Ljava/lang/String;
    .registers 1

    .line 855
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getReason()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 864
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getReasonBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;
    .registers 1

    .line 827
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    move-result-object p0

    return-object p0
.end method

.method public getStatusValue()I
    .registers 1

    .line 808
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getStatusValue()I

    move-result p0

    return p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
    .registers 3

    .line 873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->-$$Nest$msetReason(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
    .registers 3

    .line 893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->-$$Nest$msetReasonBytes(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
    .registers 3

    .line 835
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->-$$Nest$msetStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;)V

    return-object p0
.end method

.method public setStatusValue(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
    .registers 3

    .line 817
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->-$$Nest$msetStatusValue(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;I)V

    return-object p0
.end method
