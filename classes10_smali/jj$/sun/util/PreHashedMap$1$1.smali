.class Ljj$/sun/util/PreHashedMap$1$1;
.super Ljava/lang/Object;
.source "PreHashedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:[Ljava/lang/Object;

.field cur:Ljava/lang/String;

.field private i:I

.field final synthetic this$1:Ljj$/sun/util/PreHashedMap$1;


# direct methods
.method constructor <init>(Ljj$/sun/util/PreHashedMap$1;)V
    .registers 3

    iput-object p1, p0, Ljj$/sun/util/PreHashedMap$1$1;->this$1:Ljj$/sun/util/PreHashedMap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    iput-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    return-void
.end method

.method private findNext()Z
    .registers 6

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1f

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    return v2

    :cond_1f
    iget v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    iput-object v1, p0, Ljj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    :cond_26
    iput-object v1, p0, Ljj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    iget v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    iget-object v1, p0, Ljj$/sun/util/PreHashedMap$1$1;->this$1:Ljj$/sun/util/PreHashedMap$1;

    iget-object v1, v1, Ljj$/sun/util/PreHashedMap$1;->this$0:Ljj$/sun/util/PreHashedMap;

    invoke-static {v1}, Ljj$/sun/util/PreHashedMap;->-$$Nest$fgetrows(Ljj$/sun/util/PreHashedMap;)I

    move-result v1

    if-lt v0, v1, :cond_35

    return v3

    :cond_35
    iget v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    if-ltz v0, :cond_47

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->this$1:Ljj$/sun/util/PreHashedMap$1;

    iget-object v0, v0, Ljj$/sun/util/PreHashedMap$1;->this$0:Ljj$/sun/util/PreHashedMap;

    invoke-static {v0}, Ljj$/sun/util/PreHashedMap;->-$$Nest$fgetht(Ljj$/sun/util/PreHashedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    aget-object v0, v0, v1

    if-nez v0, :cond_65

    :cond_47
    iget v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    iget-object v1, p0, Ljj$/sun/util/PreHashedMap$1$1;->this$1:Ljj$/sun/util/PreHashedMap$1;

    iget-object v1, v1, Ljj$/sun/util/PreHashedMap$1;->this$0:Ljj$/sun/util/PreHashedMap;

    invoke-static {v1}, Ljj$/sun/util/PreHashedMap;->-$$Nest$fgetrows(Ljj$/sun/util/PreHashedMap;)I

    move-result v1

    if-lt v0, v1, :cond_57

    return v3

    :cond_57
    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->this$1:Ljj$/sun/util/PreHashedMap$1;

    iget-object v0, v0, Ljj$/sun/util/PreHashedMap$1;->this$0:Ljj$/sun/util/PreHashedMap;

    invoke-static {v0}, Ljj$/sun/util/PreHashedMap;->-$$Nest$fgetht(Ljj$/sun/util/PreHashedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_47

    :cond_65
    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->this$1:Ljj$/sun/util/PreHashedMap$1;

    iget-object v0, v0, Ljj$/sun/util/PreHashedMap$1;->this$0:Ljj$/sun/util/PreHashedMap;

    invoke-static {v0}, Ljj$/sun/util/PreHashedMap;->-$$Nest$fgetht(Ljj$/sun/util/PreHashedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljj$/sun/util/PreHashedMap$1$1;->i:I

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    return v2
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-direct {p0}, Ljj$/sun/util/PreHashedMap$1$1;->findNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/util/PreHashedMap$1$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-direct {p0}, Ljj$/sun/util/PreHashedMap$1$1;->findNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_11
    :goto_11
    iget-object v0, p0, Ljj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
