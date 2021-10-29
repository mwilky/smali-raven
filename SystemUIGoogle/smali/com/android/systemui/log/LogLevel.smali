.class public final enum Lcom/android/systemui/log/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/log/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/log/LogLevel;

.field public static final enum DEBUG:Lcom/android/systemui/log/LogLevel;

.field public static final enum ERROR:Lcom/android/systemui/log/LogLevel;

.field public static final enum INFO:Lcom/android/systemui/log/LogLevel;

.field public static final enum VERBOSE:Lcom/android/systemui/log/LogLevel;

.field public static final enum WARNING:Lcom/android/systemui/log/LogLevel;

.field public static final enum WTF:Lcom/android/systemui/log/LogLevel;


# instance fields
.field private final nativeLevel:I

.field private final shortString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/systemui/log/LogLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "V"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    new-instance v1, Lcom/android/systemui/log/LogLevel;

    const-string v4, "DEBUG"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-string v7, "D"

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v4, Lcom/android/systemui/log/LogLevel;

    const-string v7, "INFO"

    const/4 v8, 0x4

    const-string v9, "I"

    invoke-direct {v4, v7, v3, v8, v9}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    new-instance v7, Lcom/android/systemui/log/LogLevel;

    const-string v9, "WARNING"

    const/4 v10, 0x5

    const-string v11, "W"

    invoke-direct {v7, v9, v6, v10, v11}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    new-instance v9, Lcom/android/systemui/log/LogLevel;

    const-string v11, "ERROR"

    const/4 v12, 0x6

    const-string v13, "E"

    invoke-direct {v9, v11, v8, v12, v13}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    new-instance v11, Lcom/android/systemui/log/LogLevel;

    const-string v13, "WTF"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14, v13}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    new-array v12, v12, [Lcom/android/systemui/log/LogLevel;

    aput-object v0, v12, v2

    aput-object v1, v12, v5

    aput-object v4, v12, v3

    aput-object v7, v12, v6

    aput-object v9, v12, v8

    aput-object v11, v12, v10

    sput-object v12, Lcom/android/systemui/log/LogLevel;->$VALUES:[Lcom/android/systemui/log/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/log/LogLevel;->nativeLevel:I

    iput-object p4, p0, Lcom/android/systemui/log/LogLevel;->shortString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/log/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/log/LogLevel;
    .locals 4

    sget-object v0, Lcom/android/systemui/log/LogLevel;->$VALUES:[Lcom/android/systemui/log/LogLevel;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/log/LogLevel;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final getShortString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogLevel;->shortString:Ljava/lang/String;

    return-object p0
.end method
