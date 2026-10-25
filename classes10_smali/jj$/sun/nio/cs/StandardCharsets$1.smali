.class Ljj$/sun/nio/cs/StandardCharsets$1;
.super Ljava/lang/Object;
.source "StandardCharsets.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field i:Ljava/util/Iterator;

.field final synthetic this$0:Ljj$/sun/nio/cs/StandardCharsets;

.field final synthetic val$charsetNames:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljj$/sun/nio/cs/StandardCharsets;Ljava/util/Set;)V
    .registers 3

    iput-object p1, p0, Ljj$/sun/nio/cs/StandardCharsets$1;->this$0:Ljj$/sun/nio/cs/StandardCharsets;

    iput-object p2, p0, Ljj$/sun/nio/cs/StandardCharsets$1;->val$charsetNames:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p0, Ljj$/sun/nio/cs/StandardCharsets$1;->val$charsetNames:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Ljj$/sun/nio/cs/StandardCharsets$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/sun/nio/cs/StandardCharsets$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/nio/cs/StandardCharsets$1;->next()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/charset/Charset;
    .registers 3

    iget-object v0, p0, Ljj$/sun/nio/cs/StandardCharsets$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ljj$/sun/nio/cs/StandardCharsets$1;->this$0:Ljj$/sun/nio/cs/StandardCharsets;

    invoke-static {v1, v0}, Ljj$/sun/nio/cs/StandardCharsets;->-$$Nest$mlookup(Ljj$/sun/nio/cs/StandardCharsets;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
