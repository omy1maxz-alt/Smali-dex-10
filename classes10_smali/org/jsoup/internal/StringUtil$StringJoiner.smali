.class public Lorg/jsoup/internal/StringUtil$StringJoiner;
.super Ljava/lang/Object;
.source "StringUtil.java"


# instance fields
.field first:Z

.field sb:Ljava/lang/StringBuilder;

.field final separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->sb:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->first:Z

    iput-object p1, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->separator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;
    .registers 4

    iget-object v0, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->sb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->first:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v0, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->first:Z

    return-object p0
.end method

.method public complete()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->sb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method
