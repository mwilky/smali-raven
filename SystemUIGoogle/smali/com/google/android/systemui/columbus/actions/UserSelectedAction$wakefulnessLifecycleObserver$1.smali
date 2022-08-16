.class public final Lcom/google/android/systemui/columbus/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;
.super Ljava/lang/Object;
.source "UserSelectedAction.kt"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/UserSelectedAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ljava/util/Map;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/google/android/systemui/columbus/PowerManagerWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->updateAvailable()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->updateAvailable()V

    return-void
.end method
