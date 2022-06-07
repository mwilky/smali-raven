.class Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;
.super Ljava/lang/Object;
.source "AdaptiveChargingNotification.java"

# interfaces
.implements Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/power/AdaptiveChargingNotification;->checkAdaptiveChargingStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

.field final synthetic val$forceUpdate:Z


# direct methods
.method public static synthetic $r8$lambda$WlQ2XnQiUOKBObqGkW62tU8rWAs(Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->lambda$onReceiveStatus$0(Ljava/lang/String;IZ)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->this$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    iput-boolean p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->val$forceUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceiveStatus$0(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->this$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->access$100(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public onDestroyInterface()V
    .locals 0

    return-void
.end method

.method public onReceiveStatus(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->this$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    invoke-static {v0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->access$000(Lcom/google/android/systemui/power/AdaptiveChargingNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->val$forceUpdate:Z

    new-instance v2, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
