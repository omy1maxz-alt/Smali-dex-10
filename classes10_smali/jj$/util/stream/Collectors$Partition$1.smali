.class Ljj$/util/stream/Collectors$Partition$1;
.super Ljava/util/AbstractSet;
.source "Collectors.java"


# instance fields
.field final synthetic this$0:Ljj$/util/stream/Collectors$Partition;


# direct methods
.method constructor <init>(Ljj$/util/stream/Collectors$Partition;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/stream/Collectors$Partition$1;->this$0:Ljj$/util/stream/Collectors$Partition;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 5

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/stream/Collectors$Partition$1;->this$0:Ljj$/util/stream/Collectors$Partition;

    iget-object v2, v2, Ljj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Ljj$/util/stream/Collectors$Partition$1;->this$0:Ljj$/util/stream/Collectors$Partition;

    iget-object v3, v3, Ljj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ljj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
