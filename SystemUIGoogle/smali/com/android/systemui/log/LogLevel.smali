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
.field public static final synthetic $VALUES:[Lcom/android/systemui/log/LogLevel;

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
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/systemui/log/LogLevel;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "VERBOSE"

    const-string v4, "V"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/log/LogLevel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    new-instance v3, Lcom/android/systemui/log/LogLevel;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "DEBUG"

    const-string v7, "D"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/systemui/log/LogLevel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v6, Lcom/android/systemui/log/LogLevel;

    const/4 v7, 0x4

    const-string v8, "INFO"

    const-string v9, "I"

    invoke-direct {v6, v2, v7, v8, v9}, Lcom/android/systemui/log/LogLevel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    new-instance v8, Lcom/android/systemui/log/LogLevel;

    const/4 v9, 0x5

    const-string v10, "WARNING"

    const-string v11, "W"

    invoke-direct {v8, v5, v9, v10, v11}, Lcom/android/systemui/log/LogLevel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    new-instance v10, Lcom/android/systemui/log/LogLevel;

    const/4 v11, 0x6

    const-string v12, "ERROR"

    const-string v13, "E"

    invoke-direct {v10, v7, v11, v12, v13}, Lcom/android/systemui/log/LogLevel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    new-instance v12, Lcom/android/systemui/log/LogLevel;

    const/4 v13, 0x7

    const-string v14, "WTF"

    invoke-direct {v12, v9, v13, v14, v14}, Lcom/android/systemui/log/LogLevel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    new-array v11, v11, [Lcom/android/systemui/log/LogLevel;

    aput-object v0, v11, v1

    aput-object v3, v11, v4

    aput-object v6, v11, v2

    aput-object v8, v11, v5

    aput-object v10, v11, v7

    aput-object v12, v11, v9

    sput-object v11, Lcom/android/systemui/log/LogLevel;->$VALUES:[Lcom/android/systemui/log/LogLevel;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/android/systemui/log/LogLevel;->nativeLevel:I

    iput-object p4, p0, Lcom/android/systemui/log/LogLevel;->shortString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;
    .locals 1

    const-class v0, Lcom/android/systemui/log/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/log/LogLevel;
    .locals 1

    sget-object v0, Lcom/android/systemui/log/LogLevel;->$VALUES:[Lcom/android/systemui/log/LogLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/log/LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getShortString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogLevel;->shortString:Ljava/lang/String;

    return-object p0
.end method
