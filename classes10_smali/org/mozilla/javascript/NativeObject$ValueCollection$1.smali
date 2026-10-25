.class Lorg/mozilla/javascript/NativeObject$ValueCollection$1;
.super Ljava/lang/Object;
.source "NativeObject.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljj$/util/Iterator;


# instance fields
.field ids:[Ljava/lang/Object;

.field index:I

.field key:Ljava/lang/Object;

.field final synthetic this$1:Lorg/mozilla/javascript/NativeObject$ValueCollection;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativeObject$ValueCollection;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/NativeObject$ValueCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lorg/mozilla/javascript/NativeObject$ValueCollection;->this$0:Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->ids:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->index:I

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p1}, Ljj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Ljj$/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->forEachRemaining(Ljj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljj$/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Ljj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->index:I

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->ids:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/NativeObject$ValueCollection;

    iget-object v0, v0, Lorg/mozilla/javascript/NativeObject$ValueCollection;->this$0:Lorg/mozilla/javascript/NativeObject;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->ids:[Ljava/lang/Object;

    iget v2, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->index:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->key:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/NativeObject$ValueCollection;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeObject$ValueCollection;->this$0:Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->key:Ljava/lang/Object;

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
