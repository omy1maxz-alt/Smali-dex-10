.class public interface abstract Lokhttp4/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final SYSTEM:Lokhttp4/Dns;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp4/Dns$1;

    invoke-direct {v0}, Lokhttp4/Dns$1;-><init>()V

    sput-object v0, Lokhttp4/Dns;->SYSTEM:Lokhttp4/Dns;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
.end method
