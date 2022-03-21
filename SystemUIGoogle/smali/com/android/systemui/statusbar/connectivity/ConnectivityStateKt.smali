.class public final Lcom/android/systemui/statusbar/connectivity/ConnectivityStateKt;
.super Ljava/lang/Object;
.source "ConnectivityState.kt"


# static fields
.field private static final sSDF:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityStateKt;->sSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static final synthetic access$getSSDF$p()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityStateKt;->sSDF:Ljava/text/SimpleDateFormat;

    return-object v0
.end method
