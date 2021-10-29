.class Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;
.super Landroid/app/TaskStackListener;
.source "CameraVisibility.java"


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
.method public static synthetic $r8$lambda$tXlaSz_ZokMuMU2YhOZeHJVx7zg(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;->lambda$onTaskStackChanged$0(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onTaskStackChanged$0(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->access$100(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->access$000(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    new-instance v1, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
