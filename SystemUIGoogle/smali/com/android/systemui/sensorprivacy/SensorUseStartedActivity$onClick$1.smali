.class final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1;
.super Ljava/lang/Object;
.source "SensorUseStartedActivity.kt"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-static {v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->access$getBgHandler$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1$1;

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1$1;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x0

    return p0
.end method
