.class Ljj$/sun/util/PreHashedMap$1;
.super Ljava/util/AbstractSet;
.source "PreHashedMap.java"


# instance fields
.field final synthetic this$0:Ljj$/sun/util/PreHashedMap;


# direct methods
.method constructor <init>(Ljj$/sun/util/PreHashedMap;)V
    .registers 2

    iput-object p1, p0, Ljj$/sun/util/PreHashedMap$1;->this$0:Ljj$/sun/util/PreHashedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ljj$/sun/util/PreHashedMap$1$1;

    invoke-direct {v0, p0}, Ljj$/sun/util/PreHashedMap$1$1;-><init>(Ljj$/sun/util/PreHashedMap$1;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1;->this$0:Ljj$/sun/util/PreHashedMap;

    invoke-static {v0}, Ljj$/sun/util/PreHashedMap;->-$$Nest$fgetsize(Ljj$/sun/util/PreHashedMap;)I

    move-result v0

    return v0
.end method
