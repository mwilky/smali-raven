.class final Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;
.super Ljava/lang/Object;
.source "LaunchOpa.kt"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/LaunchOpa;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/Set;Lcom/android/systemui/assist/AssistManager;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/LaunchOpa;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "assist_gesture_any_assistant"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    const-string v0, "1"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->access$setEnableForAnyAssistant$p(Lcom/google/android/systemui/columbus/actions/LaunchOpa;Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->access$getAssistManager$p(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)Lcom/google/android/systemui/assist/AssistManagerGoogle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->dispatchOpaEnabledState()V

    :cond_1
    :goto_0
    return-void
.end method
