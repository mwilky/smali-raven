.class final Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1$onKeyguardBouncerChanged$1;
.super Ljava/lang/Object;
.source "LaunchApp.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->onKeyguardBouncerChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1$onKeyguardBouncerChanged$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1$onKeyguardBouncerChanged$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1$onKeyguardBouncerChanged$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getStatusBarKeyguardViewManager$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1$onKeyguardBouncerChanged$1;->$context:Landroid/content/Context;

    sget v1, Lcom/google/android/systemui/columbus/ColumbusResourceHelper;->BOUNCER_MESSAGE_RESID:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    return-void
.end method
