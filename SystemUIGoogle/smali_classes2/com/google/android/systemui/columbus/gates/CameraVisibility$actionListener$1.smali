.class public final Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;
.super Ljava/lang/Object;
.source "CameraVisibility.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/actions/Action$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/CameraVisibility;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/app/IActivityManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraVisibility.kt\ncom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/actions/Action;)V
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->access$getExceptions$p(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/systemui/columbus/actions/Action;

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->access$setExceptionActive$p(Lcom/google/android/systemui/columbus/gates/CameraVisibility;Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V

    return-void
.end method
