.class public final enum Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;
.super Ljava/lang/Enum;
.source "PlayerResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status$StatusVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final enum AGE_CHECK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final AGE_CHECK_REQUIRED_VALUE:I = 0x5

.field public static final enum AGE_VERIFICATION_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final AGE_VERIFICATION_REQUIRED_VALUE:I = 0x9

.field public static final enum CONTENT_CHECK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final CONTENT_CHECK_REQUIRED_VALUE:I = 0x4

.field public static final enum ERROR:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final ERROR_VALUE:I = 0x1

.field public static final enum FULLSCREEN_ONLY:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final FULLSCREEN_ONLY_VALUE:I = 0x7

.field public static final enum GL_PLAYBACK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final GL_PLAYBACK_REQUIRED_VALUE:I = 0x8

.field public static final enum LIVE_STREAM_OFFLINE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final LIVE_STREAM_OFFLINE_VALUE:I = 0x6

.field public static final enum LOGIN_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final LOGIN_REQUIRED_VALUE:I = 0x3

.field public static final enum OK:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final OK_VALUE:I = 0x0

.field public static final enum UNPLAYABLE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field public static final UNPLAYABLE_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;
    .registers 11

    .line 17
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->OK:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->ERROR:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->UNPLAYABLE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v3, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->LOGIN_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v4, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->CONTENT_CHECK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v5, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->AGE_CHECK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v6, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->LIVE_STREAM_OFFLINE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v7, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->FULLSCREEN_ONLY:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v8, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->GL_PLAYBACK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v9, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->AGE_VERIFICATION_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    sget-object v10, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->UNRECOGNIZED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    filled-new-array/range {v0 .. v10}, [Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 22
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->OK:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 26
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->ERROR:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 30
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "UNPLAYABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->UNPLAYABLE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 34
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "LOGIN_REQUIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->LOGIN_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 38
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "CONTENT_CHECK_REQUIRED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->CONTENT_CHECK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 42
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "AGE_CHECK_REQUIRED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->AGE_CHECK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 46
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "LIVE_STREAM_OFFLINE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->LIVE_STREAM_OFFLINE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 50
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "FULLSCREEN_ONLY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->FULLSCREEN_ONLY:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 54
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "GL_PLAYBACK_REQUIRED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->GL_PLAYBACK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 58
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const-string v1, "AGE_VERIFICATION_REQUIRED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->AGE_VERIFICATION_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 59
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->UNRECOGNIZED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 17
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->$values()[Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->$VALUES:[Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    .line 143
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status$1;

    invoke-direct {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status$1;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    iput p3, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;
    .registers 1

    packed-switch p0, :pswitch_data_24

    const/4 p0, 0x0

    return-object p0

    .line 133
    :pswitch_5  #0x9
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->AGE_VERIFICATION_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    .line 132
    :pswitch_8  #0x8
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->GL_PLAYBACK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    .line 131
    :pswitch_b  #0x7
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->FULLSCREEN_ONLY:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    .line 130
    :pswitch_e  #0x6
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->LIVE_STREAM_OFFLINE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    .line 129
    :pswitch_11  #0x5
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->AGE_CHECK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    .line 128
    :pswitch_14  #0x4
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->CONTENT_CHECK_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    .line 127
    :pswitch_17  #0x3
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->LOGIN_REQUIRED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    .line 126
    :pswitch_1a  #0x2
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->UNPLAYABLE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    .line 125
    :pswitch_1d  #0x1
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->ERROR:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    .line 124
    :pswitch_20  #0x0
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->OK:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
        :pswitch_17  #00000003
        :pswitch_14  #00000004
        :pswitch_11  #00000005
        :pswitch_e  #00000006
        :pswitch_b  #00000007
        :pswitch_8  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 153
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status$StatusVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->forNumber(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    const-class v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;
    .registers 1

    .line 17
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->$VALUES:[Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 106
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->UNRECOGNIZED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    if-ne p0, v0, :cond_9

    .line 107
    invoke-static {}, Lcom/google/protobuf/Internal;->throwCannotGetNumberOfUnrecognized()I

    move-result p0

    return p0

    .line 109
    :cond_9
    iget p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->value:I

    return p0
.end method
