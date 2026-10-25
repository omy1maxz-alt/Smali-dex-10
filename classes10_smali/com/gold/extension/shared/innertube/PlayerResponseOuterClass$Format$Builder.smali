.class public final Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlayerResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;",
        ">;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1931
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSignatureCipher()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
    .registers 2

    .line 2017
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->-$$Nest$mclearSignatureCipher(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public clearUrl()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
    .registers 2

    .line 1968
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1969
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->-$$Nest$mclearUrl(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public getSignatureCipher()Ljava/lang/String;
    .registers 1

    .line 1990
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getSignatureCipher()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSignatureCipherBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 1999
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getSignatureCipherBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 1

    .line 1941
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 1950
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setSignatureCipher(Ljava/lang/String;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
    .registers 3

    .line 2008
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2009
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->-$$Nest$msetSignatureCipher(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSignatureCipherBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
    .registers 3

    .line 2028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->-$$Nest$msetSignatureCipherBytes(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
    .registers 3

    .line 1959
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1960
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->-$$Nest$msetUrl(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
    .registers 3

    .line 1979
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1980
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->-$$Nest$msetUrlBytes(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
