.class final Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;
.super Lio/reactivex/rxjava3/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# instance fields
.field private final printWriter:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/exceptions/CompositeException$PrintStreamOrWriter;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method bridge synthetic append(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$PrintStreamOrWriter;
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;->append(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method append(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-object p0
.end method
