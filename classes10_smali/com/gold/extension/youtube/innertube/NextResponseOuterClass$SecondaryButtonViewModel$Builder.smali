.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 17170
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccessibilityId()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel$Builder;
    .registers 2

    .line 17264
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17265
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->-$$Nest$mclearAccessibilityId(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;)V

    return-object p0
.end method

.method public clearIconName()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel$Builder;
    .registers 2

    .line 17207
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->-$$Nest$mclearIconName(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;)V

    return-object p0
.end method

.method public getAccessibilityId()Ljava/lang/String;
    .registers 1

    .line 17237
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->getAccessibilityId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 17246
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->getAccessibilityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIconName()Ljava/lang/String;
    .registers 1

    .line 17180
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->getIconName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconNameBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 17189
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->getIconNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasAccessibilityId()Z
    .registers 1

    .line 17229
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->hasAccessibilityId()Z

    move-result p0

    return p0
.end method

.method public setAccessibilityId(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel$Builder;
    .registers 3

    .line 17255
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->-$$Nest$msetAccessibilityId(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccessibilityIdBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel$Builder;
    .registers 3

    .line 17275
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->-$$Nest$msetAccessibilityIdBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIconName(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel$Builder;
    .registers 3

    .line 17198
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->-$$Nest$msetIconName(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIconNameBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel$Builder;
    .registers 3

    .line 17218
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17219
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;->-$$Nest$msetIconNameBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryButtonViewModel;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
