.class final Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1$onTaskStackChanged$1;
.super Ljava/lang/Object;
.source "CameraVisibility.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;->onTaskStackChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1$onTaskStackChanged$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1$onTaskStackChanged$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->access$updateCameraIsShowing(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V

    return-void
.end method
