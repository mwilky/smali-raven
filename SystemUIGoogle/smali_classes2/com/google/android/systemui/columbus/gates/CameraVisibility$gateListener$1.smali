.class public final Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;
.super Ljava/lang/Object;
.source "CameraVisibility.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/CameraVisibility;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/app/IActivityManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 1

    const-string v0, "gate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->access$getUpdateHandler$p(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1$onGateChanged$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1$onGateChanged$1;-><init>(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
