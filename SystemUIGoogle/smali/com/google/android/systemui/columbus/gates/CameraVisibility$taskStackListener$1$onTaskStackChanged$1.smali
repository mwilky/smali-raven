.class public final Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1$onTaskStackChanged$1;
.super Ljava/lang/Object;
.source "CameraVisibility.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;->onTaskStackChanged()V
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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1$onTaskStackChanged$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1$onTaskStackChanged$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->isCameraShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->cameraShowing:Z

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method
