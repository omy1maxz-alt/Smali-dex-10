.class public final synthetic Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;


# instance fields
.field public final synthetic f$0:[Lus/shandian/giga/io/ChunkFileInputStream;


# direct methods
.method public synthetic constructor <init>([Lus/shandian/giga/io/ChunkFileInputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda0;->f$0:[Lus/shandian/giga/io/ChunkFileInputStream;

    return-void
.end method


# virtual methods
.method public final check()J
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda0;->f$0:[Lus/shandian/giga/io/ChunkFileInputStream;

    invoke-static {v0}, Lus/shandian/giga/postprocessing/Postprocessing;->$r8$lambda$7d_MtpNf1zmwau8qL61Ne742vNo([Lus/shandian/giga/io/ChunkFileInputStream;)J

    move-result-wide v0

    return-wide v0
.end method
