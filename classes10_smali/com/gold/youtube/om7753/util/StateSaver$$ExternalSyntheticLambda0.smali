.class public final synthetic Lcom/gold/youtube/om7753/util/StateSaver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/StateSaver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StateSaver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/gold/youtube/om7753/util/StateSaver;->$r8$lambda$UTv1VhydkdSQmo_Tdl5X4pa5QCs(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
