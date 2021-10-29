.class public final Lcom/google/android/systemui/columbus/actions/UserSelectedAction$sublistener$1;
.super Ljava/lang/Object;
.source "UserSelectedAction.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/actions/Action$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/UserSelectedAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ljava/util/Map;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/google/android/systemui/columbus/PowerManagerWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$sublistener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/actions/Action;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$sublistener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->access$getCurrentAction$p(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Lcom/google/android/systemui/columbus/actions/UserAction;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$sublistener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V

    :cond_0
    return-void
.end method
