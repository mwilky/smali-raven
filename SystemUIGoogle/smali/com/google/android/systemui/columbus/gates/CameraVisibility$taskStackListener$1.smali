.class public final Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;
.super Landroid/app/TaskStackListener;
.source "CameraVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/CameraVisibility;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/app/IActivityManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskStackChanged()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1$onTaskStackChanged$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1$onTaskStackChanged$1;-><init>(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
