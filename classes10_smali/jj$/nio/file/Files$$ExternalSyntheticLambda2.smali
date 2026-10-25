.class public final synthetic Ljj$/nio/file/Files$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljj$/nio/file/FileTreeIterator;


# direct methods
.method public synthetic constructor <init>(Ljj$/nio/file/FileTreeIterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/Files$$ExternalSyntheticLambda2;->f$0:Ljj$/nio/file/FileTreeIterator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Files$$ExternalSyntheticLambda2;->f$0:Ljj$/nio/file/FileTreeIterator;

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeIterator;->close()V

    return-void
.end method
