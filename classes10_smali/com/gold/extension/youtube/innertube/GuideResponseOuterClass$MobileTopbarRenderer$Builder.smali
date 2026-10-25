.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1311
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllButtons(Ljava/lang/Iterable;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;",
            ">;)",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;"
        }
    .end annotation

    .line 1396
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1397
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$maddAllButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addButtons(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 4

    .line 1386
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1387
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    .line 1388
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    .line 1387
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$maddButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-object p0
.end method

.method public addButtons(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 4

    .line 1368
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$maddButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-object p0
.end method

.method public addButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 3

    .line 1377
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1378
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$maddButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-object p0
.end method

.method public addButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 3

    .line 1359
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1360
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$maddButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-object p0
.end method

.method public clearButtons()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 2

    .line 1404
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$mclearButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V

    return-object p0
.end method

.method public getButtons(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 2

    .line 1334
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->getButtons(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    move-result-object p0

    return-object p0
.end method

.method public getButtonsCount()I
    .registers 1

    .line 1328
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->getButtonsCount()I

    move-result p0

    return p0
.end method

.method public getButtonsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;",
            ">;"
        }
    .end annotation

    .line 1320
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    .line 1321
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->getButtonsList()Ljava/util/List;

    move-result-object p0

    .line 1320
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeButtons(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 3

    .line 1412
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$mremoveButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;I)V

    return-object p0
.end method

.method public setButtons(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 4

    .line 1350
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    .line 1352
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    .line 1351
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$msetButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-object p0
.end method

.method public setButtons(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 4

    .line 1341
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1342
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->-$$Nest$msetButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-object p0
.end method
