.class public final Lcom/grack/nanojson/JsonStringWriter;
.super Lcom/grack/nanojson/JsonWriterBase;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/grack/nanojson/JsonWriterBase;-><init>(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public done()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/grack/nanojson/JsonWriterBase;->doneInternal()V

    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->appendable:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
