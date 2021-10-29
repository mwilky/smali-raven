.class Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;
.super Ljava/lang/Object;
.source "CameraVisibility.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/CameraVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;


# direct methods
.method public static synthetic $r8$lambda$ZkivbYLM2f6TuxyYeCcOCS1B-e0(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;->lambda$onGateChanged$0(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onGateChanged$0(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->access$100(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->access$000(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
