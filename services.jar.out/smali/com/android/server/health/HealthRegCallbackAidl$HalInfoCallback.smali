.class public Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;
.super Landroid/hardware/health/IHealthInfoCallback$Stub;
.source "HealthRegCallbackAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthRegCallbackAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HalInfoCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthRegCallbackAidl;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-direct {p0}, Landroid/hardware/health/IHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "94e77215594f8ad98ab33a769263d48fdabed92e"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public healthInfoChanged(Landroid/hardware/health/HealthInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-static {p0}, Lcom/android/server/health/HealthRegCallbackAidl;->-$$Nest$fgetmServiceInfoCallback(Lcom/android/server/health/HealthRegCallbackAidl;)Lcom/android/server/health/HealthInfoCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Landroid/hardware/health/HealthInfo;)V

    return-void
.end method
