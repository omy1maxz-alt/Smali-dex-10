.class public Ljj$/nio/file/PathApiFlips$DirectoryStreamFilterWrapper;
.super Ljava/lang/Object;
.source "PathApiFlips.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# instance fields
.field private final filter:Ljava/nio/file/DirectoryStream$Filter;


# direct methods
.method public constructor <init>(Ljava/nio/file/DirectoryStream$Filter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/PathApiFlips$DirectoryStreamFilterWrapper;->filter:Ljava/nio/file/DirectoryStream$Filter;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/PathApiFlips$DirectoryStreamFilterWrapper;->filter:Ljava/nio/file/DirectoryStream$Filter;

    invoke-static {p1}, Ljj$/nio/file/PathApiFlips;->convertPath(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/DirectoryStream$Filter;->accept(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
