.class Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbConnectionInfo"
.end annotation


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mPort:I

.field private mSsid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    iget v0, p2, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return-void
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return-void
.end method
