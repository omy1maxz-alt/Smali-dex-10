.class final Ljj$/util/stream/Collectors$Partition;
.super Ljava/util/AbstractMap;
.source "Collectors.java"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field final forFalse:Ljava/lang/Object;

.field final forTrue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iput-object p2, p0, Ljj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Ljj$/util/stream/Collectors$Partition$1;

    invoke-direct {v0, p0}, Ljj$/util/stream/Collectors$Partition$1;-><init>(Ljj$/util/stream/Collectors$Partition;)V

    return-object v0
.end method
